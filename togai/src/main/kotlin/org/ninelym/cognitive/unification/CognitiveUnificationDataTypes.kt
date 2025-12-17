package org.ninelym.cognitive.unification

import org.ninelym.cognitive.CognitiveTensor

/**
 * Data types for Phase 6 Cognitive Unification
 * 
 * Comprehensive data structures for unified cognitive state monitoring,
 * health tracking, and system-wide consistency verification.
 */

/**
 * Unified cognitive state across all system phases
 */
data class UnifiedCognitiveState(
    val timestamp: Long,
    val phase1Primitives: CognitivePrimitivesState,
    val phase2Attention: ECANAttentionState,
    val phase4Mesh: CognitiveMeshState,
    val phase5MetaCognition: MetaCognitiveState,
    val phase6Testing: TestingValidationState,
    val overallHealth: Float,
    val unificationIndex: Float,
    val consistencyScore: Float,
    val tensorSignatures: Map<String, CognitiveTensor>
)

/**
 * Phase 1: Cognitive Primitives State
 */
data class CognitivePrimitivesState(
    val atomCount: Int,
    val linkCount: Int,
    val activeTensorCount: Int,
    val averageTruthValue: Float,
    val averageAttentionValue: Float,
    val hypergraphComplexity: Float,
    val primitiveHealth: Float
)

/**
 * Phase 2: ECAN Attention State
 */
data class ECANAttentionState(
    val totalSTI: Float,
    val totalLTI: Float,
    val averageSTI: Float,
    val averageLTI: Float,
    val attentionFocus: Float,
    val cyclesRun: Int,
    val attentionEfficiency: Float,
    val attentionHealth: Float
)

/**
 * Phase 4: Cognitive Mesh State
 */
data class CognitiveMeshState(
    val agentCount: Int,
    val sensorCount: Int,
    val effectorCount: Int,
    val meshConnectivity: Float,
    val distributedHealth: Float
)

/**
 * Phase 5: Meta-Cognitive State
 */
data class MetaCognitiveState(
    val selfAwareness: Float,
    val cognitiveRuleCount: Int,
    val processingEfficiency: Float,
    val attentionCoherence: Float,
    val evolutionFitness: Float,
    val convergenceRate: Float,
    val verificationDepth: Float,
    val systemHealth: Float,
    val metaCognitiveHealth: Float
)

/**
 * Phase 6: Testing and Validation State
 */
data class TestingValidationState(
    val testCoverage: Float,
    val testsPassed: Float,
    val performanceBenchmarks: Map<String, Float>,
    val validationHealth: Float
)

/**
 * System-wide health metrics tracker
 */
class SystemHealthMetrics {
    private val healthHistory = mutableListOf<HealthSnapshot>()
    private var currentHealth = 0.5f
    private var healthTrend = 0.0f
    private var criticalAlerts = mutableListOf<HealthAlert>()
    
    data class HealthSnapshot(
        val timestamp: Long,
        val overallHealth: Float,
        val unificationIndex: Float,
        val consistencyScore: Float,
        val phaseHealthBreakdown: Map<String, Float>
    )
    
    data class HealthAlert(
        val timestamp: Long,
        val severity: AlertSeverity,
        val component: String,
        val message: String,
        val recommendedAction: String
    )
    
    enum class AlertSeverity {
        LOW, MEDIUM, HIGH, CRITICAL
    }
    
    fun updateMetrics(state: UnifiedCognitiveState) {
        val snapshot = HealthSnapshot(
            timestamp = state.timestamp,
            overallHealth = state.overallHealth,
            unificationIndex = state.unificationIndex,
            consistencyScore = state.consistencyScore,
            phaseHealthBreakdown = mapOf(
                "primitives" to state.phase1Primitives.primitiveHealth,
                "attention" to state.phase2Attention.attentionHealth,
                "mesh" to state.phase4Mesh.distributedHealth,
                "metaCognition" to state.phase5MetaCognition.metaCognitiveHealth,
                "testing" to state.phase6Testing.validationHealth
            )
        )
        
        healthHistory.add(snapshot)
        if (healthHistory.size > 200) {
            healthHistory.removeFirst()
        }
        
        // Update current health and trend
        val previousHealth = currentHealth
        currentHealth = state.overallHealth
        healthTrend = currentHealth - previousHealth
        
        // Check for critical conditions
        checkForHealthAlerts(state)
    }
    
    private fun checkForHealthAlerts(state: UnifiedCognitiveState) {
        // Critical health threshold
        if (state.overallHealth < 0.3f) {
            criticalAlerts.add(HealthAlert(
                timestamp = state.timestamp,
                severity = AlertSeverity.CRITICAL,
                component = "system",
                message = "Overall system health critically low: ${state.overallHealth}",
                recommendedAction = "Immediate system diagnostic and recovery procedures"
            ))
        }
        
        // Unification issues
        if (state.unificationIndex < 0.4f) {
            criticalAlerts.add(HealthAlert(
                timestamp = state.timestamp,
                severity = AlertSeverity.HIGH,
                component = "unification",
                message = "System unification severely degraded: ${state.unificationIndex}",
                recommendedAction = "Review inter-phase integration and communication protocols"
            ))
        }
        
        // Consistency problems
        if (state.consistencyScore < 0.5f) {
            criticalAlerts.add(HealthAlert(
                timestamp = state.timestamp,
                severity = AlertSeverity.HIGH,
                component = "consistency",
                message = "System consistency issues detected: ${state.consistencyScore}",
                recommendedAction = "Verify tensor signatures and cross-component data integrity"
            ))
        }
        
        // Meta-cognitive degradation
        if (state.phase5MetaCognition.selfAwareness < 0.3f) {
            criticalAlerts.add(HealthAlert(
                timestamp = state.timestamp,
                severity = AlertSeverity.MEDIUM,
                component = "metacognition",
                message = "Self-awareness critically low: ${state.phase5MetaCognition.selfAwareness}",
                recommendedAction = "Increase introspection frequency and meta-cognitive processing"
            ))
        }
        
        // Keep only recent alerts
        if (criticalAlerts.size > 50) {
            criticalAlerts.removeFirst()
        }
    }
    
    fun getCurrentHealth(): Float = currentHealth
    fun getHealthTrend(): Float = healthTrend
    fun getHealthHistory(): List<HealthSnapshot> = healthHistory.toList()
    fun getCriticalAlerts(): List<HealthAlert> = criticalAlerts.toList()
    
    fun generateHealthSummary(): HealthSummary {
        return HealthSummary(
            currentHealth = currentHealth,
            healthTrend = healthTrend,
            recentAlerts = criticalAlerts.takeLast(10),
            averageHealthLast24h = calculateAverageHealth(24),
            systemStability = calculateSystemStability(),
            recommendedActions = generateRecommendedActions()
        )
    }
    
    private fun calculateAverageHealth(hours: Int): Float {
        val cutoffTime = System.currentTimeMillis() - (hours * 60 * 60 * 1000)
        val recentSnapshots = healthHistory.filter { it.timestamp >= cutoffTime }
        
        return if (recentSnapshots.isNotEmpty()) {
            recentSnapshots.map { it.overallHealth }.average().toFloat()
        } else currentHealth
    }
    
    private fun calculateSystemStability(): Float {
        if (healthHistory.size < 10) return 0.5f
        
        val recentHealth = healthHistory.takeLast(10).map { it.overallHealth }
        val variance = recentHealth.map { (it - recentHealth.average()) * (it - recentHealth.average()) }.average()
        
        // Lower variance indicates higher stability
        return Math.max(0.0f, Math.min(1.0f, 1.0f - variance.toFloat()))
    }
    
    private fun generateRecommendedActions(): List<String> {
        val actions = mutableListOf<String>()
        
        if (currentHealth < 0.7f) {
            actions.add("System health below optimal - consider comprehensive diagnostic")
        }
        
        if (healthTrend < -0.1f) {
            actions.add("Negative health trend detected - investigate recent changes")
        }
        
        val recentCriticalAlerts = criticalAlerts.filter { 
            System.currentTimeMillis() - it.timestamp < 60000 // Last minute
        }
        
        if (recentCriticalAlerts.isNotEmpty()) {
            actions.add("Address ${recentCriticalAlerts.size} recent critical alerts")
        }
        
        return actions
    }
}

/**
 * Health summary for reporting
 */
data class HealthSummary(
    val currentHealth: Float,
    val healthTrend: Float,
    val recentAlerts: List<SystemHealthMetrics.HealthAlert>,
    val averageHealthLast24h: Float,
    val systemStability: Float,
    val recommendedActions: List<String>
)

/**
 * Comprehensive cognitive health report
 */
data class CognitiveHealthReport(
    val timestamp: Long,
    val overallHealth: Float,
    val unificationIndex: Float,
    val consistencyScore: Float,
    val phaseHealthBreakdown: Map<String, Float>,
    val recommendations: List<String>,
    val tensorSignatureHealth: Map<String, Float>
)

/**
 * Cognitive consistency verification result
 */
data class ConsistencyReport(
    val timestamp: Long,
    val overallConsistency: Float,
    val tensorSignatureConsistency: Float,
    val interPhaseConsistency: Float,
    val dataIntegrity: Float,
    val behavioralConsistency: Float,
    val inconsistencies: List<ConsistencyIssue>,
    val recommendations: List<String>
)

/**
 * Individual consistency issue
 */
data class ConsistencyIssue(
    val component: String,
    val severity: IssueSeverity,
    val description: String,
    val affectedTensors: List<String>,
    val recommendedFix: String
)

enum class IssueSeverity {
    LOW, MEDIUM, HIGH, CRITICAL
}

/**
 * Phase 6 tensor signature: [functions, tests, docs, synthesis]
 */
data class Phase6TensorSignature(
    val functions: Float,  // Completeness of cognitive function implementation
    val tests: Float,      // Coverage and rigor of testing protocols
    val docs: Float,       // Depth and recursiveness of documentation
    val synthesis: Float   // Level of cognitive system unification
) {
    fun toCognitiveTensor(): CognitiveTensor {
        return CognitiveTensor(functions, tests, docs, synthesis, 0.95f)
    }
    
    fun isValid(): Boolean {
        return functions >= 0.0f && functions <= 1.0f &&
               tests >= 0.0f && tests <= 1.0f &&
               docs >= 0.0f && docs <= 1.0f &&
               synthesis >= 0.0f && synthesis <= 1.0f
    }
}

/**
 * Placeholder data types for system statistics (may be implemented elsewhere)
 */
data class HypergraphStats(
    val atomCount: Int,
    val linkCount: Int,
    val complexity: Float = 0.0f
)

data class ECANStats(
    val totalSTI: Float,
    val totalLTI: Float,
    val averageSTI: Float,
    val averageLTI: Float,
    val attentionFocus: Float,
    val cyclesRun: Int
)

data class MetaCognitiveInsights(
    val systemSelfAwareness: Float,
    val cognitiveRuleCount: Int,
    val processingEfficiency: Float,
    val attentionCoherence: Float
)

data class EvolutionStats(
    val bestOverallFitness: Float,
    val convergenceRate: Float,
    val generationsRun: Int
)

data class RecursiveVerificationStats(
    val averageRecursionDepth: Float,
    val averageSystemHealth: Float,
    val totalFeedbackActions: Int
)