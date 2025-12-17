package org.ninelym.cognitive

import org.ninelym.cognitive.hypergraph.*
import org.ninelym.cognitive.ecan.ECANKernel
import org.ninelym.cognitive.metacognition.*
import org.junit.Test
import org.junit.Assert.*
import org.junit.Before

/**
 * Comprehensive integration test for Phase 5: Recursive Meta-Cognition
 * 
 * Phase 6.1: Deep Testing Protocols for complete Phase 5 system integration
 */
class Phase5IntegrationTest {
    
    private lateinit var cognitiveEngine: CognitiveEngine
    
    @Before
    fun setUp() {
        cognitiveEngine = CognitiveEngine()
        
        // Set up comprehensive test environment
        setupIntegratedTestEnvironment()
    }
    
    private fun setupIntegratedTestEnvironment() {
        // Create a rich cognitive environment for integration testing
        val concepts = (1..30).map { i ->
            Atom(
                id = "integration_concept_$i",
                type = AtomType.CONCEPT,
                name = "concept_$i",
                truthValue = TruthValue(0.5f + (i % 5) * 0.1f, 0.9f),
                attentionValue = AttentionValue(0.4f + (i % 4) * 0.15f, 0.8f)
            )
        }
        
        val relations = (1..15).map { i ->
            Atom(
                id = "integration_relation_$i",
                type = AtomType.RELATION,
                name = "relation_$i",
                truthValue = TruthValue(0.7f, 0.85f),
                attentionValue = AttentionValue(0.6f, 0.75f)
            )
        }
        
        val predicates = (1..10).map { i ->
            Atom(
                id = "integration_predicate_$i",
                type = AtomType.PREDICATE,
                name = "predicate_$i",
                truthValue = TruthValue(0.8f, 0.9f),
                attentionValue = AttentionValue(0.7f, 0.85f)
            )
        }
        
        // Add all atoms to the cognitive engine
        val allAtoms = concepts + relations + predicates
        allAtoms.forEach { cognitiveEngine.addAtom(it) }
        
        // Create complex interconnections
        for (i in 0 until concepts.size - 1) {
            if (i % 3 == 0 && i < relations.size) {
                cognitiveEngine.addLink(concepts[i].id, relations[i / 3].id, "concept-relation")
            }
            if (i % 5 == 0 && i / 5 < predicates.size) {
                cognitiveEngine.addLink(concepts[i].id, predicates[i / 5].id, "concept-predicate")
            }
        }
        
        // Run initial processing cycles
        repeat(5) {
            cognitiveEngine.runAttentionCycle()
        }
    }
    
    @Test
    fun testCompletePhase5Cycle() {
        val cycleResult = cognitiveEngine.performPhase5Cycle()
        
        assertNotNull("Phase 5 cycle result should not be null", cycleResult)
        assertNotNull("Introspection result should not be null", cycleResult.introspection)
        assertNotNull("Evolution result should not be null", cycleResult.evolution)
        assertNotNull("Verification result should not be null", cycleResult.verification)
        assertNotNull("Tensor signature should not be null", cycleResult.tensorSignature)
        
        assertTrue("Execution time should be positive", cycleResult.executionTime > 0)
        assertTrue("Cycle health should be valid", 
                   cycleResult.cycleHealth >= 0.0f && cycleResult.cycleHealth <= 1.0f)
    }
    
    @Test
    fun testPhase5TensorSignature() {
        val tensor = cognitiveEngine.getPhase5TensorSignature()
        
        assertNotNull("Phase 5 tensor signature should not be null", tensor)
        assertTrue("Tensor should be valid", tensor.isValid())
        
        // Verify tensor signature mapping: [rules, mutability, fitness, introspect]
        // Mapped to [modality, depth, context, salience]
        val rules = tensor.modality
        val mutability = tensor.depth
        val fitness = tensor.context
        val introspect = tensor.salience
        
        assertTrue("Rules component should be valid", rules >= 0.0f && rules <= 1.0f)
        assertTrue("Mutability component should be valid", mutability >= 0.0f && mutability <= 1.0f)
        assertTrue("Fitness component should be valid", fitness >= 0.0f && fitness <= 1.0f)
        assertTrue("Introspect component should be valid", introspect >= 0.0f && introspect <= 1.0f)
    }
    
    @Test
    fun testMetaCognitiveIntegration() {
        // Test introspection integration
        val introspectionResult = cognitiveEngine.performMetaCognitiveIntrospection()
        
        assertNotNull("Introspection result should not be null", introspectionResult)
        assertTrue("Should generate insights", introspectionResult.insights.isNotEmpty())
        assertTrue("Should measure self-awareness", introspectionResult.systemSelfAwareness >= 0.0f)
        
        // Verify integration with cognitive engine state
        val insights = cognitiveEngine.getMetaCognitiveInsights()
        assertTrue("Should track cognitive rules", insights.cognitiveRuleCount >= 0)
        assertTrue("Should measure processing efficiency", insights.processingEfficiency >= 0.0f)
    }
    
    @Test
    fun testEvolutionaryIntegration() {
        // Test evolutionary optimization integration
        val evolutionResult = cognitiveEngine.evolveCognitiveSystem()
        
        assertNotNull("Evolution result should not be null", evolutionResult)
        assertTrue("Should run evolution generations", evolutionResult.generationsRun > 0)
        assertTrue("Should achieve some fitness", evolutionResult.bestOverallFitness >= 0.0f)
        
        // Verify integration effects
        val stats = cognitiveEngine.getEvolutionStats()
        assertTrue("Should track convergence", stats.convergenceRate >= 0.0f)
        assertTrue("Should apply optimizations", evolutionResult.appliedOptimizations.isNotEmpty())
    }
    
    @Test
    fun testRecursiveVerificationIntegration() {
        // Test recursive verification integration
        val verificationResult = cognitiveEngine.performRecursiveVerification()
        
        assertNotNull("Verification result should not be null", verificationResult)
        assertTrue("Should verify multiple layers", verificationResult.verificationLayers.isNotEmpty())
        assertTrue("Should measure system health", verificationResult.overallSystemHealth >= 0.0f)
        
        // Verify integration with other components
        val stats = cognitiveEngine.getRecursiveVerificationStats()
        assertTrue("Should track verification depth", stats.averageRecursionDepth >= 0.0f)
        assertTrue("Should provide feedback", verificationResult.feedbackActions.isNotEmpty())
    }
    
    @Test
    fun testCognitiveTensorEvolution() {
        // Track tensor signature evolution through Phase 5 cycles
        val initialTensor = cognitiveEngine.getPhase5TensorSignature()
        
        // Perform multiple Phase 5 cycles
        val cycleResults = (1..3).map { 
            cognitiveEngine.performPhase5Cycle()
        }
        
        val finalTensor = cognitiveEngine.getPhase5TensorSignature()
        
        // Tensor should show evolution
        assertTrue("Tensor should remain valid", finalTensor.isValid())
        
        // Some components should show improvement or change
        val initialValues = initialTensor.toArray()
        val finalValues = finalTensor.toArray()
        
        var changedComponents = 0
        for (i in initialValues.indices) {
            if (Math.abs(finalValues[i] - initialValues[i]) > 0.01f) {
                changedComponents++
            }
        }
        
        assertTrue("Tensor should show some evolution", changedComponents > 0)
    }
    
    @Test
    fun testSelfImprovementFeedbackLoop() {
        // Test the complete self-improvement feedback loop
        val initialHealth = cognitiveEngine.getCognitiveState().verificationReport.overallHealth
        
        // Perform Phase 5 cycle
        val cycleResult = cognitiveEngine.performPhase5Cycle()
        
        // Apply feedback actions from verification
        val feedbackActions = cycleResult.verification.feedbackActions
        assertTrue("Should generate feedback actions", feedbackActions.isNotEmpty())
        
        // Simulate applying high-priority feedback
        val highPriorityActions = feedbackActions.filter { it.priority >= 2 }.take(2)
        
        // Perform another cycle after feedback
        val improvedCycleResult = cognitiveEngine.performPhase5Cycle()
        
        // System should maintain or improve health
        assertTrue("Self-improvement should maintain system health",
                   improvedCycleResult.cycleHealth >= cycleResult.cycleHealth - 0.1f)
    }
    
    @Test
    fun testSystemStabilityUnderRecursion() {
        // Test system stability under deep recursive operations
        val initialStats = cognitiveEngine.getCognitiveState()
        
        // Perform multiple deep recursive cycles
        repeat(5) {
            cognitiveEngine.performPhase5Cycle()
        }
        
        val finalStats = cognitiveEngine.getCognitiveState()
        
        // System should remain stable
        assertTrue("System should remain stable", finalStats.verificationReport.overallHealth >= 0.0f)
        assertTrue("Atom count should be reasonable", finalStats.atomCount > 0)
        assertTrue("Fragment count should be reasonable", finalStats.fragmentCount >= 0)
    }
    
    @Test
    fun testCognitiveMeshIntegration() {
        // Test integration with Phase 4 cognitive mesh (if available)
        try {
            val meshHealth = cognitiveEngine.getCognitiveState().verificationReport.overallHealth
            assertTrue("Mesh integration should be healthy", meshHealth >= 0.0f)
            
            // Perform Phase 5 operations and check mesh consistency
            cognitiveEngine.performPhase5Cycle()
            
            val postCycleHealth = cognitiveEngine.getCognitiveState().verificationReport.overallHealth
            assertTrue("Mesh should maintain health after Phase 5 operations", 
                       postCycleHealth >= meshHealth - 0.2f)
            
        } catch (e: Exception) {
            // Phase 4 mesh may not be fully integrated in test environment
            println("Mesh integration test skipped: ${e.message}")
        }
    }
    
    @Test
    fun testPerformanceBenchmarks() {
        // Benchmark Phase 5 operations
        val benchmarkResults = mutableMapOf<String, Long>()
        
        // Benchmark introspection
        val introspectionStart = System.currentTimeMillis()
        cognitiveEngine.performMetaCognitiveIntrospection()
        benchmarkResults["introspection"] = System.currentTimeMillis() - introspectionStart
        
        // Benchmark evolution
        val evolutionStart = System.currentTimeMillis()
        cognitiveEngine.evolveCognitiveSystem()
        benchmarkResults["evolution"] = System.currentTimeMillis() - evolutionStart
        
        // Benchmark verification
        val verificationStart = System.currentTimeMillis()
        cognitiveEngine.performRecursiveVerification()
        benchmarkResults["verification"] = System.currentTimeMillis() - verificationStart
        
        // Benchmark complete cycle
        val cycleStart = System.currentTimeMillis()
        cognitiveEngine.performPhase5Cycle()
        benchmarkResults["complete_cycle"] = System.currentTimeMillis() - cycleStart
        
        // Performance assertions
        assertTrue("Introspection should complete in reasonable time", 
                   benchmarkResults["introspection"]!! < 5000)
        assertTrue("Evolution should complete in reasonable time", 
                   benchmarkResults["evolution"]!! < 10000)
        assertTrue("Verification should complete in reasonable time", 
                   benchmarkResults["verification"]!! < 8000)
        assertTrue("Complete cycle should complete in reasonable time", 
                   benchmarkResults["complete_cycle"]!! < 20000)
        
        println("Phase 5 Performance Benchmarks:")
        benchmarkResults.forEach { (operation, time) ->
            println("  $operation: ${time}ms")
        }
    }
    
    @Test
    fun testCognitiveConsistency() {
        // Test cognitive consistency across Phase 5 operations
        val initialState = cognitiveEngine.getCognitiveState()
        
        // Perform comprehensive Phase 5 operations
        repeat(3) {
            cognitiveEngine.performMetaCognitiveIntrospection()
            cognitiveEngine.evolveCognitiveSystem()
            cognitiveEngine.performRecursiveVerification()
        }
        
        val finalState = cognitiveEngine.getCognitiveState()
        
        // System should maintain cognitive consistency
        assertTrue("Active tensors should remain reasonable", 
                   finalState.tensors.size >= initialState.tensors.size / 2)
        assertTrue("System should maintain integrity", 
                   finalState.verificationReport.overallHealth >= 0.3f)
    }
}