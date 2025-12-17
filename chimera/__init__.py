"""
Project Chimera: Cognitive Fusion Framework for Agent-Zero and Daedalos

This package provides the unified cognitive architecture integrating:
- echo-jnn: Ontogenetic A000081-based self-evolution
- deltecho: AtomSpace, PLN, ECAN from OpenCog
- togai: Cognitive kernel extensions
- airi: Embodiment and personality
- nanocyc: Relevance realization
- nnoi: Multi-agent orchestration
- tfml: TensorFlow/ML integration
- nn.aiml: AIML conversational framework

The Chimera framework enables:
1. Agent-Zero instances (Ouroboros-1) with recursive self-awareness
2. Daedalos cognitive operating system with kernel-level cognition
3. Ontogenetic self-evolution through B-series dynamics
4. Relevance realization for attention and salience
5. PLN inference as system calls
6. CogFS filesystem exposing AtomSpace as files

Usage:
    from chimera import OuroborosAgent, CogKernel, AtomSpace
    
    # Create an Agent-Zero instance
    agent = OuroborosAgent("my-agent")
    agent.set_goal("understand_self")
    result = agent.think({"input": "hello"})
    
    # Or create a cognitive kernel
    kernel = CogKernel("my-daedalos")
    kernel.boot()
    proc = kernel.fork("task", my_function, arg1, arg2)
    kernel.exec(proc)
"""

__version__ = "1.0.0"
__author__ = "Chimera Project"
__license__ = "MIT"

# Core AtomSpace
from chimera.atomspace.atomspace import (
    AtomSpace,
    Atom,
    Node,
    Link,
    ConceptNode,
    PredicateNode,
    SchemaNode,
    VariableNode,
    InheritanceLink,
    EvaluationLink,
    ExecutionLink,
    SimilarityLink,
    MemberLink,
    ContextLink,
    TruthValue,
    AttentionValue,
)

# Ontogenetic Bridge
from chimera.bridge.ontogenetic_atomspace_bridge import (
    OntogeneticAtomSpaceBridge,
    OntogeneticKernel,
    A000081Generator,
    RootedTree,
    TreeEnumerator,
    BSeriesCoefficient,
)

# Agent-Zero (Ouroboros)
from chimera.agents.ouroboros import (
    OuroborosAgent,
    PersonalityTensor,
    EmotionalState,
    RelevanceRealizationEngine,
    CognitiveCycle,
    CognitivePhase,
)

# Cognitive Kernel (Daedalos)
from chimera.kernel.cogkernel import (
    CogKernel,
    CogProc,
    CogProcState,
    CogProcPriority,
    CogScheduler,
    CogFS,
    PLNSyscall,
)

__all__ = [
    # Version info
    "__version__",
    "__author__",
    "__license__",
    
    # AtomSpace
    "AtomSpace",
    "Atom",
    "Node",
    "Link",
    "ConceptNode",
    "PredicateNode",
    "SchemaNode",
    "VariableNode",
    "InheritanceLink",
    "EvaluationLink",
    "ExecutionLink",
    "SimilarityLink",
    "MemberLink",
    "ContextLink",
    "TruthValue",
    "AttentionValue",
    
    # Ontogenetic
    "OntogeneticAtomSpaceBridge",
    "OntogeneticKernel",
    "A000081Generator",
    "RootedTree",
    "TreeEnumerator",
    "BSeriesCoefficient",
    
    # Agent-Zero
    "OuroborosAgent",
    "PersonalityTensor",
    "EmotionalState",
    "RelevanceRealizationEngine",
    "CognitiveCycle",
    "CognitivePhase",
    
    # Cognitive Kernel
    "CogKernel",
    "CogProc",
    "CogProcState",
    "CogProcPriority",
    "CogScheduler",
    "CogFS",
    "PLNSyscall",
]
