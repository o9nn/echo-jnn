package org.ninelym.cognitive.unification

import org.ninelym.cognitive.hypergraph.Hypergraph
import org.ninelym.cognitive.ecan.ECANKernel
import org.ninelym.cognitive.metacognition.*
import org.ninelym.cognitive.CognitiveTensor

/**
 * Cognitive Consistency Verifier for Phase 6
 * 
 * Comprehensive verification of system-wide consistency, integrity,
 * and behavioral patterns across all cognitive phases.
 * 
 * Phase 6.3: Cognitive Unification component
 */
class CognitiveConsistencyVerifier(
    private val hypergraph: Hypergraph,
    private val ecanKernel: ECANKernel,
    private val metaSystem: MetaCognitivePathwaySystem,
    private val optimizer: EvolutionaryOptimizer,
    private val verificationSystem: RecursiveVerificationSystem,
    private val stateMonitor: UnifiedCognitiveStateMonitor
) {
    
    private val consistencyHistory = mutableListOf<ConsistencyReport>()
    private val knownInconsistencies = mutableMapOf<String, ConsistencyIssue>()
    
    /**
     * Perform comprehensive system consistency verification
     */
    fun verifySystemConsistency(): ConsistencyReport {
        val timestamp = System.currentTimeMillis()
        
        // Verify tensor signature consistency across phases
        val tensorConsistency = verifyTensorSignatures()
        
        // Verify inter-phase integration consistency
        val interPhaseConsistency = verifyPhaseIntegration()
        
        // Verify data integrity across components
        val dataIntegrity = verifyDataIntegrity()
        
        // Verify behavioral consistency patterns
        val behavioralConsistency = verifyBehavioralPatterns()
        
        // Calculate overall consistency score
        val overallConsistency = calculateOverallConsistency(
            tensorConsistency, interPhaseConsistency, dataIntegrity, behavioralConsistency
        )
        
        // Identify specific inconsistencies
        val inconsistencies = identifyInconsistencies(
            tensorConsistency, interPhaseConsistency, dataIntegrity, behavioralConsistency
        )
        
        // Generate recommendations
        val recommendations = generateConsistencyRecommendations(inconsistencies)
        
        val report = ConsistencyReport(
            timestamp = timestamp,
            overallConsistency = overallConsistency,
            tensorSignatureConsistency = tensorConsistency,
            interPhaseConsistency = interPhaseConsistency,
            dataIntegrity = dataIntegrity,
            behavioralConsistency = behavioralConsistency,
            inconsistencies = inconsistencies,
            recommendations = recommendations
        )
        
        // Track consistency history
        consistencyHistory.add(report)
        if (consistencyHistory.size > 50) {
            consistencyHistory.removeFirst()
        }
        
        // Update known inconsistencies
        updateKnownInconsistencies(inconsistencies)
        
        return report
    }
    
    /**
     * Verify tensor signature consistency across all phases
     */
    private fun verifyTensorSignatures(): Float {
        val tensorSignatures = stateMonitor.captureUnifiedState().tensorSignatures
        var consistencyScore = 0.0f
        var validationCount = 0
        
        // Check each tensor signature validity
        for ((phaseName, tensor) in tensorSignatures) {
            if (tensor.isValid()) {
                consistencyScore += 1.0f
            }
            validationCount++
            
            // Check tensor dimension consistency
            val tensorArray = tensor.toArray()
            if (tensorArray.size == 5) {
                consistencyScore += 0.5f
            }
            validationCount++
            
            // Check tensor value ranges
            val valuesInRange = tensorArray.all { it >= 0.0f && it <= 1.0f }
            if (valuesInRange) {
                consistencyScore += 0.5f
            }
            validationCount++
        }
        
        // Verify tensor signature mappings
        consistencyScore += verifyTensorSignatureMappings(tensorSignatures)
        validationCount += 4 // Number of phase mappings
        
        return if (validationCount > 0) consistencyScore / validationCount else 0.0f
    }
    
    private fun verifyTensorSignatureMappings(signatures: Map<String, CognitiveTensor>): Float {
        var mappingScore = 0.0f
        
        // Phase 1: Basic primitives [modality, depth, context, salience, autonomy]
        signatures["phase1_primitives"]?.let { tensor ->
            if (tensor.modality >= 0.0f && tensor.depth >= 0.0f) mappingScore += 1.0f
        }
        
        // Phase 2: ECAN attention [attention_sti, attention_lti, urgency, rent]
        signatures["phase2_attention"]?.let { tensor ->
            if (tensor.salience >= 0.0f && tensor.context >= 0.0f) mappingScore += 1.0f
        }
        
        // Phase 5: Meta-cognition [rules, mutability, fitness, introspect]
        signatures["phase5_metacognition"]?.let { tensor ->
            if (tensor.modality >= 0.0f && tensor.salience >= 0.0f) mappingScore += 1.0f
        }
        
        // Phase 6: Testing [functions, tests, docs, synthesis]
        signatures["phase6_unification"]?.let { tensor ->
            if (tensor.modality >= 0.0f && tensor.depth >= 0.0f) mappingScore += 1.0f
        }
        
        return mappingScore
    }
    
    /**
     * Verify consistency of inter-phase integration
     */
    private fun verifyPhaseIntegration(): Float {
        val unifiedState = stateMonitor.captureUnifiedState()
        var integrationScore = 0.0f
        var checkCount = 0
        
        // Check primitives-attention integration
        val primitivesAttentionIntegration = verifyPrimitivesAttentionIntegration(
            unifiedState.phase1Primitives, unifiedState.phase2Attention
        )
        integrationScore += primitivesAttentionIntegration
        checkCount++
        
        // Check attention-metacognition integration
        val attentionMetaCognitionIntegration = verifyAttentionMetaCognitionIntegration(
            unifiedState.phase2Attention, unifiedState.phase5MetaCognition
        )
        integrationScore += attentionMetaCognitionIntegration
        checkCount++
        
        // Check metacognition-testing integration
        val metaCognitionTestingIntegration = verifyMetaCognitionTestingIntegration(
            unifiedState.phase5MetaCognition, unifiedState.phase6Testing
        )
        integrationScore += metaCognitionTestingIntegration
        checkCount++
        
        // Check overall unification consistency
        val unificationConsistency = verifyUnificationConsistency(unifiedState)
        integrationScore += unificationConsistency
        checkCount++
        
        return if (checkCount > 0) integrationScore / checkCount else 0.0f
    }
    
    private fun verifyPrimitivesAttentionIntegration(
        primitives: CognitivePrimitivesState,
        attention: ECANAttentionState
    ): Float {
        // Verify that attention system appropriately reflects primitive state
        val atomAttentionRatio = if (primitives.atomCount > 0) {
            Math.min(attention.attentionFocus / primitives.atomCount.toFloat(), 1.0f)
        } else 0.5f
        
        val tensorAttentionAlignment = if (primitives.activeTensorCount > 0) {
            Math.min(attention.averageSTI / primitives.activeTensorCount.toFloat(), 1.0f)
        } else 0.5f
        
        return (atomAttentionRatio + tensorAttentionAlignment) / 2.0f
    }
    
    private fun verifyAttentionMetaCognitionIntegration(
        attention: ECANAttentionState,
        metaCognition: MetaCognitiveState
    ): Float {
        // Verify that meta-cognition appropriately reflects attention patterns
        val attentionCoherenceAlignment = Math.abs(attention.attentionEfficiency - metaCognition.attentionCoherence)
        val coherenceScore = Math.max(0.0f, 1.0f - attentionCoherenceAlignment)
        
        val processingEfficiencyAlignment = Math.abs(attention.attentionHealth - metaCognition.processingEfficiency)
        val efficiencyScore = Math.max(0.0f, 1.0f - processingEfficiencyAlignment)
        
        return (coherenceScore + efficiencyScore) / 2.0f
    }
    
    private fun verifyMetaCognitionTestingIntegration(
        metaCognition: MetaCognitiveState,
        testing: TestingValidationState
    ): Float {
        // Verify that testing validates meta-cognitive insights
        val healthValidationAlignment = Math.abs(metaCognition.systemHealth - testing.validationHealth)
        val healthScore = Math.max(0.0f, 1.0f - healthValidationAlignment)
        
        val testCoverageAdequacy = if (metaCognition.cognitiveRuleCount > 0) {
            Math.min(testing.testCoverage * metaCognition.cognitiveRuleCount.toFloat() / 10.0f, 1.0f)
        } else testing.testCoverage
        
        return (healthScore + testCoverageAdequacy) / 2.0f
    }
    
    private fun verifyUnificationConsistency(state: UnifiedCognitiveState): Float {
        // Verify that unification metrics are internally consistent
        val healthUnificationAlignment = Math.abs(state.overallHealth - state.unificationIndex)
        val healthScore = Math.max(0.0f, 1.0f - healthUnificationAlignment)
        
        val consistencyUnificationAlignment = Math.abs(state.consistencyScore - state.unificationIndex)
        val consistencyScore = Math.max(0.0f, 1.0f - consistencyUnificationAlignment)
        
        return (healthScore + consistencyScore) / 2.0f
    }
    
    /**
     * Verify data integrity across system components
     */
    private fun verifyDataIntegrity(): Float {
        var integrityScore = 0.0f
        var checkCount = 0
        
        // Verify hypergraph data integrity
        val hypergraphIntegrity = verifyHypergraphIntegrity()
        integrityScore += hypergraphIntegrity
        checkCount++
        
        // Verify ECAN data integrity
        val ecanIntegrity = verifyECANIntegrity()
        integrityScore += ecanIntegrity
        checkCount++
        
        // Verify meta-cognitive data integrity
        val metaCognitiveIntegrity = verifyMetaCognitiveIntegrity()
        integrityScore += metaCognitiveIntegrity
        checkCount++
        
        // Verify tensor data integrity
        val tensorIntegrity = verifyTensorIntegrity()
        integrityScore += tensorIntegrity
        checkCount++
        
        return if (checkCount > 0) integrityScore / checkCount else 0.0f
    }
    
    private fun verifyHypergraphIntegrity(): Float {
        val stats = hypergraph.getStats()
        val atoms = hypergraph.getAllAtoms()
        
        // Check atom-stats consistency
        val atomCountConsistency = if (atoms.size == stats.atomCount) 1.0f else 0.0f
        
        // Check atom data validity
        val validAtoms = atoms.count { atom ->
            atom.truthValue.strength >= 0.0f && atom.truthValue.strength <= 1.0f &&
            atom.attentionValue.sti >= 0.0f && atom.attentionValue.lti >= 0.0f
        }
        val atomValidityScore = if (atoms.isNotEmpty()) validAtoms.toFloat() / atoms.size.toFloat() else 1.0f
        
        return (atomCountConsistency + atomValidityScore) / 2.0f
    }
    
    private fun verifyECANIntegrity(): Float {
        val stats = ecanKernel.getStats()
        
        // Check STI/LTI consistency
        val stiConsistency = if (stats.totalSTI >= stats.averageSTI) 1.0f else 0.5f
        val ltiConsistency = if (stats.totalLTI >= stats.averageLTI) 1.0f else 0.5f
        
        // Check attention focus validity
        val focusValidity = if (stats.attentionFocus >= 0.0f) 1.0f else 0.0f
        
        return (stiConsistency + ltiConsistency + focusValidity) / 3.0f
    }
    
    private fun verifyMetaCognitiveIntegrity(): Float {
        val insights = metaSystem.getMetaCognitiveInsights()
        
        // Check self-awareness bounds
        val selfAwarenessValidity = if (insights.systemSelfAwareness >= 0.0f && insights.systemSelfAwareness <= 1.0f) 1.0f else 0.0f
        
        // Check processing efficiency bounds  
        val efficiencyValidity = if (insights.processingEfficiency >= 0.0f && insights.processingEfficiency <= 1.0f) 1.0f else 0.0f
        
        // Check cognitive rule count validity
        val ruleCountValidity = if (insights.cognitiveRuleCount >= 0) 1.0f else 0.0f
        
        return (selfAwarenessValidity + efficiencyValidity + ruleCountValidity) / 3.0f
    }
    
    private fun verifyTensorIntegrity(): Float {
        val activeTensors = hypergraph.getActiveTensors(0.1f)
        
        if (activeTensors.isEmpty()) return 0.5f
        
        val validTensors = activeTensors.count { it.isValid() }
        return validTensors.toFloat() / activeTensors.size.toFloat()
    }
    
    /**
     * Verify behavioral consistency patterns
     */
    private fun verifyBehavioralPatterns(): Float {
        if (consistencyHistory.size < 3) return 0.5f // Need history for pattern analysis
        
        var patternScore = 0.0f
        var patternCount = 0
        
        // Check consistency trend stability
        val recentConsistency = consistencyHistory.takeLast(5).map { it.overallConsistency }
        val consistencyVariance = calculateVariance(recentConsistency)
        val stabilityScore = Math.max(0.0f, 1.0f - consistencyVariance * 2.0f)
        patternScore += stabilityScore
        patternCount++
        
        // Check health pattern consistency
        val recentHealth = stateMonitor.getStateHistory().takeLast(5).map { it.overallHealth }
        if (recentHealth.isNotEmpty()) {
            val healthVariance = calculateVariance(recentHealth)
            val healthStabilityScore = Math.max(0.0f, 1.0f - healthVariance * 2.0f)
            patternScore += healthStabilityScore
            patternCount++
        }
        
        // Check tensor signature pattern consistency
        val tensorPatternScore = verifyTensorPatternConsistency()
        patternScore += tensorPatternScore
        patternCount++
        
        return if (patternCount > 0) patternScore / patternCount else 0.5f
    }
    
    private fun verifyTensorPatternConsistency(): Float {
        val recentStates = stateMonitor.getStateHistory().takeLast(3)
        if (recentStates.size < 2) return 0.5f
        
        var patternConsistency = 0.0f
        var comparisonCount = 0
        
        for (i in 1 until recentStates.size) {
            val currentSignatures = recentStates[i].tensorSignatures
            val previousSignatures = recentStates[i-1].tensorSignatures
            
            for ((phaseName, currentTensor) in currentSignatures) {
                previousSignatures[phaseName]?.let { previousTensor ->
                    val similarity = calculateTensorSimilarity(currentTensor, previousTensor)
                    patternConsistency += similarity
                    comparisonCount++
                }
            }
        }
        
        return if (comparisonCount > 0) patternConsistency / comparisonCount else 0.5f
    }
    
    /**
     * Calculate overall consistency score
     */
    private fun calculateOverallConsistency(
        tensorConsistency: Float,
        interPhaseConsistency: Float,
        dataIntegrity: Float,
        behavioralConsistency: Float
    ): Float {
        val weights = mapOf(
            "tensor" to 0.3f,
            "interPhase" to 0.3f,
            "dataIntegrity" to 0.25f,
            "behavioral" to 0.15f
        )
        
        return (tensorConsistency * weights["tensor"]!! +
                interPhaseConsistency * weights["interPhase"]!! +
                dataIntegrity * weights["dataIntegrity"]!! +
                behavioralConsistency * weights["behavioral"]!!)
    }
    
    /**
     * Identify specific inconsistencies
     */
    private fun identifyInconsistencies(
        tensorConsistency: Float,
        interPhaseConsistency: Float,
        dataIntegrity: Float,
        behavioralConsistency: Float
    ): List<ConsistencyIssue> {
        val issues = mutableListOf<ConsistencyIssue>()
        
        if (tensorConsistency < 0.7f) {
            issues.add(ConsistencyIssue(
                component = "tensor_signatures",
                severity = IssueSeverity.HIGH,
                description = "Tensor signature consistency below acceptable threshold: $tensorConsistency",
                affectedTensors = listOf("phase1_primitives", "phase2_attention", "phase5_metacognition", "phase6_unification"),
                recommendedFix = "Verify tensor signature mappings and value ranges across all phases"
            ))
        }
        
        if (interPhaseConsistency < 0.6f) {
            issues.add(ConsistencyIssue(
                component = "inter_phase_integration",
                severity = IssueSeverity.HIGH,
                description = "Inter-phase consistency degraded: $interPhaseConsistency",
                affectedTensors = listOf("all_phases"),
                recommendedFix = "Review phase integration protocols and data flow consistency"
            ))
        }
        
        if (dataIntegrity < 0.8f) {
            issues.add(ConsistencyIssue(
                component = "data_integrity",
                severity = IssueSeverity.MEDIUM,
                description = "Data integrity issues detected: $dataIntegrity",
                affectedTensors = listOf("hypergraph", "ecan", "metacognitive"),
                recommendedFix = "Validate data consistency across all system components"
            ))
        }
        
        if (behavioralConsistency < 0.7f) {
            issues.add(ConsistencyIssue(
                component = "behavioral_patterns",
                severity = IssueSeverity.MEDIUM,
                description = "Behavioral consistency patterns unstable: $behavioralConsistency",
                affectedTensors = listOf("system_wide"),
                recommendedFix = "Analyze system behavior patterns and stabilize inconsistent components"
            ))
        }
        
        return issues
    }
    
    /**
     * Generate consistency recommendations
     */
    private fun generateConsistencyRecommendations(issues: List<ConsistencyIssue>): List<String> {
        val recommendations = mutableListOf<String>()
        
        val criticalIssues = issues.filter { it.severity == IssueSeverity.CRITICAL }
        val highIssues = issues.filter { it.severity == IssueSeverity.HIGH }
        
        if (criticalIssues.isNotEmpty()) {
            recommendations.add("CRITICAL: Address ${criticalIssues.size} critical consistency issues immediately")
        }
        
        if (highIssues.isNotEmpty()) {
            recommendations.add("HIGH PRIORITY: Resolve ${highIssues.size} high-severity consistency issues")
        }
        
        // Component-specific recommendations
        val componentIssues = issues.groupBy { it.component }
        for ((component, componentIssues) in componentIssues) {
            if (componentIssues.size > 1) {
                recommendations.add("Focus on $component: ${componentIssues.size} related consistency issues")
            }
        }
        
        // General recommendations
        if (issues.isNotEmpty()) {
            recommendations.add("Perform comprehensive system validation after addressing consistency issues")
            recommendations.add("Monitor consistency metrics closely for the next 24 hours")
        } else {
            recommendations.add("System consistency optimal - maintain current operational parameters")
        }
        
        return recommendations
    }
    
    // Utility methods
    private fun calculateVariance(values: List<Float>): Float {
        if (values.size < 2) return 0.0f
        
        val mean = values.average().toFloat()
        val variance = values.map { (it - mean) * (it - mean) }.average().toFloat()
        return variance
    }
    
    private fun calculateTensorSimilarity(tensor1: CognitiveTensor, tensor2: CognitiveTensor): Float {
        val values1 = tensor1.toArray()
        val values2 = tensor2.toArray()
        
        if (values1.size != values2.size) return 0.0f
        
        val differences = values1.zip(values2) { v1, v2 -> Math.abs(v1 - v2) }
        val averageDifference = differences.average().toFloat()
        
        return Math.max(0.0f, 1.0f - averageDifference)
    }
    
    private fun updateKnownInconsistencies(issues: List<ConsistencyIssue>) {
        // Update tracking of known inconsistencies
        for (issue in issues) {
            val key = "${issue.component}_${issue.description.hashCode()}"
            knownInconsistencies[key] = issue
        }
        
        // Clean up resolved inconsistencies (simple heuristic)
        if (knownInconsistencies.size > 20) {
            val oldestKeys = knownInconsistencies.keys.take(5)
            oldestKeys.forEach { knownInconsistencies.remove(it) }
        }
    }
    
    /**
     * Get consistency verification history
     */
    fun getConsistencyHistory(): List<ConsistencyReport> = consistencyHistory.toList()
    
    /**
     * Get currently known inconsistencies
     */
    fun getKnownInconsistencies(): List<ConsistencyIssue> = knownInconsistencies.values.toList()
}