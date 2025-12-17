"""
Chimera AtomSpace - Unified Hypergraph Knowledge Representation

This module provides a Python interface to the AtomSpace hypergraph
knowledge representation system, consolidating implementations from
deltecho, togai, nanocyc, and nnoi into a single coherent API.

The AtomSpace serves as the cognitive memory substrate for the
Ouroboros-1 Agent-Zero instance and the Daedalos operating system.
"""

from __future__ import annotations
import uuid
import json
from typing import Dict, List, Optional, Any, Callable, Union, Tuple
from dataclasses import dataclass, field
from enum import Enum, auto
from abc import ABC, abstractmethod


# ============================================================
# Truth Value System
# ============================================================

class TruthValueType(Enum):
    """Types of truth values supported"""
    SIMPLE = auto()
    COUNT = auto()
    INDEFINITE = auto()
    FUZZY = auto()


@dataclass
class TruthValue:
    """
    Truth Value representing the degree of truth of an atom.
    
    Attributes:
        strength: The probability or degree of truth (0.0 to 1.0)
        confidence: The confidence in the strength estimate (0.0 to 1.0)
        count: The number of observations (for count truth values)
        tv_type: The type of truth value
    """
    strength: float = 1.0
    confidence: float = 0.9
    count: int = 1
    tv_type: TruthValueType = TruthValueType.SIMPLE
    
    @classmethod
    def simple(cls, strength: float = 1.0, confidence: float = 0.9) -> TruthValue:
        """Create a simple truth value"""
        return cls(strength=strength, confidence=confidence, tv_type=TruthValueType.SIMPLE)
    
    @classmethod
    def count(cls, strength: float, confidence: float, count: int) -> TruthValue:
        """Create a count truth value"""
        return cls(strength=strength, confidence=confidence, count=count, tv_type=TruthValueType.COUNT)
    
    @classmethod
    def indefinite(cls) -> TruthValue:
        """Create an indefinite truth value representing uncertainty"""
        return cls(strength=0.5, confidence=0.0, tv_type=TruthValueType.INDEFINITE)
    
    def merge(self, other: TruthValue) -> TruthValue:
        """Merge two truth values using revision rule"""
        if self.tv_type == TruthValueType.INDEFINITE:
            return other
        if other.tv_type == TruthValueType.INDEFINITE:
            return self
        
        # Simple revision formula
        total_weight = self.confidence + other.confidence
        if total_weight == 0:
            return TruthValue.indefinite()
        
        new_strength = (self.strength * self.confidence + other.strength * other.confidence) / total_weight
        new_confidence = min(1.0, total_weight / 2)
        
        return TruthValue.simple(new_strength, new_confidence)
    
    def to_dict(self) -> Dict[str, Any]:
        """Serialize to dictionary"""
        return {
            "strength": self.strength,
            "confidence": self.confidence,
            "count": self.count,
            "type": self.tv_type.name
        }
    
    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> TruthValue:
        """Deserialize from dictionary"""
        return cls(
            strength=data.get("strength", 1.0),
            confidence=data.get("confidence", 0.9),
            count=data.get("count", 1),
            tv_type=TruthValueType[data.get("type", "SIMPLE")]
        )


# ============================================================
# Attention Value System (ECAN Integration)
# ============================================================

@dataclass
class AttentionValue:
    """
    Attention Value for Economic Attention Network (ECAN).
    
    Attributes:
        sti: Short-Term Importance (current relevance)
        lti: Long-Term Importance (persistent relevance)
        vlti: Very Long-Term Importance (permanent flag)
    """
    sti: float = 0.0
    lti: float = 0.0
    vlti: bool = False
    
    def stimulate(self, amount: float) -> None:
        """Increase STI by the given amount"""
        self.sti += amount
    
    def decay(self, rate: float) -> None:
        """Apply decay to STI"""
        self.sti *= (1 - rate)
    
    def rent(self, cost: float) -> bool:
        """Pay attention rent, return False if insufficient STI"""
        if self.sti >= cost:
            self.sti -= cost
            return True
        return False
    
    def to_dict(self) -> Dict[str, Any]:
        """Serialize to dictionary"""
        return {"sti": self.sti, "lti": self.lti, "vlti": self.vlti}
    
    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> AttentionValue:
        """Deserialize from dictionary"""
        return cls(
            sti=data.get("sti", 0.0),
            lti=data.get("lti", 0.0),
            vlti=data.get("vlti", False)
        )


# ============================================================
# Atom Base Classes
# ============================================================

class Atom(ABC):
    """Abstract base class for all atoms in the AtomSpace"""
    
    def __init__(
        self,
        atom_type: str,
        tv: Optional[TruthValue] = None,
        av: Optional[AttentionValue] = None
    ):
        self.atom_type = atom_type
        self.uuid = str(uuid.uuid4())
        self.tv = tv or TruthValue.simple()
        self.av = av or AttentionValue()
        self._incoming: List[Link] = []
    
    @property
    @abstractmethod
    def name(self) -> str:
        """Return the name/identifier of this atom"""
        pass
    
    def add_incoming(self, link: Link) -> None:
        """Add an incoming link"""
        if link not in self._incoming:
            self._incoming.append(link)
    
    def get_incoming(self) -> List[Link]:
        """Get all incoming links"""
        return self._incoming.copy()
    
    @abstractmethod
    def to_dict(self) -> Dict[str, Any]:
        """Serialize to dictionary"""
        pass
    
    def __hash__(self):
        return hash(self.uuid)
    
    def __eq__(self, other):
        if isinstance(other, Atom):
            return self.uuid == other.uuid
        return False


class Node(Atom):
    """
    A Node represents a concept, entity, or value in the AtomSpace.
    Nodes have names and can be connected by Links.
    """
    
    def __init__(
        self,
        node_type: str,
        node_name: str,
        tv: Optional[TruthValue] = None,
        av: Optional[AttentionValue] = None
    ):
        super().__init__(node_type, tv, av)
        self._name = node_name
    
    @property
    def name(self) -> str:
        return self._name
    
    def to_dict(self) -> Dict[str, Any]:
        return {
            "type": "node",
            "atom_type": self.atom_type,
            "name": self._name,
            "uuid": self.uuid,
            "tv": self.tv.to_dict(),
            "av": self.av.to_dict()
        }
    
    def __repr__(self):
        return f"{self.atom_type}(\"{self._name}\")"


class Link(Atom):
    """
    A Link connects multiple atoms (nodes or other links) in the AtomSpace.
    Links represent relationships, predicates, and logical structures.
    """
    
    def __init__(
        self,
        link_type: str,
        outgoing: List[Atom],
        tv: Optional[TruthValue] = None,
        av: Optional[AttentionValue] = None
    ):
        super().__init__(link_type, tv, av)
        self._outgoing = outgoing
        # Register this link as incoming for all outgoing atoms
        for atom in outgoing:
            atom.add_incoming(self)
    
    @property
    def name(self) -> str:
        return f"{self.atom_type}[{len(self._outgoing)}]"
    
    @property
    def outgoing(self) -> List[Atom]:
        return self._outgoing.copy()
    
    @property
    def arity(self) -> int:
        return len(self._outgoing)
    
    def to_dict(self) -> Dict[str, Any]:
        return {
            "type": "link",
            "atom_type": self.atom_type,
            "outgoing": [a.uuid for a in self._outgoing],
            "uuid": self.uuid,
            "tv": self.tv.to_dict(),
            "av": self.av.to_dict()
        }
    
    def __repr__(self):
        outgoing_repr = ", ".join(str(a) for a in self._outgoing)
        return f"{self.atom_type}({outgoing_repr})"


# ============================================================
# Node Type Factories
# ============================================================

class ConceptNode(Node):
    """A node representing a concept or category"""
    def __init__(self, name: str, **kwargs):
        super().__init__("ConceptNode", name, **kwargs)


class PredicateNode(Node):
    """A node representing a predicate or relation"""
    def __init__(self, name: str, **kwargs):
        super().__init__("PredicateNode", name, **kwargs)


class SchemaNode(Node):
    """A node representing an executable procedure"""
    def __init__(self, name: str, **kwargs):
        super().__init__("SchemaNode", name, **kwargs)


class VariableNode(Node):
    """A node representing a variable for pattern matching"""
    def __init__(self, name: str, **kwargs):
        super().__init__("VariableNode", name, **kwargs)


class NumberNode(Node):
    """A node representing a numeric value"""
    def __init__(self, value: float, **kwargs):
        super().__init__("NumberNode", str(value), **kwargs)
        self.value = value


class GroundedSchemaNode(Node):
    """A node with an associated Python function"""
    def __init__(self, name: str, func: Callable, **kwargs):
        super().__init__("GroundedSchemaNode", name, **kwargs)
        self.func = func
    
    def execute(self, *args) -> Any:
        return self.func(*args)


# ============================================================
# Link Type Factories
# ============================================================

class InheritanceLink(Link):
    """A link representing inheritance: subtype inherits from supertype"""
    def __init__(self, subtype: Atom, supertype: Atom, **kwargs):
        super().__init__("InheritanceLink", [subtype, supertype], **kwargs)


class EvaluationLink(Link):
    """A link representing predicate evaluation"""
    def __init__(self, predicate: Atom, *arguments: Atom, **kwargs):
        super().__init__("EvaluationLink", [predicate, *arguments], **kwargs)


class ExecutionLink(Link):
    """A link representing schema execution"""
    def __init__(self, schema: Atom, *arguments: Atom, **kwargs):
        super().__init__("ExecutionLink", [schema, *arguments], **kwargs)


class SimilarityLink(Link):
    """A symmetric link representing similarity between atoms"""
    def __init__(self, atom1: Atom, atom2: Atom, **kwargs):
        super().__init__("SimilarityLink", [atom1, atom2], **kwargs)


class MemberLink(Link):
    """A link representing set membership"""
    def __init__(self, member: Atom, set_node: Atom, **kwargs):
        super().__init__("MemberLink", [member, set_node], **kwargs)


class ContextLink(Link):
    """A link representing contextual validity"""
    def __init__(self, context: Atom, atom: Atom, **kwargs):
        super().__init__("ContextLink", [context, atom], **kwargs)


class ListLink(Link):
    """A link representing an ordered list of atoms"""
    def __init__(self, *atoms: Atom, **kwargs):
        super().__init__("ListLink", list(atoms), **kwargs)


class AndLink(Link):
    """A link representing logical conjunction"""
    def __init__(self, *atoms: Atom, **kwargs):
        super().__init__("AndLink", list(atoms), **kwargs)


class OrLink(Link):
    """A link representing logical disjunction"""
    def __init__(self, *atoms: Atom, **kwargs):
        super().__init__("OrLink", list(atoms), **kwargs)


class NotLink(Link):
    """A link representing logical negation"""
    def __init__(self, atom: Atom, **kwargs):
        super().__init__("NotLink", [atom], **kwargs)


# ============================================================
# AtomSpace Container
# ============================================================

class AtomSpace:
    """
    The AtomSpace is the primary knowledge representation container.
    It stores atoms (nodes and links) and provides query/manipulation operations.
    """
    
    def __init__(self, name: str = "default"):
        self.name = name
        self._atoms_by_uuid: Dict[str, Atom] = {}
        self._atoms_by_type: Dict[str, List[Atom]] = {}
        self._atoms_by_name: Dict[Tuple[str, str], Atom] = {}
        self._callbacks: Dict[str, List[Callable]] = {
            "add": [],
            "remove": [],
            "update": [],
            "clear": []
        }
    
    def add(self, atom: Atom) -> Atom:
        """Add an atom to the AtomSpace"""
        # Check for existing atom with same signature
        if isinstance(atom, Node):
            key = (atom.atom_type, atom.name)
            if key in self._atoms_by_name:
                # Merge truth values
                existing = self._atoms_by_name[key]
                existing.tv = existing.tv.merge(atom.tv)
                return existing
            self._atoms_by_name[key] = atom
        
        # Add to indexes
        self._atoms_by_uuid[atom.uuid] = atom
        
        if atom.atom_type not in self._atoms_by_type:
            self._atoms_by_type[atom.atom_type] = []
        self._atoms_by_type[atom.atom_type].append(atom)
        
        # Notify callbacks
        self._notify("add", atom)
        
        return atom
    
    def get(self, uuid: str) -> Optional[Atom]:
        """Get an atom by UUID"""
        return self._atoms_by_uuid.get(uuid)
    
    def get_node(self, node_type: str, name: str) -> Optional[Node]:
        """Get a node by type and name"""
        return self._atoms_by_name.get((node_type, name))
    
    def remove(self, atom: Atom) -> bool:
        """Remove an atom from the AtomSpace"""
        if atom.uuid not in self._atoms_by_uuid:
            return False
        
        del self._atoms_by_uuid[atom.uuid]
        
        if atom.atom_type in self._atoms_by_type:
            self._atoms_by_type[atom.atom_type].remove(atom)
        
        if isinstance(atom, Node):
            key = (atom.atom_type, atom.name)
            if key in self._atoms_by_name:
                del self._atoms_by_name[key]
        
        self._notify("remove", atom)
        return True
    
    def clear(self) -> None:
        """Clear all atoms from the AtomSpace"""
        self._atoms_by_uuid.clear()
        self._atoms_by_type.clear()
        self._atoms_by_name.clear()
        self._notify("clear", None)
    
    def get_atoms_by_type(self, atom_type: str, subclasses: bool = True) -> List[Atom]:
        """Get all atoms of a given type"""
        return self._atoms_by_type.get(atom_type, []).copy()
    
    def get_all_atoms(self) -> List[Atom]:
        """Get all atoms in the AtomSpace"""
        return list(self._atoms_by_uuid.values())
    
    def size(self) -> int:
        """Return the number of atoms in the AtomSpace"""
        return len(self._atoms_by_uuid)
    
    # ============================================================
    # Attention Operations (ECAN)
    # ============================================================
    
    def stimulate(self, atom: Atom, amount: float) -> None:
        """Stimulate an atom's attention"""
        atom.av.stimulate(amount)
        self._notify("update", atom)
    
    def decay_attention(self, rate: float = 0.1) -> None:
        """Apply attention decay to all atoms"""
        for atom in self._atoms_by_uuid.values():
            atom.av.decay(rate)
    
    def get_attentional_focus(self, threshold: float = 0.5) -> List[Atom]:
        """Get atoms with STI above threshold"""
        return [a for a in self._atoms_by_uuid.values() if a.av.sti >= threshold]
    
    # ============================================================
    # Callback System
    # ============================================================
    
    def register_callback(self, event: str, callback: Callable) -> None:
        """Register a callback for AtomSpace events"""
        if event in self._callbacks:
            self._callbacks[event].append(callback)
    
    def _notify(self, event: str, data: Any) -> None:
        """Notify all registered callbacks"""
        for callback in self._callbacks.get(event, []):
            callback(data)
    
    # ============================================================
    # Serialization
    # ============================================================
    
    def to_dict(self) -> Dict[str, Any]:
        """Serialize AtomSpace to dictionary"""
        return {
            "name": self.name,
            "atoms": [a.to_dict() for a in self._atoms_by_uuid.values()]
        }
    
    def to_json(self) -> str:
        """Serialize AtomSpace to JSON string"""
        return json.dumps(self.to_dict(), indent=2)
    
    def save(self, filepath: str) -> None:
        """Save AtomSpace to file"""
        with open(filepath, 'w') as f:
            f.write(self.to_json())
    
    @classmethod
    def load(cls, filepath: str) -> AtomSpace:
        """Load AtomSpace from file"""
        with open(filepath, 'r') as f:
            data = json.load(f)
        
        atomspace = cls(data.get("name", "loaded"))
        # Reconstruction logic would go here
        return atomspace
    
    def __len__(self):
        return self.size()
    
    def __repr__(self):
        return f"AtomSpace(name=\"{self.name}\", size={self.size()})"


# ============================================================
# Module Exports
# ============================================================

__all__ = [
    # Core classes
    "Atom", "Node", "Link", "AtomSpace",
    "TruthValue", "TruthValueType", "AttentionValue",
    
    # Node types
    "ConceptNode", "PredicateNode", "SchemaNode", "VariableNode",
    "NumberNode", "GroundedSchemaNode",
    
    # Link types
    "InheritanceLink", "EvaluationLink", "ExecutionLink",
    "SimilarityLink", "MemberLink", "ContextLink",
    "ListLink", "AndLink", "OrLink", "NotLink"
]

__version__ = "1.0.0-chimera"
