"""
Project Chimera - Comprehensive Test Suite

This module provides tests for all Chimera components:
- AtomSpace hypergraph operations
- Ontogenetic-AtomSpace bridge
- Ouroboros-1 Agent-Zero
- Cognitive Kernel (Daedalos)
"""

import pytest
import time
import sys
import os

# Add parent directory to path for imports
sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from atomspace.atomspace import (
    AtomSpace, Node, Link,
    ConceptNode, PredicateNode, SchemaNode, VariableNode,
    InheritanceLink, EvaluationLink, SimilarityLink,
    TruthValue, AttentionValue
)

from bridge.ontogenetic_atomspace_bridge import (
    A000081Generator, RootedTree, TreeEnumerator,
    BSeriesCoefficient, OntogeneticKernel, OntogeneticAtomSpaceBridge
)

from agents.ouroboros import (
    OuroborosAgent, PersonalityTensor, EmotionalState,
    RelevanceRealizationEngine, CognitiveCycle, CognitivePhase
)

from kernel.cogkernel import (
    CogKernel, CogProc, CogProcState, CogProcPriority,
    CogScheduler, CogFS, PLNSyscall
)


# ============================================================
# AtomSpace Tests
# ============================================================

class TestAtomSpace:
    """Test suite for AtomSpace operations"""
    
    def test_create_atomspace(self):
        """Test AtomSpace creation"""
        atomspace = AtomSpace("test")
        assert atomspace.name == "test"
        assert atomspace.size() == 0
    
    def test_add_concept_node(self):
        """Test adding ConceptNode"""
        atomspace = AtomSpace("test")
        node = ConceptNode("cat")
        atomspace.add(node)
        
        assert atomspace.size() == 1
        retrieved = atomspace.get_node("ConceptNode", "cat")
        assert retrieved is not None
        assert retrieved.name == "cat"
    
    def test_add_inheritance_link(self):
        """Test adding InheritanceLink"""
        atomspace = AtomSpace("test")
        
        cat = ConceptNode("cat")
        animal = ConceptNode("animal")
        atomspace.add(cat)
        atomspace.add(animal)
        
        link = InheritanceLink(cat, animal)
        atomspace.add(link)
        
        assert atomspace.size() == 3
        assert link.arity == 2
        assert link.outgoing[0] == cat
        assert link.outgoing[1] == animal
    
    def test_truth_value(self):
        """Test TruthValue operations"""
        tv1 = TruthValue.simple(0.8, 0.9)
        tv2 = TruthValue.simple(0.6, 0.7)
        
        merged = tv1.merge(tv2)
        assert 0.6 <= merged.strength <= 0.8
        assert merged.confidence > 0
    
    def test_attention_value(self):
        """Test AttentionValue operations"""
        av = AttentionValue(sti=50, lti=10)
        
        av.stimulate(20)
        assert av.sti == 70
        
        av.decay(0.1)
        assert av.sti == 63  # 70 * 0.9
    
    def test_atomspace_query(self):
        """Test AtomSpace queries"""
        atomspace = AtomSpace("test")
        
        # Add multiple nodes
        for name in ["cat", "dog", "bird"]:
            atomspace.add(ConceptNode(name))
        
        concepts = atomspace.get_atoms_by_type("ConceptNode")
        assert len(concepts) == 3
    
    def test_attentional_focus(self):
        """Test attentional focus retrieval"""
        atomspace = AtomSpace("test")
        
        # Add nodes with different attention
        high_attention = ConceptNode("important", av=AttentionValue(sti=100))
        low_attention = ConceptNode("unimportant", av=AttentionValue(sti=0.1))
        
        atomspace.add(high_attention)
        atomspace.add(low_attention)
        
        focus = atomspace.get_attentional_focus(threshold=50)
        assert len(focus) == 1
        assert focus[0].name == "important"


# ============================================================
# Ontogenetic Bridge Tests
# ============================================================

class TestOntogeneticBridge:
    """Test suite for Ontogenetic-AtomSpace bridge"""
    
    def test_a000081_sequence(self):
        """Test A000081 sequence generation"""
        gen = A000081Generator(10)
        
        # Known values: 1, 1, 2, 4, 9, 20, 48, 115, 286, 719
        assert gen[1] == 1
        assert gen[2] == 1
        assert gen[3] == 2
        assert gen[4] == 4
        assert gen[5] == 9
    
    def test_rooted_tree_creation(self):
        """Test RootedTree creation and operations"""
        # Create a simple tree: root with two children
        child1 = RootedTree(label="child1")
        child2 = RootedTree(label="child2")
        root = RootedTree(children=[child1, child2], label="root")
        
        order = root.compute_order()
        assert order == 3
    
    def test_tree_enumeration(self):
        """Test tree enumeration matches A000081"""
        gen = A000081Generator(6)
        enumerator = TreeEnumerator(gen)
        
        for order in range(1, 6):
            trees = enumerator.enumerate(order)
            assert len(trees) == gen[order], f"Order {order}: expected {gen[order]}, got {len(trees)}"
    
    def test_ontogenetic_kernel(self):
        """Test OntogeneticKernel creation and evolution"""
        tree = RootedTree(label="test")
        coeff = BSeriesCoefficient(tree, 0.5)
        
        kernel = OntogeneticKernel(coefficients={"test": coeff})
        
        # Test self-generation
        offspring = kernel.self_generate()
        assert offspring.generation == kernel.generation + 1
    
    def test_bridge_initialization(self):
        """Test OntogeneticAtomSpaceBridge initialization"""
        atomspace = AtomSpace("test")
        bridge = OntogeneticAtomSpaceBridge(atomspace, max_order=4)
        
        # Should have populated AtomSpace with tree ontology
        assert atomspace.size() > 0
        
        # Should have root concept
        root = atomspace.get_node("ConceptNode", "RootedTree")
        assert root is not None
    
    def test_parameter_derivation(self):
        """Test A000081-based parameter derivation"""
        atomspace = AtomSpace("test")
        bridge = OntogeneticAtomSpaceBridge(atomspace, max_order=5)
        
        params = bridge.derive_parameters(5)
        
        assert "reservoir_size" in params
        assert "num_membranes" in params
        assert "growth_rate" in params
        assert params["num_membranes"] == 9  # A000081(5) = 9


# ============================================================
# Ouroboros Agent Tests
# ============================================================

class TestOuroborosAgent:
    """Test suite for Ouroboros-1 Agent-Zero"""
    
    def test_agent_creation(self):
        """Test agent creation"""
        agent = OuroborosAgent("test-agent")
        
        assert agent.name == "test-agent"
        assert agent.step_count == 0
        assert agent.atomspace.size() > 0  # Self-model initialized
    
    def test_personality_tensor(self):
        """Test PersonalityTensor"""
        personality = PersonalityTensor()
        
        # Test mutable trait evolution
        personality.evolve({"curiosity": 0.1})
        assert personality.curiosity == 1.0  # Capped at 1.0
        
        # Test immutable ethical constraints
        with pytest.raises(AttributeError):
            personality.no_harm_intent = 0.0
    
    def test_emotional_state(self):
        """Test EmotionalState"""
        emotion = EmotionalState()
        
        emotion.update("joy", 0.8, 5)
        assert emotion.primary_emotion == "joy"
        assert emotion.valence > 0
        
        emotion.decay(0.5)
        assert emotion.intensity < 0.8
    
    def test_cognitive_cycle(self):
        """Test 12-step cognitive cycle"""
        agent = OuroborosAgent("test")
        
        # Run full cycle
        for i in range(12):
            result = agent.think({"input": f"test_{i}"})
            assert "stream_1" in result
            assert "stream_2" in result
            assert "stream_3" in result
        
        assert agent.step_count == 12
    
    def test_goal_setting(self):
        """Test goal setting and AtomSpace integration"""
        agent = OuroborosAgent("test")
        agent.set_goal("understand_self")
        
        assert agent.current_goal == "understand_self"
        
        # Goal should be in AtomSpace
        goal_node = agent.atomspace.get_node("ConceptNode", "goal_understand_self")
        assert goal_node is not None
    
    def test_introspection(self):
        """Test agent introspection"""
        agent = OuroborosAgent("test")
        agent.set_goal("test_goal")
        agent.think({"input": "test"})
        
        introspection = agent.introspect()
        
        assert introspection["name"] == "test"
        assert introspection["step_count"] == 1
        assert introspection["current_goal"] == "test_goal"
        assert "personality" in introspection
        assert "emotional_state" in introspection
    
    def test_episodic_memory(self):
        """Test episodic memory recording"""
        agent = OuroborosAgent("test")
        
        for i in range(5):
            agent.think({"input": f"memory_test_{i}"})
        
        assert len(agent.episodic_memory) == 5
        assert agent.episodic_memory[0]["input"]["input"] == "memory_test_0"


# ============================================================
# Cognitive Kernel Tests
# ============================================================

class TestCogKernel:
    """Test suite for Cognitive Kernel (Daedalos)"""
    
    def test_kernel_creation(self):
        """Test kernel creation"""
        kernel = CogKernel("test-kernel")
        
        assert kernel.name == "test-kernel"
        assert kernel.atomspace.size() > 0
    
    def test_kernel_boot(self):
        """Test kernel boot sequence"""
        kernel = CogKernel("test")
        kernel.boot()
        
        assert kernel._running == True
        
        kernel.shutdown()
        assert kernel._running == False
    
    def test_process_creation(self):
        """Test CogProc creation"""
        kernel = CogKernel("test")
        kernel.boot()
        
        def task(x):
            return x * 2
        
        proc = kernel.fork("test_proc", task, 21)
        
        assert proc.pid == 1
        assert proc.name == "test_proc"
        assert proc.state == CogProcState.READY
        
        kernel.shutdown()
    
    def test_process_execution(self):
        """Test CogProc execution"""
        kernel = CogKernel("test")
        kernel.boot()
        
        def compute(a, b):
            return a + b
        
        proc = kernel.fork("compute", compute, 10, 20)
        result = kernel.exec(proc)
        
        assert result == 30
        assert proc.state == CogProcState.TERMINATED
        
        kernel.shutdown()
    
    def test_cogfs_operations(self):
        """Test CogFS filesystem operations"""
        kernel = CogKernel("test")
        kernel.boot()
        
        # Test listdir
        root_contents = kernel.cogfs.listdir("/")
        assert "atomspace" in root_contents
        assert "proc" in root_contents
        assert "kernel" in root_contents
        
        # Test atomspace listing
        as_contents = kernel.cogfs.listdir("/atomspace")
        assert "nodes" in as_contents
        assert "query" in as_contents
        
        kernel.shutdown()
    
    def test_pln_syscall(self):
        """Test PLN inference syscall"""
        kernel = CogKernel("test")
        kernel.boot()
        
        # Add atoms for deduction test
        A = ConceptNode("A")
        B = ConceptNode("B")
        C = ConceptNode("C")
        
        kernel.atomspace.add(A)
        kernel.atomspace.add(B)
        kernel.atomspace.add(C)
        
        # A -> B
        link1 = InheritanceLink(A, B, tv=TruthValue.simple(0.9, 0.8))
        kernel.atomspace.add(link1)
        
        # B -> C
        link2 = InheritanceLink(B, C, tv=TruthValue.simple(0.8, 0.7))
        kernel.atomspace.add(link2)
        
        # Perform deduction: A -> C
        result = kernel.syscall("infer", "deduction", [link1.uuid, link2.uuid])
        
        assert result is not None
        assert kernel.stats["inferences_performed"] == 1
        
        kernel.shutdown()
    
    def test_attention_syscall(self):
        """Test attention stimulation syscall"""
        kernel = CogKernel("test")
        kernel.boot()
        
        node = ConceptNode("test_node", av=AttentionValue(sti=10))
        kernel.atomspace.add(node)
        
        kernel.syscall("attend", node.uuid, 50)
        
        assert node.av.sti == 60
        assert kernel.stats["attention_cycles"] == 1
        
        kernel.shutdown()
    
    def test_scheduler_priority(self):
        """Test attention-based scheduling priority"""
        scheduler = CogScheduler()
        
        # Create processes with different attention
        high_attention = CogProc(
            pid=1, name="high",
            attention=AttentionValue(sti=100),
            priority=CogProcPriority.NORMAL
        )
        low_attention = CogProc(
            pid=2, name="low",
            attention=AttentionValue(sti=10),
            priority=CogProcPriority.NORMAL
        )
        
        scheduler.add_process(low_attention)
        scheduler.add_process(high_attention)
        
        # High attention should be scheduled first
        next_proc = scheduler.schedule()
        assert next_proc.name == "high"
    
    def test_kernel_status(self):
        """Test kernel status reporting"""
        kernel = CogKernel("test")
        kernel.boot()
        
        status = kernel.status()
        
        assert status["name"] == "test"
        assert status["running"] == True
        assert "uptime" in status
        assert "atomspace_size" in status
        assert "stats" in status
        
        kernel.shutdown()


# ============================================================
# Integration Tests
# ============================================================

class TestIntegration:
    """Integration tests for full Chimera stack"""
    
    def test_agent_kernel_integration(self):
        """Test Ouroboros agent running on CogKernel"""
        kernel = CogKernel("integration-test")
        kernel.boot()
        
        # Create agent that uses kernel's AtomSpace
        agent = OuroborosAgent("kernel-agent")
        
        # Fork agent thinking as a kernel process
        def agent_think_task():
            return agent.think({"input": "kernel_integration"})
        
        proc = kernel.fork("agent_think", agent_think_task)
        result = kernel.exec(proc)
        
        assert result is not None
        assert "stream_1" in result
        
        kernel.shutdown()
    
    def test_ontogenetic_kernel_evolution(self):
        """Test ontogenetic evolution through kernel syscall"""
        kernel = CogKernel("evolution-test")
        kernel.boot()
        
        initial_generations = kernel.stats["ontogenetic_generations"]
        
        kernel.syscall("evolve")
        
        assert kernel.stats["ontogenetic_generations"] > initial_generations
        
        kernel.shutdown()
    
    def test_full_cognitive_pipeline(self):
        """Test complete cognitive pipeline"""
        # Create kernel
        kernel = CogKernel("pipeline-test")
        kernel.boot()
        
        # Create agent
        agent = OuroborosAgent("pipeline-agent")
        agent.set_goal("complete_pipeline")
        
        # Run 12-step cycle
        for i in range(12):
            result = agent.think({"step": i})
        
        # Verify agent state
        introspection = agent.introspect()
        assert introspection["step_count"] == 12
        
        # Verify kernel state
        status = kernel.status()
        assert status["running"] == True
        
        kernel.shutdown()


# ============================================================
# Performance Tests
# ============================================================

class TestPerformance:
    """Performance benchmarks for Chimera"""
    
    def test_atomspace_scaling(self):
        """Test AtomSpace performance with many atoms"""
        atomspace = AtomSpace("scale-test")
        
        start = time.time()
        
        # Add 1000 nodes
        for i in range(1000):
            atomspace.add(ConceptNode(f"node_{i}"))
        
        elapsed = time.time() - start
        
        assert atomspace.size() == 1000
        assert elapsed < 1.0  # Should complete in under 1 second
    
    def test_cognitive_cycle_performance(self):
        """Test cognitive cycle performance"""
        agent = OuroborosAgent("perf-test")
        
        start = time.time()
        
        # Run 100 cognitive cycles
        for i in range(100):
            agent.think({"input": i})
        
        elapsed = time.time() - start
        
        assert agent.step_count == 100
        assert elapsed < 5.0  # Should complete in under 5 seconds


# ============================================================
# Main Entry Point
# ============================================================

if __name__ == "__main__":
    pytest.main([__file__, "-v", "--tb=short"])
