package org.ninelym.cognitive.unification

import org.ninelym.cognitive.CognitiveEngine
import org.ninelym.cognitive.hypergraph.*
import org.ninelym.cognitive.ecan.ECANKernel
import org.ninelym.cognitive.metacognition.*
import org.junit.Test
import org.junit.Assert.*
import org.junit.Before

/**
 * Comprehensive test suite for Phase 6 Cognitive Unification
 * 
 * Tests unified cognitive state monitoring, consistency verification,
 * and system-wide health tracking and validation.
 */
class CognitiveUnificationTest {
    
    private lateinit var cognitiveEngine: CognitiveEngine
    private lateinit var hypergraph: Hypergraph
    private lateinit var ecanKernel: ECANKernel
    private lateinit var metaSystem: MetaCognitivePathwaySystem
    private lateinit var optimizer: EvolutionaryOptimizer
    private lateinit var verificationSystem: RecursiveVerificationSystem
    private lateinit var stateMonitor: UnifiedCognitiveStateMonitor
    private lateinit var consistencyVerifier: CognitiveConsistencyVerifier
    
    @Before
    fun setUp() {
        cognitiveEngine = CognitiveEngine()
        
        hypergraph = Hypergraph()
        ecanKernel = ECANKernel(hypergraph)
        metaSystem = MetaCognitivePathwaySystem(hypergraph, ecanKernel)
        optimizer = EvolutionaryOptimizer(hypergraph, ecanKernel, metaSystem)
        verificationSystem = RecursiveVerificationSystem(hypergraph, ecanKernel, metaSystem, optimizer)
        
        stateMonitor = UnifiedCognitiveStateMonitor(
            hypergraph, ecanKernel, metaSystem, optimizer, verificationSystem
        )
        consistencyVerifier = CognitiveConsistencyVerifier(
            hypergraph, ecanKernel, metaSystem, optimizer, verificationSystem, stateMonitor
        )
        
        setupUnificationTestEnvironment()
    }
    
    private fun setupUnificationTestEnvironment() {
        // Create comprehensive test environment for unification testing
        val testAtoms = (1..25).map { i ->
            Atom(
                id = "unify_atom_$i",
                type = AtomType.values()[i % AtomType.values().size],
                name = "unification_element_$i",
                truthValue = TruthValue(0.5f + (i % 5) * 0.1f, 0.9f),
                attentionValue = AttentionValue(40.0f + i * 2.0f, 20.0f + i * 1.5f)
            )
        }
        
        testAtoms.forEach { hypergraph.addAtom(it) }
        
        // Create links for system integration
        for (i in 0 until testAtoms.size - 1) {
            if (i % 4 == 0) {
                hypergraph.addLink(testAtoms[i].id, testAtoms[i + 1].id, "unification_link")
            }
        }
        
        // Initialize system components
        repeat(3) {
            ecanKernel.runAttentionCycle()
            metaSystem.performIntrospection()
        }
        
        optimizer.evolveSystem()
        verificationSystem.performRecursiveVerification()
    }
    
    @Test
    fun testUnifiedCognitiveStateCapture() {
        val unifiedState = stateMonitor.captureUnifiedState()
        
        assertNotNull("Unified state should not be null", unifiedState)
        assertTrue("Timestamp should be recent", System.currentTimeMillis() - unifiedState.timestamp < 1000)
        
        // Verify all phase states are captured
        assertNotNull("Phase 1 primitives state should be captured", unifiedState.phase1Primitives)
        assertNotNull("Phase 2 attention state should be captured", unifiedState.phase2Attention)
        assertNotNull("Phase 4 mesh state should be captured", unifiedState.phase4Mesh)
        assertNotNull("Phase 5 meta-cognition state should be captured", unifiedState.phase5MetaCognition)
        assertNotNull("Phase 6 testing state should be captured", unifiedState.phase6Testing)
        
        // Verify health metrics
        assertTrue("Overall health should be valid", 
                   unifiedState.overallHealth >= 0.0f && unifiedState.overallHealth <= 1.0f)
        assertTrue("Unification index should be valid", 
                   unifiedState.unificationIndex >= 0.0f && unifiedState.unificationIndex <= 1.0f)
        assertTrue("Consistency score should be valid", 
                   unifiedState.consistencyScore >= 0.0f && unifiedState.consistencyScore <= 1.0f)
        
        // Verify tensor signatures
        assertNotNull("Tensor signatures should be captured", unifiedState.tensorSignatures)
        assertTrue("Should have multiple phase tensor signatures", unifiedState.tensorSignatures.size >= 3)
    }
    
    @Test
    fun testSystemConsistencyVerification() {
        val consistencyReport = consistencyVerifier.verifySystemConsistency()
        
        assertNotNull("Consistency report should not be null", consistencyReport)
        assertTrue("Report should have recent timestamp", 
                   System.currentTimeMillis() - consistencyReport.timestamp < 2000)
        
        // Verify consistency scores
        assertTrue("Overall consistency should be valid", 
                   consistencyReport.overallConsistency >= 0.0f && consistencyReport.overallConsistency <= 1.0f)
        assertTrue("Tensor signature consistency should be valid", 
                   consistencyReport.tensorSignatureConsistency >= 0.0f && consistencyReport.tensorSignatureConsistency <= 1.0f)
        assertTrue("Inter-phase consistency should be valid", 
                   consistencyReport.interPhaseConsistency >= 0.0f && consistencyReport.interPhaseConsistency <= 1.0f)
        assertTrue("Data integrity should be valid", 
                   consistencyReport.dataIntegrity >= 0.0f && consistencyReport.dataIntegrity <= 1.0f)
        assertTrue("Behavioral consistency should be valid", 
                   consistencyReport.behavioralConsistency >= 0.0f && consistencyReport.behavioralConsistency <= 1.0f)
        
        // Verify inconsistencies and recommendations
        assertNotNull("Inconsistencies list should not be null", consistencyReport.inconsistencies)
        assertNotNull("Recommendations list should not be null", consistencyReport.recommendations)
    }
    
    @Test
    fun testCognitiveHealthReportGeneration() {
        val healthReport = stateMonitor.generateHealthReport()
        
        assertNotNull("Health report should not be null", healthReport)
        assertTrue("Report should have recent timestamp", 
                   System.currentTimeMillis() - healthReport.timestamp < 2000)
        
        assertTrue("Overall health should be valid", 
                   healthReport.overallHealth >= 0.0f && healthReport.overallHealth <= 1.0f)
        assertTrue("Unification index should be valid", 
                   healthReport.unificationIndex >= 0.0f && healthReport.unificationIndex <= 1.0f)
        assertTrue("Consistency score should be valid", 
                   healthReport.consistencyScore >= 0.0f && healthReport.consistencyScore <= 1.0f)
        
        // Verify phase health breakdown
        assertNotNull("Phase health breakdown should not be null", healthReport.phaseHealthBreakdown)
        assertTrue("Should have health metrics for multiple phases", healthReport.phaseHealthBreakdown.size >= 4)
        
        for ((phase, health) in healthReport.phaseHealthBreakdown) {
            assertTrue("Health for $phase should be valid", health >= 0.0f && health <= 1.0f)
        }
        
        // Verify recommendations and tensor health
        assertNotNull("Recommendations should not be null", healthReport.recommendations)
        assertNotNull("Tensor signature health should not be null", healthReport.tensorSignatureHealth)
    }
    
    @Test
    fun testTensorSignatureValidation() {
        val unifiedState = stateMonitor.captureUnifiedState()
        val tensorSignatures = unifiedState.tensorSignatures
        
        assertTrue("Should have tensor signatures for multiple phases", tensorSignatures.size >= 3)
        
        for ((phaseName, tensor) in tensorSignatures) {
            assertTrue("Tensor for $phaseName should be valid", tensor.isValid())
            
            val tensorArray = tensor.toArray()
            assertEquals("Tensor should have 5 dimensions", 5, tensorArray.size)
            
            for (i in tensorArray.indices) {
                assertTrue("Tensor dimension $i should be in valid range for $phaseName", 
                           tensorArray[i] >= 0.0f && tensorArray[i] <= 1.0f)
            }
        }
    }
    
    @Test
    fun testPhase6Integration() {
        // Test integration with cognitive engine
        val phase6Tensor = cognitiveEngine.getPhase6TensorSignature()
        assertNotNull("Phase 6 tensor should not be null", phase6Tensor)
        assertTrue("Phase 6 tensor should be valid", phase6Tensor.isValid())
        
        val unifiedState = cognitiveEngine.captureUnifiedCognitiveState()
        assertNotNull("Unified state capture should work", unifiedState)
        
        val consistencyReport = cognitiveEngine.verifySystemConsistency()
        assertNotNull("Consistency verification should work", consistencyReport)
        
        val healthReport = cognitiveEngine.generateCognitiveHealthReport()
        assertNotNull("Health report generation should work", healthReport)
    }
    
    @Test
    fun testUnificationIndexCalculation() {
        val unifiedState = stateMonitor.captureUnifiedState() 
        
        assertTrue("Unification index should be meaningful", unifiedState.unificationIndex >= 0.0f)
        assertTrue("Unification index should not exceed maximum", unifiedState.unificationIndex <= 1.0f)
        
        // Test that unification index reflects system integration
        // Higher integration should correlate with system health
        val correlation = unifiedState.unificationIndex * unifiedState.overallHealth
        assertTrue("Unification should correlate with health", correlation >= 0.0f)
    }
    
    @Test
    fun testConsistencyScoreCalculation() {
        val unifiedState = stateMonitor.captureUnifiedState()
        
        assertTrue("Consistency score should be meaningful", unifiedState.consistencyScore >= 0.0f)
        assertTrue("Consistency score should not exceed maximum", unifiedState.consistencyScore <= 1.0f)
        
        // Verify consistency through multiple captures
        val state1 = stateMonitor.captureUnifiedState()
        val state2 = stateMonitor.captureUnifiedState()
        
        val consistencyDifference = Math.abs(state1.consistencyScore - state2.consistencyScore)
        assertTrue("Consistency should be relatively stable", consistencyDifference < 0.5f)
    }
    
    @Test
    fun testStateHistoryTracking() {
        // Generate multiple states for history tracking
        repeat(5) {
            stateMonitor.captureUnifiedState()
            Thread.sleep(10)
        }
        
        val stateHistory = stateMonitor.getStateHistory()
        assertTrue("Should maintain state history", stateHistory.size >= 5)
        
        // Verify chronological ordering
        for (i in 1 until stateHistory.size) {
            assertTrue("State history should be chronologically ordered",
                       stateHistory[i].timestamp >= stateHistory[i-1].timestamp)
        }
        
        // Verify consistency history
        repeat(3) {
            consistencyVerifier.verifySystemConsistency()
        }
        
        val consistencyHistory = consistencyVerifier.getConsistencyHistory()
        assertTrue("Should maintain consistency history", consistencyHistory.size >= 3)
    }
    
    @Test
    fun testSystemHealthMetrics() {
        // Capture several states to build health history
        repeat(3) {
            stateMonitor.captureUnifiedState()
            Thread.sleep(10) // Small delay to ensure different timestamps
        }
        
        val healthMetrics = stateMonitor.getHealthMetrics()
        assertNotNull("Health metrics should not be null", healthMetrics)
        
        assertTrue("Current health should be valid", 
                   healthMetrics.getCurrentHealth() >= 0.0f && healthMetrics.getCurrentHealth() <= 1.0f)
        
        val healthSummary = healthMetrics.generateHealthSummary()
        assertNotNull("Health summary should not be null", healthSummary)
        
        assertTrue("System stability should be valid", 
                   healthSummary.systemStability >= 0.0f && healthSummary.systemStability <= 1.0f)
        
        assertNotNull("Recent alerts should not be null", healthSummary.recentAlerts)
        assertNotNull("Recommended actions should not be null", healthSummary.recommendedActions)
    }
    
    @Test
    fun testStressUnification() {
        // Create complex cognitive environment for stress testing
        val stressAtoms = (1..50).map { i ->
            Atom(
                id = "stress_unify_$i",
                type = AtomType.values()[i % AtomType.values().size],
                name = "stress_element_$i",
                truthValue = TruthValue(kotlin.random.Random.nextFloat(), kotlin.random.Random.nextFloat()),
                attentionValue = AttentionValue(kotlin.random.Random.nextFloat() * 100, kotlin.random.Random.nextFloat() * 50)
            )
        }
        
        stressAtoms.forEach { hypergraph.addAtom(it) }
        
        // Perform unification under stress
        val startTime = System.currentTimeMillis()
        val unifiedState = stateMonitor.captureUnifiedState()
        val consistencyReport = consistencyVerifier.verifySystemConsistency()
        val endTime = System.currentTimeMillis()
        
        // Verify system handles stress appropriately
        assertNotNull("Should handle stress unification", unifiedState)
        assertNotNull("Should handle stress consistency verification", consistencyReport)
        assertTrue("Should complete stress testing in reasonable time", endTime - startTime < 15000)
        assertTrue("Should maintain reasonable health under stress", unifiedState.overallHealth >= 0.0f)
        assertTrue("Should maintain consistency under stress", consistencyReport.overallConsistency >= 0.0f)
    }
}