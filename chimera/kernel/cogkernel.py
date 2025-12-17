"""
Cognitive Kernel Extensions for Project Chimera / Daedalos

This module implements the cognitive kernel extensions that transform
a standard operating system into a cognitive operating system (Daedalos).

The kernel provides:
1. Cognitive process management (CogProc)
2. AtomSpace as kernel-level memory
3. Cognitive filesystem (CogFS) interface
4. PLN inference as system calls
5. ECAN attention as process scheduling
6. Ontogenetic self-modification

This is the foundation for the Cog-GNU-Mach / In-Fern-o-Kern vision,
where cognition becomes a fundamental kernel service.
"""

from __future__ import annotations
import os
import sys
import time
import threading
import queue
from typing import Dict, List, Optional, Any, Callable, Tuple, Union
from dataclasses import dataclass, field
from enum import Enum, auto
from abc import ABC, abstractmethod
import json
import struct

# Import Chimera components
sys.path.insert(0, '..')
from atomspace.atomspace import (
    AtomSpace, Atom, Node, Link,
    ConceptNode, PredicateNode, SchemaNode,
    InheritanceLink, EvaluationLink, ExecutionLink,
    TruthValue, AttentionValue
)
from bridge.ontogenetic_atomspace_bridge import (
    OntogeneticAtomSpaceBridge, A000081Generator
)


# ============================================================
# Cognitive Process States
# ============================================================

class CogProcState(Enum):
    """States for cognitive processes"""
    NASCENT = auto()      # Just created
    READY = auto()        # Ready to run
    RUNNING = auto()      # Currently executing
    WAITING = auto()      # Waiting for resource
    INFERRING = auto()    # Performing PLN inference
    ATTENDING = auto()    # In ECAN attention cycle
    SLEEPING = auto()     # Temporarily suspended
    TERMINATED = auto()   # Finished execution


class CogProcPriority(Enum):
    """Priority levels for cognitive processes"""
    CRITICAL = 0      # Kernel-level, cannot be preempted
    REALTIME = 1      # Real-time cognitive responses
    HIGH = 2          # Important inference tasks
    NORMAL = 3        # Standard cognitive operations
    LOW = 4           # Background learning
    IDLE = 5          # Only when nothing else to do


# ============================================================
# Cognitive Process (CogProc)
# ============================================================

@dataclass
class CogProc:
    """
    A Cognitive Process - the fundamental unit of computation
    in the Daedalos cognitive operating system.
    
    Unlike traditional processes, CogProcs have:
    - Attention values that determine scheduling
    - Truth values that represent confidence
    - Links to AtomSpace for memory access
    - Ontogenetic evolution capability
    """
    pid: int
    name: str
    state: CogProcState = CogProcState.NASCENT
    priority: CogProcPriority = CogProcPriority.NORMAL
    
    # Cognitive attributes
    attention: AttentionValue = field(default_factory=AttentionValue)
    truth: TruthValue = field(default_factory=TruthValue.simple)
    
    # Execution context
    atomspace_ref: Optional[str] = None  # Reference to AtomSpace segment
    goal_atom: Optional[str] = None      # UUID of goal atom
    
    # Statistics
    cpu_time: float = 0.0
    inference_count: int = 0
    attention_cycles: int = 0
    creation_time: float = field(default_factory=time.time)
    
    # Parent/child relationships
    parent_pid: Optional[int] = None
    children_pids: List[int] = field(default_factory=list)
    
    # Execution function
    _func: Optional[Callable] = None
    _args: Tuple = field(default_factory=tuple)
    _kwargs: Dict = field(default_factory=dict)
    _result: Any = None
    
    def set_function(self, func: Callable, *args, **kwargs) -> None:
        """Set the function to execute"""
        self._func = func
        self._args = args
        self._kwargs = kwargs
    
    def execute(self) -> Any:
        """Execute the cognitive process"""
        if self._func is None:
            return None
        
        start_time = time.time()
        self.state = CogProcState.RUNNING
        
        try:
            self._result = self._func(*self._args, **self._kwargs)
        except Exception as e:
            self._result = {"error": str(e)}
        finally:
            self.cpu_time += time.time() - start_time
            self.state = CogProcState.TERMINATED
        
        return self._result
    
    def get_effective_priority(self) -> float:
        """
        Calculate effective priority based on base priority and attention.
        
        Higher attention = higher effective priority (lower number)
        """
        base = self.priority.value
        attention_boost = self.attention.sti / 100.0
        return max(0, base - attention_boost)


# ============================================================
# Cognitive Scheduler
# ============================================================

class CogScheduler:
    """
    Attention-based cognitive process scheduler.
    
    Uses ECAN-style attention values to determine which
    cognitive processes should run, implementing a form
    of "cognitive resource allocation."
    """
    
    def __init__(self, time_slice: float = 0.1):
        self.time_slice = time_slice
        self.ready_queue: queue.PriorityQueue = queue.PriorityQueue()
        self.running: Optional[CogProc] = None
        self.waiting: Dict[int, CogProc] = {}
        self.all_procs: Dict[int, CogProc] = {}
        self._lock = threading.Lock()
        self._running = False
    
    def add_process(self, proc: CogProc) -> None:
        """Add a process to the scheduler"""
        with self._lock:
            self.all_procs[proc.pid] = proc
            proc.state = CogProcState.READY
            # Priority queue uses (priority, pid) tuple
            self.ready_queue.put((proc.get_effective_priority(), proc.pid))
    
    def schedule(self) -> Optional[CogProc]:
        """Select the next process to run"""
        with self._lock:
            if self.ready_queue.empty():
                return None
            
            _, pid = self.ready_queue.get()
            proc = self.all_procs.get(pid)
            
            if proc and proc.state == CogProcState.READY:
                self.running = proc
                return proc
            
            return self.schedule()  # Try next
    
    def preempt(self, proc: CogProc) -> None:
        """Preempt a running process"""
        with self._lock:
            if proc.state == CogProcState.RUNNING:
                proc.state = CogProcState.READY
                self.ready_queue.put((proc.get_effective_priority(), proc.pid))
                self.running = None
    
    def block(self, proc: CogProc, reason: str = "resource") -> None:
        """Block a process waiting for a resource"""
        with self._lock:
            proc.state = CogProcState.WAITING
            self.waiting[proc.pid] = proc
            if self.running == proc:
                self.running = None
    
    def unblock(self, pid: int) -> None:
        """Unblock a waiting process"""
        with self._lock:
            if pid in self.waiting:
                proc = self.waiting.pop(pid)
                proc.state = CogProcState.READY
                self.ready_queue.put((proc.get_effective_priority(), proc.pid))
    
    def stimulate(self, pid: int, amount: float) -> None:
        """Stimulate a process's attention (increase priority)"""
        with self._lock:
            if pid in self.all_procs:
                self.all_procs[pid].attention.stimulate(amount)
    
    def decay_all(self, rate: float = 0.1) -> None:
        """Apply attention decay to all processes"""
        with self._lock:
            for proc in self.all_procs.values():
                proc.attention.decay(rate)


# ============================================================
# Cognitive Filesystem (CogFS)
# ============================================================

class CogFSNode(ABC):
    """Abstract base for CogFS nodes"""
    
    @abstractmethod
    def read(self) -> bytes:
        pass
    
    @abstractmethod
    def write(self, data: bytes) -> int:
        pass
    
    @abstractmethod
    def stat(self) -> Dict[str, Any]:
        pass


class AtomNode(CogFSNode):
    """
    A CogFS node that represents an Atom in the AtomSpace.
    
    Reading returns the atom's serialized representation.
    Writing modifies the atom's truth/attention values.
    """
    
    def __init__(self, atom: Atom, atomspace: AtomSpace):
        self.atom = atom
        self.atomspace = atomspace
    
    def read(self) -> bytes:
        """Read atom as JSON"""
        return json.dumps(self.atom.to_dict()).encode('utf-8')
    
    def write(self, data: bytes) -> int:
        """Write to atom (update truth/attention values)"""
        try:
            update = json.loads(data.decode('utf-8'))
            
            if 'tv' in update:
                self.atom.tv = TruthValue.from_dict(update['tv'])
            
            if 'av' in update:
                self.atom.av = AttentionValue.from_dict(update['av'])
            
            return len(data)
        except Exception:
            return -1
    
    def stat(self) -> Dict[str, Any]:
        return {
            "type": "atom",
            "atom_type": self.atom.atom_type,
            "uuid": self.atom.uuid,
            "size": len(self.read()),
            "sti": self.atom.av.sti,
            "confidence": self.atom.tv.confidence
        }


class QueryNode(CogFSNode):
    """
    A CogFS node that represents a query interface.
    
    Writing a query pattern returns matching atoms.
    """
    
    def __init__(self, atomspace: AtomSpace):
        self.atomspace = atomspace
        self._last_query: Optional[str] = None
        self._results: List[Atom] = []
    
    def read(self) -> bytes:
        """Read query results"""
        results = [a.to_dict() for a in self._results]
        return json.dumps(results).encode('utf-8')
    
    def write(self, data: bytes) -> int:
        """Execute a query"""
        try:
            query = json.loads(data.decode('utf-8'))
            self._last_query = query
            
            # Simple query by type
            if 'type' in query:
                self._results = self.atomspace.get_atoms_by_type(query['type'])
            else:
                self._results = self.atomspace.get_all_atoms()
            
            return len(data)
        except Exception:
            return -1
    
    def stat(self) -> Dict[str, Any]:
        return {
            "type": "query",
            "last_query": self._last_query,
            "result_count": len(self._results)
        }


class CogFS:
    """
    Cognitive Filesystem - exposes AtomSpace as a filesystem.
    
    Structure:
    /atomspace/
        /nodes/
            /<type>/
                /<name>
        /links/
            /<type>/
                /<uuid>
        /query
        /inference
        /attention
    /proc/
        /<pid>/
            /status
            /goal
            /attention
    /kernel/
        /version
        /stats
        /ontogenetic
    """
    
    def __init__(self, atomspace: AtomSpace, scheduler: CogScheduler):
        self.atomspace = atomspace
        self.scheduler = scheduler
        self._mount_point = "/cogfs"
        self._nodes: Dict[str, CogFSNode] = {}
        
        # Initialize virtual nodes
        self._init_virtual_nodes()
    
    def _init_virtual_nodes(self) -> None:
        """Initialize virtual filesystem nodes"""
        # Query interface
        self._nodes["/atomspace/query"] = QueryNode(self.atomspace)
    
    def resolve_path(self, path: str) -> Optional[CogFSNode]:
        """Resolve a path to a CogFS node"""
        # Check virtual nodes first
        if path in self._nodes:
            return self._nodes[path]
        
        # Parse path
        parts = path.strip('/').split('/')
        
        if len(parts) < 2:
            return None
        
        if parts[0] == "atomspace":
            if parts[1] == "nodes" and len(parts) >= 4:
                # /atomspace/nodes/<type>/<name>
                node_type = parts[2]
                node_name = parts[3]
                atom = self.atomspace.get_node(node_type, node_name)
                if atom:
                    return AtomNode(atom, self.atomspace)
            
            elif parts[1] == "links" and len(parts) >= 3:
                # /atomspace/links/<uuid>
                uuid = parts[2]
                atom = self.atomspace.get(uuid)
                if atom:
                    return AtomNode(atom, self.atomspace)
        
        return None
    
    def read(self, path: str) -> bytes:
        """Read from a CogFS path"""
        node = self.resolve_path(path)
        if node:
            return node.read()
        return b''
    
    def write(self, path: str, data: bytes) -> int:
        """Write to a CogFS path"""
        node = self.resolve_path(path)
        if node:
            return node.write(data)
        return -1
    
    def stat(self, path: str) -> Optional[Dict[str, Any]]:
        """Get stats for a CogFS path"""
        node = self.resolve_path(path)
        if node:
            return node.stat()
        return None
    
    def listdir(self, path: str) -> List[str]:
        """List directory contents"""
        parts = path.strip('/').split('/')
        
        if path == "/" or path == "":
            return ["atomspace", "proc", "kernel"]
        
        if parts[0] == "atomspace":
            if len(parts) == 1:
                return ["nodes", "links", "query", "inference", "attention"]
            elif parts[1] == "nodes":
                if len(parts) == 2:
                    # List all node types
                    types = set()
                    for atom in self.atomspace.get_all_atoms():
                        if isinstance(atom, Node):
                            types.add(atom.atom_type)
                    return list(types)
                elif len(parts) == 3:
                    # List all nodes of a type
                    node_type = parts[2]
                    return [a.name for a in self.atomspace.get_atoms_by_type(node_type)]
        
        return []


# ============================================================
# PLN System Calls
# ============================================================

class PLNSyscall:
    """
    PLN (Probabilistic Logic Networks) as system calls.
    
    These syscalls allow cognitive processes to perform
    logical inference as kernel-level operations.
    """
    
    def __init__(self, atomspace: AtomSpace):
        self.atomspace = atomspace
    
    def sys_infer(self, rule: str, premises: List[str]) -> Optional[str]:
        """
        Perform a single inference step.
        
        Args:
            rule: Name of the inference rule
            premises: UUIDs of premise atoms
        
        Returns:
            UUID of the conclusion atom, or None
        """
        # Get premise atoms
        premise_atoms = [self.atomspace.get(uuid) for uuid in premises]
        if None in premise_atoms:
            return None
        
        # Apply rule
        if rule == "deduction":
            return self._deduction(premise_atoms)
        elif rule == "induction":
            return self._induction(premise_atoms)
        elif rule == "abduction":
            return self._abduction(premise_atoms)
        elif rule == "modus_ponens":
            return self._modus_ponens(premise_atoms)
        
        return None
    
    def _deduction(self, premises: List[Atom]) -> Optional[str]:
        """
        Deduction rule: A->B, B->C |- A->C
        
        TV formula: sAC = sAB * sBC
                    cAC = cAB * cBC * sBC
        """
        if len(premises) != 2:
            return None
        
        # Check for inheritance links
        if not all(isinstance(p, Link) and p.atom_type == "InheritanceLink" for p in premises):
            return None
        
        link1, link2 = premises
        
        # Check if they chain: A->B, B->C
        if link1.outgoing[1] != link2.outgoing[0]:
            # Try swapping
            if link2.outgoing[1] == link1.outgoing[0]:
                link1, link2 = link2, link1
            else:
                return None
        
        # Create conclusion A->C
        A = link1.outgoing[0]
        C = link2.outgoing[1]
        
        # Calculate truth value
        sAB, cAB = link1.tv.strength, link1.tv.confidence
        sBC, cBC = link2.tv.strength, link2.tv.confidence
        
        sAC = sAB * sBC
        cAC = cAB * cBC * sBC
        
        conclusion = InheritanceLink(
            A, C,
            tv=TruthValue.simple(sAC, cAC)
        )
        self.atomspace.add(conclusion)
        
        return conclusion.uuid
    
    def _induction(self, premises: List[Atom]) -> Optional[str]:
        """Induction rule (simplified)"""
        # Placeholder for full implementation
        return None
    
    def _abduction(self, premises: List[Atom]) -> Optional[str]:
        """Abduction rule (simplified)"""
        # Placeholder for full implementation
        return None
    
    def _modus_ponens(self, premises: List[Atom]) -> Optional[str]:
        """Modus ponens: A, A->B |- B"""
        if len(premises) != 2:
            return None
        
        # Find the implication and the antecedent
        impl = None
        ante = None
        
        for p in premises:
            if isinstance(p, Link) and p.atom_type == "InheritanceLink":
                impl = p
            elif isinstance(p, Node):
                ante = p
        
        if impl is None or ante is None:
            return None
        
        # Check if antecedent matches
        if impl.outgoing[0] != ante:
            return None
        
        # The consequent already exists, just stimulate it
        consequent = impl.outgoing[1]
        consequent.av.stimulate(10)
        
        return consequent.uuid


# ============================================================
# Cognitive Kernel
# ============================================================

class CogKernel:
    """
    The Cognitive Kernel - the core of the Daedalos operating system.
    
    This kernel provides:
    - Cognitive process management
    - AtomSpace-based memory
    - CogFS filesystem
    - PLN inference syscalls
    - ECAN attention scheduling
    - Ontogenetic self-evolution
    """
    
    VERSION = "0.1.0-chimera"
    
    def __init__(self, name: str = "daedalos"):
        self.name = name
        self.boot_time = time.time()
        
        # Core components
        self.atomspace = AtomSpace(f"{name}-kernel-space")
        self.scheduler = CogScheduler()
        self.cogfs = CogFS(self.atomspace, self.scheduler)
        self.pln = PLNSyscall(self.atomspace)
        self.bridge = OntogeneticAtomSpaceBridge(self.atomspace, max_order=5)
        
        # Process management
        self._next_pid = 1
        self._pid_lock = threading.Lock()
        
        # Kernel state
        self._running = False
        self._kernel_thread: Optional[threading.Thread] = None
        
        # Statistics
        self.stats = {
            "processes_created": 0,
            "processes_terminated": 0,
            "inferences_performed": 0,
            "attention_cycles": 0,
            "ontogenetic_generations": 0
        }
        
        # Initialize kernel structures in AtomSpace
        self._init_kernel_space()
    
    def _init_kernel_space(self) -> None:
        """Initialize kernel structures in AtomSpace"""
        # Kernel concept
        kernel_node = ConceptNode(
            f"Kernel_{self.name}",
            tv=TruthValue.simple(1.0, 1.0),
            av=AttentionValue(sti=100, lti=100, vlti=True)
        )
        self.atomspace.add(kernel_node)
        
        # Version node
        version_node = ConceptNode(f"Version_{self.VERSION}")
        self.atomspace.add(version_node)
        
        link = InheritanceLink(version_node, kernel_node)
        self.atomspace.add(link)
    
    def _allocate_pid(self) -> int:
        """Allocate a new process ID"""
        with self._pid_lock:
            pid = self._next_pid
            self._next_pid += 1
            return pid
    
    def fork(self, name: str, func: Callable, *args, **kwargs) -> CogProc:
        """
        Create a new cognitive process.
        
        Similar to Unix fork(), but creates a CogProc with
        cognitive attributes.
        """
        pid = self._allocate_pid()
        
        proc = CogProc(
            pid=pid,
            name=name,
            attention=AttentionValue(sti=50, lti=10),
            truth=TruthValue.simple(1.0, 0.9)
        )
        proc.set_function(func, *args, **kwargs)
        
        self.scheduler.add_process(proc)
        self.stats["processes_created"] += 1
        
        return proc
    
    def exec(self, proc: CogProc) -> Any:
        """Execute a cognitive process"""
        return proc.execute()
    
    def wait(self, pid: int, timeout: Optional[float] = None) -> Optional[Any]:
        """Wait for a process to complete"""
        start = time.time()
        
        while True:
            proc = self.scheduler.all_procs.get(pid)
            if proc is None:
                return None
            
            if proc.state == CogProcState.TERMINATED:
                return proc._result
            
            if timeout and (time.time() - start) > timeout:
                return None
            
            time.sleep(0.01)
    
    def kill(self, pid: int, signal: int = 9) -> bool:
        """Terminate a cognitive process"""
        proc = self.scheduler.all_procs.get(pid)
        if proc:
            proc.state = CogProcState.TERMINATED
            self.stats["processes_terminated"] += 1
            return True
        return False
    
    def syscall(self, call: str, *args, **kwargs) -> Any:
        """
        Execute a kernel system call.
        
        Available syscalls:
        - infer: PLN inference
        - attend: ECAN attention operation
        - query: AtomSpace query
        - evolve: Ontogenetic evolution
        """
        if call == "infer":
            result = self.pln.sys_infer(args[0], args[1])
            self.stats["inferences_performed"] += 1
            return result
        
        elif call == "attend":
            # Stimulate attention for an atom
            uuid = args[0]
            amount = args[1] if len(args) > 1 else 10.0
            atom = self.atomspace.get(uuid)
            if atom:
                self.atomspace.stimulate(atom, amount)
                self.stats["attention_cycles"] += 1
                return True
            return False
        
        elif call == "query":
            # Query AtomSpace
            query_type = args[0]
            return self.atomspace.get_atoms_by_type(query_type)
        
        elif call == "evolve":
            # Trigger ontogenetic evolution
            self.bridge.evolve_population(
                population_size=10,
                generations=5
            )
            self.stats["ontogenetic_generations"] += 5
            return True
        
        return None
    
    def boot(self) -> None:
        """Boot the cognitive kernel"""
        print(f"Booting {self.name} Cognitive Kernel v{self.VERSION}")
        print(f"AtomSpace initialized with {self.atomspace.size()} atoms")
        print(f"CogFS mounted at /cogfs")
        print(f"PLN inference engine ready")
        print(f"ECAN attention scheduler ready")
        print(f"Ontogenetic bridge connected (max_order=5)")
        print(f"Kernel boot complete.")
        
        self._running = True
    
    def shutdown(self) -> None:
        """Shutdown the cognitive kernel"""
        print(f"Shutting down {self.name}...")
        self._running = False
        
        # Terminate all processes
        for pid in list(self.scheduler.all_procs.keys()):
            self.kill(pid)
        
        print(f"Kernel shutdown complete.")
        print(f"Statistics: {self.stats}")
    
    def status(self) -> Dict[str, Any]:
        """Get kernel status"""
        return {
            "name": self.name,
            "version": self.VERSION,
            "uptime": time.time() - self.boot_time,
            "running": self._running,
            "atomspace_size": self.atomspace.size(),
            "process_count": len(self.scheduler.all_procs),
            "stats": self.stats
        }


# ============================================================
# Module Exports
# ============================================================

__all__ = [
    "CogKernel",
    "CogProc",
    "CogProcState",
    "CogProcPriority",
    "CogScheduler",
    "CogFS",
    "PLNSyscall"
]

__version__ = "1.0.0-chimera"


# ============================================================
# Self-Test
# ============================================================

if __name__ == "__main__":
    print("Cognitive Kernel Self-Test")
    print("=" * 50)
    
    # Create and boot kernel
    kernel = CogKernel("test-daedalos")
    kernel.boot()
    
    # Create a cognitive process
    def cognitive_task(x):
        return x * 2
    
    proc = kernel.fork("test_proc", cognitive_task, 21)
    print(f"Created process: PID={proc.pid}, name={proc.name}")
    
    # Execute
    result = kernel.exec(proc)
    print(f"Process result: {result}")
    
    # Test CogFS
    print(f"\nCogFS listdir(/): {kernel.cogfs.listdir('/')}")
    print(f"CogFS listdir(/atomspace): {kernel.cogfs.listdir('/atomspace')}")
    
    # Test syscalls
    kernel.syscall("evolve")
    
    # Status
    print(f"\nKernel status: {kernel.status()}")
    
    # Shutdown
    kernel.shutdown()
    
    print("\nCognitive Kernel self-test complete!")
