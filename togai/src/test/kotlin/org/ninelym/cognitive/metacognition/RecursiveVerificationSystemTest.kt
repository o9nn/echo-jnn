package org.ninelym.cognitive.metacognition

import org.ninelym.cognitive.hypergraph.*
import org.ninelym.cognitive.ecan.ECANKernel
import org.ninelym.cognitive.CognitiveTensor
import org.junit.Test
import org.junit.Assert.*
import org.junit.Before

/**
 * Comprehensive test suite for RecursiveVerificationSystem
 * 
 * Phase 6.1: Deep Testing Protocols for recursive verification
 */
class RecursiveVerificationSystemTest {
    
    private lateinit var hypergraph: Hypergraph
    private lateinit var ecanKernel: ECANKernel
    private lateinit var metaSystem: MetaCognitivePathwaySystem
    private lateinit var optimizer: EvolutionaryOptimizer
    private lateinit var verificationSystem: RecursiveVerificationSystem
    
    @Before
    fun setUp() {
        hypergraph = Hypergraph()
        ecanKernel = ECANKernel(hypergraph)
        metaSystem = MetaCognitivePathwaySystem(hypergraph, ecanKernel)
        optimizer = EvolutionaryOptimizer(hypergraph, ecanKernel, metaSystem)
        verificationSystem = RecursiveVerificationSystem(hypergraph, ecanKernel, metaSystem, optimizer)
        
        // Set up test verification environment
        setupTestVerificationEnvironment()
    }
    
    private fun setupTestVerificationEnvironment() {
        // Create a cognitive system with verifiable properties
        val verifiableAtoms = (1..25).map { i ->
            Atom(
                id = "verify_atom_$i",
                type = AtomType.values()[i % AtomType.values().size],
                name = "verifiable_element_$i",
                truthValue = TruthValue(0.6f + (i % 5) * 0.08f, 0.9f),
                attentionValue = AttentionValue(0.5f + (i % 4) * 0.1f, 0.8f)
            )
        }
        
        verifiableAtoms.forEach { hypergraph.addAtom(it) }
        
        // Create predictable link patterns for verification
        for (i in 0 until verifiableAtoms.size - 1) {
            if (i % 3 == 0) {
                hypergraph.addLink(verifiableAtoms[i].id, verifiableAtoms[i + 1].id, "verification_link")
            }
        }
        
        // Establish baseline cognitive state
        repeat(3) {
            ecanKernel.runAttentionCycle()
            metaSystem.performIntrospection()
        }
    }
    
    @Test
    fun testBasicRecursiveVerification() {
        val result = verificationSystem.performRecursiveVerification()
        
        assertNotNull("Verification result should not be null", result)
        assertTrue("Should verify multiple layers", result.verificationLayers.isNotEmpty())
        assertTrue("Execution time should be positive", result.executionTimeMs > 0)
        assertTrue("Overall system health should be measurable", 
                   result.overallSystemHealth >= 0.0f && result.overallSystemHealth <= 1.0f)
    }
    
    @Test
    fun testVerificationLayers() {
        val result = verificationSystem.performRecursiveVerification()
        
        // Check verification layer structure
        assertTrue("Should have at least one verification layer", result.verificationLayers.isNotEmpty())
        
        for (layer in result.verificationLayers) {
            assertTrue("Layer should have non-negative level", layer.level >= 0)
            assertTrue("Layer should have valid health", layer.health >= 0.0f && layer.health <= 1.0f)
            assertNotNull("Layer should have description", layer.description)
            assertTrue("Layer should have status", layer.status.isNotEmpty())
        }
        
        // Verify layer hierarchy
        val sortedLayers = result.verificationLayers.sortedBy { it.level }
        for (i in 1 until sortedLayers.size) {
            assertTrue("Layer levels should be hierarchical", 
                       sortedLayers[i].level > sortedLayers[i-1].level)
        }
    }
    
    @Test
    fun testVerificationStatus() {
        val result = verificationSystem.performRecursiveVerification()
        
        // Check that verification status is meaningful
        assertTrue("Verification status should be valid", 
                   result.verificationStatus in listOf(
                       VerificationStatus.COMPLETE,
                       VerificationStatus.NEEDS_RECURSION,
                       VerificationStatus.FAILED,
                       VerificationStatus.PARTIAL
                   ))
        
        // Status should be consistent with layers
        if (result.verificationStatus == VerificationStatus.COMPLETE) {
            assertTrue("Complete verification should have healthy layers",
                       result.verificationLayers.all { it.health > 0.7f })
        }
    }
    
    @Test
    fun testFeedbackActions() {
        val result = verificationSystem.performRecursiveVerification()
        
        // Verify feedback action generation
        for (action in result.feedbackActions) {
            assertTrue("Action should have positive impact", action.impact > 0.0f)
            assertNotNull("Action should have type", action.type)
            assertTrue("Action should have description", action.description.isNotEmpty())
            assertTrue("Action should have priority", action.priority >= 0)
        }
        
        // Actions should be prioritized
        val sortedActions = result.feedbackActions.sortedByDescending { it.priority }
        for (i in 1 until sortedActions.size) {
            assertTrue("Actions should be sorted by priority",
                       sortedActions[i].priority <= sortedActions[i-1].priority)
        }
    }
    
    @Test
    fun testRecursiveDepth() {
        val result = verificationSystem.performRecursiveVerification()
        
        // Verify recursive verification depth
        assertTrue("Should perform recursive verification", result.verificationLayers.size >= 2)
        
        val maxLevel = result.verificationLayers.maxOfOrNull { it.level } ?: 0
        assertTrue("Should reach meaningful recursion depth", maxLevel >= 2)
        
        // Each level should verify the level below it
        val layersByLevel = result.verificationLayers.groupBy { it.level }
        for (level in 1..maxLevel) {
            assertTrue("Each level should verify lower levels", layersByLevel.containsKey(level))
        }
    }
    
    @Test
    fun testMetaVerification() {
        val result = verificationSystem.performRecursiveVerification()
        
        // Look for meta-verification layer (verification of verification)
        val metaLayers = result.verificationLayers.filter { 
            it.description.contains("meta", ignoreCase = true) || it.level >= 3 
        }
        
        if (metaLayers.isNotEmpty()) {
            assertTrue("Meta-verification should have high-level perspective", 
                       metaLayers.any { it.level >= 2 })
        }
    }
    
    @Test
    fun testSelfImprovementLoop() {
        // Perform initial verification
        val initialResult = verificationSystem.performRecursiveVerification()
        val initialHealth = initialResult.overallSystemHealth
        
        // Apply feedback actions if available
        if (initialResult.feedbackActions.isNotEmpty()) {
            // Simulate applying feedback actions
            val highPriorityActions = initialResult.feedbackActions
                .filter { it.priority >= 2 }
                .take(3)
            
            // Perform verification again after "applying" improvements
            val improvedResult = verificationSystem.performRecursiveVerification()
            
            // System health should maintain or improve
            assertTrue("Self-improvement should not degrade system",
                       improvedResult.overallSystemHealth >= initialHealth - 0.1f)
        }
    }
    
    @Test
    fun testVerificationConsistency() {
        // Perform multiple verification runs
        val results = (1..3).map { verificationSystem.performRecursiveVerification() }
        
        // Results should be reasonably consistent
        val healthValues = results.map { it.overallSystemHealth }
        val healthRange = healthValues.maxOrNull()!! - healthValues.minOrNull()!!
        
        assertTrue("Verification results should be consistent", healthRange < 0.3f)
        
        // Layer counts should be similar
        val layerCounts = results.map { it.verificationLayers.size }
        val layerRange = layerCounts.maxOrNull()!! - layerCounts.minOrNull()!!
        
        assertTrue("Layer counts should be consistent", layerRange <= 2)
    }
    
    @Test
    fun testVerificationUnderStress() {
        // Create complex verification scenario
        val stressAtoms = (1..150).map { i ->
            Atom(
                id = "stress_verify_$i",
                type = AtomType.values()[i % AtomType.values().size],
                name = "stress_element_$i",
                truthValue = TruthValue(kotlin.random.Random.nextFloat(), kotlin.random.Random.nextFloat()),
                attentionValue = AttentionValue(kotlin.random.Random.nextFloat(), kotlin.random.Random.nextFloat())
            )
        }
        
        stressAtoms.forEach { hypergraph.addAtom(it) }
        
        val startTime = System.currentTimeMillis()
        val result = verificationSystem.performRecursiveVerification()
        val endTime = System.currentTimeMillis()
        
        assertNotNull("Should handle stress verification", result)
        assertTrue("Should complete verification in reasonable time", endTime - startTime < 15000)
        assertTrue("Should maintain verification quality under stress", 
                   result.overallSystemHealth >= 0.0f)
    }
    
    @Test
    fun testVerificationStatistics() {
        val result = verificationSystem.performRecursiveVerification()
        val stats = verificationSystem.getRecursiveVerificationStats()
        
        assertNotNull("Verification statistics should be available", stats)
        assertTrue("Should track verification depth", stats.averageRecursionDepth >= 0.0f)
        assertTrue("Should track verification health", stats.averageSystemHealth >= 0.0f)
        assertTrue("Should track feedback actions", stats.totalFeedbackActions >= 0)
    }
    
    @Test
    fun testVerificationIntegration() {
        // Test integration with other Phase 5 components
        
        // First perform introspection and evolution
        metaSystem.performIntrospection()
        optimizer.evolveSystem()
        
        // Then verify the integrated state
        val result = verificationSystem.performRecursiveVerification()
        
        // Verification should account for the full Phase 5 state
        assertTrue("Should verify introspection results", 
                   result.verificationLayers.any { it.description.contains("introspection", ignoreCase = true) })
        assertTrue("Should verify evolution results",
                   result.verificationLayers.any { it.description.contains("evolution", ignoreCase = true) })
    }
    
    @Test
    fun testVerificationRecovery() {
        // Test system recovery from verification failures
        
        // Create a problematic state
        val problematicAtom = Atom(
            id = "problematic_atom",
            type = AtomType.CONCEPT,
            name = "problematic_element",
            truthValue = TruthValue(-0.5f, 0.1f), // Invalid truth value
            attentionValue = AttentionValue(2.0f, -0.5f) // Invalid attention values
        )
        
        hypergraph.addAtom(problematicAtom)
        
        val result = verificationSystem.performRecursiveVerification()
        
        // System should detect and suggest recovery from problems
        assertTrue("Should detect system issues", 
                   result.verificationStatus != VerificationStatus.COMPLETE)
        assertTrue("Should generate corrective feedback", 
                   result.feedbackActions.any { it.type.contains("CORRECTION", ignoreCase = true) })
    }
}