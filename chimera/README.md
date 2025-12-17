# Project Chimera

**Cognitive Fusion Framework for Agent-Zero and Daedalos**

Project Chimera is a unified cognitive architecture that integrates multiple repositories into a coherent framework for building self-aware, self-evolving artificial intelligence systems.

## Overview

Chimera provides two primary implementation targets:

### 1. Agent-Zero: Ouroboros-1

A self-aware cognitive agent that embodies:
- **Recursive Relevance Realization** - Dynamic attention and salience
- **Ontogenetic Self-Evolution** - A000081-based parameter derivation
- **12-Step Cognitive Cycle** - Three interleaved consciousness streams
- **Personality Dynamics** - Evolving traits with immutable ethics

### 2. Daedalos: Cognitive Operating System

A revolutionary OS where cognition is a kernel service:
- **CogProc** - Cognitive processes with attention-based scheduling
- **CogFS** - Filesystem exposing AtomSpace as files
- **PLN Syscalls** - Probabilistic logic inference as system calls
- **ECAN Scheduling** - Economic attention for resource allocation

## Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    Project Chimera                          │
├─────────────────────────────────────────────────────────────┤
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐         │
│  │ Ouroboros-1 │  │   CogKernel │  │   CogFS     │         │
│  │ Agent-Zero  │  │   Daedalos  │  │  Filesystem │         │
│  └──────┬──────┘  └──────┬──────┘  └──────┬──────┘         │
│         │                │                │                 │
│  ┌──────┴────────────────┴────────────────┴──────┐         │
│  │           Ontogenetic-AtomSpace Bridge        │         │
│  │         (A000081 ↔ Hypergraph Memory)         │         │
│  └──────────────────────┬────────────────────────┘         │
│                         │                                   │
│  ┌──────────────────────┴────────────────────────┐         │
│  │              Unified AtomSpace                 │         │
│  │    (Nodes, Links, TruthValues, Attention)     │         │
│  └───────────────────────────────────────────────┘         │
└─────────────────────────────────────────────────────────────┘
```

## Installation

```bash
# Clone the repository
git clone https://github.com/o9nn/echo-jnn.git
cd echo-jnn

# Install Chimera
pip install -e ./chimera

# Or with all dependencies
pip install -e "./chimera[full]"
```

## Quick Start

### Creating an Agent-Zero Instance

```python
from chimera import OuroborosAgent

# Create the agent
agent = OuroborosAgent("my-agent")

# Set a goal
agent.set_goal("understand_self")

# Run cognitive cycles
for i in range(12):
    result = agent.think({"input": f"stimulus_{i}"})
    print(f"Step {i+1}: {result['stream_1']['phase']}")

# Introspect
print(agent.introspect())
```

### Creating a Cognitive Kernel

```python
from chimera import CogKernel

# Create and boot the kernel
kernel = CogKernel("my-daedalos")
kernel.boot()

# Fork a cognitive process
def my_task(x):
    return x * 2

proc = kernel.fork("compute", my_task, 21)
result = kernel.exec(proc)
print(f"Result: {result}")

# Use PLN inference
conclusion = kernel.syscall("infer", "deduction", [premise1_uuid, premise2_uuid])

# Shutdown
kernel.shutdown()
```

### Working with AtomSpace

```python
from chimera import AtomSpace, ConceptNode, InheritanceLink, TruthValue

# Create AtomSpace
atomspace = AtomSpace("my-memory")

# Add concepts
cat = ConceptNode("cat", tv=TruthValue.simple(1.0, 0.9))
animal = ConceptNode("animal", tv=TruthValue.simple(1.0, 0.9))

atomspace.add(cat)
atomspace.add(animal)

# Create inheritance relationship
link = InheritanceLink(cat, animal, tv=TruthValue.simple(0.9, 0.8))
atomspace.add(link)

# Query
all_concepts = atomspace.get_atoms_by_type("ConceptNode")
```

## Components

### Integrated Repositories

| Repository | Purpose | Integration |
|------------|---------|-------------|
| `echo-jnn` | Ontogenetic A000081 dynamics | Core mathematical foundation |
| `deltecho` | AtomSpace, PLN, ECAN | Memory and inference |
| `togai` | Cognitive kernel extensions | OS-level cognition |
| `airi` | Embodiment and personality | Agent character |
| `nanocyc` | Relevance realization | Attention dynamics |
| `nnoi` | Multi-agent orchestration | Agent coordination |
| `tfml` | ML integration | Learning capabilities |
| `nn.aiml` | AIML framework | Conversational interface |

### Key Concepts

**A000081 Sequence**: The number of unlabeled rooted trees with n nodes. This sequence drives all parameter derivation in the ontogenetic framework.

**AtomSpace**: A hypergraph knowledge representation where nodes represent concepts and links represent relationships, each with truth values and attention values.

**Relevance Realization**: The cognitive process of determining what matters in a given context, implemented through opponent processing and attention dynamics.

**Cognitive Kernel**: An operating system kernel where thinking is a fundamental service, not an application.

## Development

```bash
# Install dev dependencies
pip install -e "./chimera[dev]"

# Run tests
pytest

# Format code
black chimera/
isort chimera/

# Type checking
mypy chimera/
```

## License

MIT License - See LICENSE file for details.

## References

- Vervaeke, J. - Relevance Realization Framework
- Goertzel, B. - OpenCog/AtomSpace
- Butcher, J.C. - B-Series and Rooted Trees
- OEIS A000081 - Number of rooted trees
