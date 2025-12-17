#!/usr/bin/env python3
"""
Project Chimera - Live Demonstration

This script demonstrates the full capabilities of Project Chimera:
1. AtomSpace hypergraph knowledge representation
2. Ontogenetic A000081-based self-evolution
3. Ouroboros-1 Agent-Zero cognitive cycles
4. Daedalos Cognitive Kernel operations

Run with: python demo.py
"""

import sys
import os
import time

# Add parent to path
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from atomspace.atomspace import (
    AtomSpace, ConceptNode, PredicateNode, InheritanceLink,
    EvaluationLink, TruthValue, AttentionValue
)
from bridge.ontogenetic_atomspace_bridge import (
    A000081Generator, OntogeneticAtomSpaceBridge, TreeEnumerator
)
from agents.ouroboros import OuroborosAgent, CognitivePhase
from kernel.cogkernel import CogKernel


def print_header(title: str) -> None:
    """Print a formatted section header"""
    print("\n" + "=" * 60)
    print(f"  {title}")
    print("=" * 60 + "\n")


def demo_atomspace():
    """Demonstrate AtomSpace operations"""
    print_header("AtomSpace Hypergraph Demonstration")
    
    # Create AtomSpace
    atomspace = AtomSpace("demo-memory")
    print(f"Created AtomSpace: {atomspace}")
    
    # Add concepts
    print("\n[Adding Concepts]")
    concepts = ["cat", "dog", "animal", "mammal", "living_thing"]
    nodes = {}
    for name in concepts:
        node = ConceptNode(name, tv=TruthValue.simple(1.0, 0.9))
        atomspace.add(node)
        nodes[name] = node
        print(f"  Added: {node}")
    
    # Create inheritance hierarchy
    print("\n[Creating Inheritance Hierarchy]")
    hierarchies = [
        ("cat", "mammal"),
        ("dog", "mammal"),
        ("mammal", "animal"),
        ("animal", "living_thing")
    ]
    
    for sub, sup in hierarchies:
        link = InheritanceLink(nodes[sub], nodes[sup], tv=TruthValue.simple(0.95, 0.9))
        atomspace.add(link)
        print(f"  {sub} -> {sup}")
    
    # Query
    print("\n[Querying AtomSpace]")
    all_concepts = atomspace.get_atoms_by_type("ConceptNode")
    print(f"  Total ConceptNodes: {len(all_concepts)}")
    
    all_links = atomspace.get_atoms_by_type("InheritanceLink")
    print(f"  Total InheritanceLinks: {len(all_links)}")
    
    # Attention
    print("\n[Attention Operations]")
    atomspace.stimulate(nodes["cat"], 50)
    print(f"  Stimulated 'cat': STI = {nodes['cat'].av.sti}")
    
    focus = atomspace.get_attentional_focus(threshold=40)
    print(f"  Atoms in focus: {[a.name for a in focus]}")
    
    print(f"\nFinal AtomSpace size: {atomspace.size()} atoms")


def demo_ontogenetic():
    """Demonstrate Ontogenetic A000081 dynamics"""
    print_header("Ontogenetic A000081 Demonstration")
    
    # A000081 sequence
    print("[A000081 Sequence - Number of Rooted Trees]")
    gen = A000081Generator(12)
    sequence = [gen[i] for i in range(1, 13)]
    print(f"  Sequence: {sequence}")
    print(f"  (1, 1, 2, 4, 9, 20, 48, 115, 286, 719, 1842, 4766)")
    
    # Tree enumeration
    print("\n[Tree Enumeration]")
    enumerator = TreeEnumerator(gen)
    for order in range(1, 6):
        trees = enumerator.enumerate(order)
        print(f"  Order {order}: {len(trees)} trees")
        if order <= 3:
            for tree in trees:
                print(f"    - {tree.canonical_form()}")
    
    # Bridge initialization
    print("\n[Ontogenetic-AtomSpace Bridge]")
    atomspace = AtomSpace("ontogenetic-demo")
    bridge = OntogeneticAtomSpaceBridge(atomspace, max_order=5)
    print(f"  Initialized bridge with max_order=5")
    print(f"  AtomSpace populated with {atomspace.size()} atoms")
    
    # Parameter derivation
    print("\n[A000081-Derived Parameters]")
    params = bridge.derive_parameters(5)
    for key, value in params.items():
        print(f"  {key}: {value}")
    
    # Kernel creation
    print("\n[Ontogenetic Kernel]")
    kernel = bridge.create_kernel(4)
    print(f"  Created kernel: {kernel.kernel_id}")
    print(f"  Coefficients: {len(kernel.coefficients)}")
    print(f"  Generation: {kernel.generation}")
    
    # Self-generation
    offspring = kernel.self_generate()
    print(f"\n  Self-generated offspring: {offspring.kernel_id}")
    print(f"  Offspring generation: {offspring.generation}")


def demo_ouroboros():
    """Demonstrate Ouroboros-1 Agent-Zero"""
    print_header("Ouroboros-1 Agent-Zero Demonstration")
    
    # Create agent
    agent = OuroborosAgent("Ouroboros-1")
    print(f"Created agent: {agent}")
    
    # Show personality
    print("\n[Personality Tensor]")
    personality = agent.personality.to_dict()
    for trait, value in list(personality.items())[:6]:
        bar = "█" * int(value * 20)
        print(f"  {trait:20s}: {bar} ({value:.2f})")
    
    # Set goal
    print("\n[Setting Goal]")
    agent.set_goal("achieve_self_awareness")
    print(f"  Goal: {agent.current_goal}")
    
    # Run cognitive cycle
    print("\n[12-Step Cognitive Cycle]")
    print("  Running 12 steps (3 streams × 4 phases each)...")
    print()
    
    phase_names = {
        "ORIENT_1": "🎯 Orient",
        "PERCEIVE": "👁️ Perceive",
        "ATTEND": "🔍 Attend",
        "RECOGNIZE": "💡 Recognize",
        "CATEGORIZE": "📁 Categorize",
        "EVALUATE": "⚖️ Evaluate",
        "ORIENT_2": "🎯 Orient",
        "IMAGINE": "💭 Imagine",
        "PLAN": "📋 Plan",
        "PREDICT": "🔮 Predict",
        "SIMULATE": "🎮 Simulate",
        "INTEGRATE": "🔗 Integrate"
    }
    
    for i in range(12):
        result = agent.think({"input": f"stimulus_{i}"})
        phase = result["stream_1"]["phase"]
        icon = phase_names.get(phase, "❓")
        print(f"  Step {i+1:2d}: {icon:15s} | Streams: S1={result['stream_1']['phase'][:8]:8s} S2={result['stream_2']['phase'][:8]:8s} S3={result['stream_3']['phase'][:8]:8s}")
    
    # Introspection
    print("\n[Agent Introspection]")
    intro = agent.introspect()
    print(f"  Name: {intro['name']}")
    print(f"  Steps completed: {intro['step_count']}")
    print(f"  Current goal: {intro['current_goal']}")
    print(f"  Emotion: {intro['emotional_state']['emotion']}")
    print(f"  AtomSpace size: {intro['atomspace_size']}")
    print(f"  Kernel generation: {intro['kernel_generation']}")


def demo_cogkernel():
    """Demonstrate Daedalos Cognitive Kernel"""
    print_header("Daedalos Cognitive Kernel Demonstration")
    
    # Create and boot kernel
    kernel = CogKernel("Daedalos-1")
    print("[Booting Cognitive Kernel]")
    kernel.boot()
    
    # Show CogFS structure
    print("\n[CogFS Filesystem Structure]")
    print("  /")
    for item in kernel.cogfs.listdir("/"):
        print(f"  ├── {item}/")
        if item == "atomspace":
            for subitem in kernel.cogfs.listdir(f"/{item}"):
                print(f"  │   ├── {subitem}")
    
    # Create cognitive processes
    print("\n[Creating Cognitive Processes]")
    
    def inference_task(a, b):
        """A cognitive task that performs inference"""
        time.sleep(0.01)  # Simulate thinking
        return {"conclusion": a + b, "confidence": 0.9}
    
    def learning_task(data):
        """A cognitive task that learns from data"""
        time.sleep(0.01)
        return {"learned": len(data), "patterns": 3}
    
    proc1 = kernel.fork("inference", inference_task, 10, 20)
    proc2 = kernel.fork("learning", learning_task, [1, 2, 3, 4, 5])
    
    print(f"  Created: PID={proc1.pid} name='{proc1.name}' priority={proc1.priority.name}")
    print(f"  Created: PID={proc2.pid} name='{proc2.name}' priority={proc2.priority.name}")
    
    # Execute processes
    print("\n[Executing Cognitive Processes]")
    result1 = kernel.exec(proc1)
    result2 = kernel.exec(proc2)
    
    print(f"  {proc1.name} result: {result1}")
    print(f"  {proc2.name} result: {result2}")
    
    # PLN Inference
    print("\n[PLN Inference Syscall]")
    
    # Setup atoms for deduction
    A = ConceptNode("Socrates")
    B = ConceptNode("Human")
    C = ConceptNode("Mortal")
    
    kernel.atomspace.add(A)
    kernel.atomspace.add(B)
    kernel.atomspace.add(C)
    
    # Socrates is Human
    link1 = InheritanceLink(A, B, tv=TruthValue.simple(1.0, 0.99))
    kernel.atomspace.add(link1)
    
    # Human is Mortal
    link2 = InheritanceLink(B, C, tv=TruthValue.simple(1.0, 0.99))
    kernel.atomspace.add(link2)
    
    print(f"  Premise 1: Socrates -> Human (TV: 1.0, 0.99)")
    print(f"  Premise 2: Human -> Mortal (TV: 1.0, 0.99)")
    
    # Perform deduction
    conclusion_uuid = kernel.syscall("infer", "deduction", [link1.uuid, link2.uuid])
    
    if conclusion_uuid:
        conclusion = kernel.atomspace.get(conclusion_uuid)
        print(f"  Conclusion: Socrates -> Mortal (TV: {conclusion.tv.strength:.2f}, {conclusion.tv.confidence:.2f})")
    
    # Ontogenetic evolution
    print("\n[Ontogenetic Evolution Syscall]")
    kernel.syscall("evolve")
    print(f"  Evolved {kernel.stats['ontogenetic_generations']} generations")
    
    # Kernel status
    print("\n[Kernel Status]")
    status = kernel.status()
    print(f"  Name: {status['name']}")
    print(f"  Version: {status['version']}")
    print(f"  Uptime: {status['uptime']:.2f}s")
    print(f"  AtomSpace size: {status['atomspace_size']}")
    print(f"  Processes created: {status['stats']['processes_created']}")
    print(f"  Inferences performed: {status['stats']['inferences_performed']}")
    
    # Shutdown
    print("\n[Shutting Down Kernel]")
    kernel.shutdown()


def demo_integration():
    """Demonstrate full integration"""
    print_header("Full Integration Demonstration")
    
    print("This demonstration shows Ouroboros-1 running on Daedalos kernel,")
    print("with ontogenetic self-evolution and PLN inference.")
    print()
    
    # Boot kernel
    kernel = CogKernel("Daedalos-Integration")
    kernel.boot()
    
    # Create agent
    agent = OuroborosAgent("Ouroboros-Integration")
    agent.set_goal("demonstrate_integration")
    
    # Run agent thinking as kernel process
    print("[Running Agent on Kernel]")
    
    def agent_cycle():
        results = []
        for i in range(6):
            result = agent.think({"kernel_step": i})
            results.append(result["stream_1"]["phase"])
        return results
    
    proc = kernel.fork("agent_cognition", agent_cycle)
    phases = kernel.exec(proc)
    
    print(f"  Agent completed phases: {phases}")
    
    # Show combined state
    print("\n[Combined System State]")
    print(f"  Kernel AtomSpace: {kernel.atomspace.size()} atoms")
    print(f"  Agent AtomSpace: {agent.atomspace.size()} atoms")
    print(f"  Agent steps: {agent.step_count}")
    print(f"  Kernel processes: {kernel.stats['processes_created']}")
    
    kernel.shutdown()
    
    print("\n✅ Integration demonstration complete!")


def main():
    """Run all demonstrations"""
    print("\n" + "╔" + "═" * 58 + "╗")
    print("║" + " " * 15 + "PROJECT CHIMERA DEMONSTRATION" + " " * 14 + "║")
    print("║" + " " * 10 + "Cognitive Fusion for Agent-Zero & Daedalos" + " " * 7 + "║")
    print("╚" + "═" * 58 + "╝")
    
    try:
        demo_atomspace()
        demo_ontogenetic()
        demo_ouroboros()
        demo_cogkernel()
        demo_integration()
        
        print_header("Demonstration Complete")
        print("Project Chimera successfully demonstrated:")
        print("  ✅ AtomSpace hypergraph knowledge representation")
        print("  ✅ A000081 ontogenetic self-evolution")
        print("  ✅ Ouroboros-1 Agent-Zero cognitive cycles")
        print("  ✅ Daedalos Cognitive Kernel operations")
        print("  ✅ Full integration of all components")
        print()
        print("The system is ready for Agent-Zero and Daedalos deployment.")
        
    except Exception as e:
        print(f"\n❌ Error during demonstration: {e}")
        import traceback
        traceback.print_exc()
        return 1
    
    return 0


if __name__ == "__main__":
    sys.exit(main())
