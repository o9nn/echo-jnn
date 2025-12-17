package org.ninelym.cognitive.verification

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.hypergraph.Atom
import org.ninelym.cognitive.hypergraph.Hypergraph
import org.ninelym.cognitive.tensor.TensorFragment

/**
 * Verification system for cognitive primitives
 * 
 * Provides validation, consistency checking, and integrity verification
 * for cognitive computing components
 */
class CognitiveVerificationSystem {
    
    /**
     * Verify the integrity of a cognitive tensor
     */
    fun verifyTensor(tensor: CognitiveTensor): VerificationResult {
        val issues = mutableListOf<String>()
        
        if (!tensor.isValid()) {
            issues.add("Tensor values are out of valid range")
        }
        
        if (tensor.computeAttentionWeight() < 0.0f) {
            issues.add("Negative attention weight computed")
        }
        
        // Check for NaN or infinite values
        val values = tensor.toArray()
        if (values.any { it.isNaN() || it.isInfinite() }) {
            issues.add("Tensor contains NaN or infinite values")
        }
        
        return VerificationResult(
            isValid = issues.isEmpty(),
            issues = issues,
            component = "CognitiveTensor",
            timestamp = System.currentTimeMillis()
        )
    }
    
    /**
     * Verify the consistency of a hypergraph
     */
    fun verifyHypergraph(hypergraph: Hypergraph): VerificationResult {
        val issues = mutableListOf<String>()
        val stats = hypergraph.getStats()
        
        // Check for reasonable graph structure
        if (stats.atomCount == 0) {
            issues.add("Empty hypergraph - no atoms present")
        }
        
        if (stats.linkCount > stats.atomCount * stats.atomCount) {
            issues.add("Unreasonably high link density")
        }
        
        if (stats.averageAttention < 0.0f || stats.averageAttention > 2.0f) {
            issues.add("Average attention value out of expected range")
        }
        
        // Verify individual atoms
        hypergraph.getActiveTensors(0.0f).forEach { tensor ->
            val tensorResult = verifyTensor(tensor)
            if (!tensorResult.isValid) {
                issues.addAll(tensorResult.issues.map { "Atom tensor: $it" })
            }
        }
        
        return VerificationResult(
            isValid = issues.isEmpty(),
            issues = issues,
            component = "Hypergraph",
            timestamp = System.currentTimeMillis()
        )
    }
    
    /**
     * Verify tensor fragment consistency
     */
    fun verifyFragment(fragment: TensorFragment): VerificationResult {
        val issues = mutableListOf<String>()
        
        val tensorResult = verifyTensor(fragment.tensor)
        if (!tensorResult.isValid) {
            issues.addAll(tensorResult.issues)
        }
        
        if (fragment.timestamp > System.currentTimeMillis()) {
            issues.add("Fragment timestamp is in the future")
        }
        
        // Verify source atom consistency if present
        fragment.sourceAtom?.let { atom ->
            val atomTensor = atom.toCognitiveTensor()
            if (!tensorsAreConsistent(fragment.tensor, atomTensor)) {
                issues.add("Fragment tensor inconsistent with source atom")
            }
        }
        
        return VerificationResult(
            isValid = issues.isEmpty(),
            issues = issues,
            component = "TensorFragment",
            timestamp = System.currentTimeMillis()
        )
    }
    
    /**
     * Check if two tensors are reasonably consistent
     */
    private fun tensorsAreConsistent(t1: CognitiveTensor, t2: CognitiveTensor, tolerance: Float = 0.1f): Boolean {
        val diff1 = kotlin.math.abs(t1.modality - t2.modality)
        val diff2 = kotlin.math.abs(t1.depth - t2.depth)
        val diff3 = kotlin.math.abs(t1.context - t2.context)
        val diff4 = kotlin.math.abs(t1.salience - t2.salience)
        val diff5 = kotlin.math.abs(t1.autonomyIndex - t2.autonomyIndex)
        
        return diff1 <= tolerance && diff2 <= tolerance && diff3 <= tolerance && 
               diff4 <= tolerance && diff5 <= tolerance
    }
    
    /**
     * Run comprehensive system verification
     */
    fun runSystemVerification(
        hypergraph: Hypergraph,
        fragments: List<TensorFragment>
    ): SystemVerificationReport {
        val results = mutableListOf<VerificationResult>()
        
        // Verify hypergraph
        results.add(verifyHypergraph(hypergraph))
        
        // Verify all fragments
        fragments.forEach { fragment ->
            results.add(verifyFragment(fragment))
        }
        
        val issues = results.flatMap { it.issues }
        val validComponents = results.count { it.isValid }
        val totalComponents = results.size
        
        return SystemVerificationReport(
            overallHealth = if (issues.isEmpty()) SystemHealth.HEALTHY else SystemHealth.DEGRADED,
            validComponents = validComponents,
            totalComponents = totalComponents,
            issues = issues,
            timestamp = System.currentTimeMillis()
        )
    }
    
    /**
     * Verify ECAN attention allocation system
     */
    fun verifyECANSystem(
        hypergraph: Hypergraph,
        ecanKernel: org.ninelym.cognitive.ecan.ECANKernel
    ): ECANVerificationReport {
        val issues = mutableListOf<String>()
        val warnings = mutableListOf<String>()
        
        // Get ECAN statistics
        val ecanStats = ecanKernel.getECANStats()
        val hypergraphStats = hypergraph.getStats()
        
        // Verify attention distribution
        val attentionIssues = verifyAttentionDistribution(ecanStats, hypergraphStats)
        issues.addAll(attentionIssues)
        
        // Verify resource allocation
        val resourceIssues = verifyResourceAllocation(ecanStats)
        issues.addAll(resourceIssues)
        
        // Check for attention concentration
        val concentrationWarnings = checkAttentionConcentration(hypergraph)
        warnings.addAll(concentrationWarnings)
        
        // Verify spreading efficiency
        val spreadingIssues = verifyAttentionSpreading(hypergraph)
        issues.addAll(spreadingIssues)
        
        // Performance benchmarks
        val performanceMetrics = runECANPerformanceBenchmarks(ecanKernel, hypergraph)
        
        return ECANVerificationReport(
            isHealthy = issues.isEmpty(),
            issues = issues,
            warnings = warnings,
            performanceMetrics = performanceMetrics,
            attentionDistributionScore = calculateAttentionScore(ecanStats),
            resourceEfficiencyScore = calculateResourceEfficiency(ecanStats),
            timestamp = System.currentTimeMillis()
        )
    }
    
    /**
     * Verify attention value distribution across atoms
     */
    private fun verifyAttentionDistribution(ecanStats: org.ninelym.cognitive.ecan.ECANStats, hypergraphStats: HypergraphStats): List<String> {
        val issues = mutableListOf<String>()
        
        // Check for reasonable attention distribution
        if (ecanStats.averageAttention < 0.1f) {
            issues.add("Average attention is critically low: ${ecanStats.averageAttention}")
        } else if (ecanStats.averageAttention > 1.8f) {
            issues.add("Average attention is unusually high: ${ecanStats.averageAttention}")
        }
        
        // Check high attention atom ratio
        val highAttentionRatio = ecanStats.highAttentionAtoms.toFloat() / ecanStats.totalAtoms
        if (highAttentionRatio > 0.5f) {
            issues.add("Too many high-attention atoms (${highAttentionRatio * 100}%), may indicate attention inflation")
        } else if (highAttentionRatio < 0.05f) {
            issues.add("Too few high-attention atoms (${highAttentionRatio * 100}%), system may be under-stimulated")
        }
        
        return issues
    }
    
    /**
     * Verify resource allocation efficiency
     */
    private fun verifyResourceAllocation(ecanStats: org.ninelym.cognitive.ecan.ECANStats): List<String> {
        val issues = mutableListOf<String>()
        
        // Check bank balance
        if (ecanStats.bankBalance < 0.0f) {
            issues.add("Negative resource bank balance: ${ecanStats.bankBalance}")
        } else if (ecanStats.bankBalance > 1000.0f) {
            issues.add("Excessive resource accumulation: ${ecanStats.bankBalance}, may indicate under-utilization")
        }
        
        // Check spreading operation efficiency
        if (ecanStats.spreadingOperations == 0 && ecanStats.totalAtoms > 1) {
            issues.add("No attention spreading operations detected with ${ecanStats.totalAtoms} atoms")
        }
        
        return issues
    }
    
    /**
     * Check for problematic attention concentration patterns
     */
    private fun checkAttentionConcentration(hypergraph: Hypergraph): List<String> {
        val warnings = mutableListOf<String>()
        
        try {
            val meshResult = hypergraph.getMeshConnectivity(0.3f)
            
            // Check for attention clusters
            if (meshResult.attentionClusters.size == 1 && meshResult.totalNodes > 10) {
                warnings.add("Single large attention cluster detected, may reduce cognitive flexibility")
            }
            
            // Check connectivity
            if (meshResult.averageConnectivity < 1.0f) {
                warnings.add("Low average connectivity (${meshResult.averageConnectivity}), atoms may be isolated")
            }
            
        } catch (e: Exception) {
            warnings.add("Failed to analyze attention concentration: ${e.message}")
        }
        
        return warnings
    }
    
    /**
     * Verify attention spreading mechanisms
     */
    private fun verifyAttentionSpreading(hypergraph: Hypergraph): List<String> {
        val issues = mutableListOf<String>()
        
        try {
            val highAttentionAtoms = hypergraph.getAllAtoms()
                .filter { it.attentionValue.totalImportance() > 0.7f }
            
            if (highAttentionAtoms.isNotEmpty()) {
                val spreadingResult = hypergraph.performActivationSpreading(
                    initialAtoms = highAttentionAtoms.take(3).map { it.id },
                    spreadingStrength = 0.5f,
                    maxDepth = 2,
                    minActivation = 0.1f
                )
                
                if (spreadingResult.activatedAtoms == highAttentionAtoms.size) {
                    issues.add("Attention spreading activated no new atoms, connectivity may be poor")
                }
                
                if (spreadingResult.totalActivation < 0.5f) {
                    issues.add("Low total activation after spreading: ${spreadingResult.totalActivation}")
                }
            }
        } catch (e: Exception) {
            issues.add("Failed to verify attention spreading: ${e.message}")
        }
        
        return issues
    }
    
    /**
     * Run performance benchmarks for ECAN system
     */
    private fun runECANPerformanceBenchmarks(
        ecanKernel: org.ninelym.cognitive.ecan.ECANKernel, 
        hypergraph: Hypergraph
    ): ECANPerformanceMetrics {
        val startTime = System.currentTimeMillis()
        
        try {
            // Benchmark attention allocation
            val allocationStartTime = System.nanoTime()
            val allocationResult = ecanKernel.allocateAttention()
            val allocationTime = (System.nanoTime() - allocationStartTime) / 1_000_000 // Convert to ms
            
            // Benchmark activation spreading
            val spreadingStartTime = System.nanoTime()
            val atoms = hypergraph.getAllAtoms()
            if (atoms.isNotEmpty()) {
                hypergraph.performActivationSpreading(
                    initialAtoms = atoms.take(5).map { it.id },
                    maxDepth = 2
                )
            }
            val spreadingTime = (System.nanoTime() - spreadingStartTime) / 1_000_000
            
            return ECANPerformanceMetrics(
                attentionAllocationTimeMs = allocationTime,
                activationSpreadingTimeMs = spreadingTime,
                totalBenchmarkTimeMs = System.currentTimeMillis() - startTime,
                atomsProcessed = atoms.size,
                throughputAtomsPerSecond = if (allocationTime > 0) (atoms.size * 1000.0f / allocationTime) else 0.0f,
                success = true
            )
        } catch (e: Exception) {
            return ECANPerformanceMetrics(
                attentionAllocationTimeMs = 0,
                activationSpreadingTimeMs = 0,
                totalBenchmarkTimeMs = System.currentTimeMillis() - startTime,
                atomsProcessed = 0,
                throughputAtomsPerSecond = 0.0f,
                success = false,
                errorMessage = e.message
            )
        }
    }
    
    /**
     * Calculate attention distribution score
     */
    private fun calculateAttentionScore(ecanStats: org.ninelym.cognitive.ecan.ECANStats): Float {
        var score = 1.0f
        
        // Penalize extreme attention values
        if (ecanStats.averageAttention < 0.2f || ecanStats.averageAttention > 1.5f) {
            score *= 0.7f
        }
        
        // Reward balanced high attention distribution
        val highAttentionRatio = ecanStats.highAttentionAtoms.toFloat() / ecanStats.totalAtoms
        if (highAttentionRatio in 0.1f..0.3f) {
            score *= 1.2f
        }
        
        return kotlin.math.min(1.0f, score)
    }
    
    /**
     * Calculate resource allocation efficiency score
     */
    private fun calculateResourceEfficiency(ecanStats: org.ninelym.cognitive.ecan.ECANStats): Float {
        var score = 1.0f
        
        // Reward active spreading
        if (ecanStats.spreadingOperations > 0) {
            score *= 1.1f
        }
        
        // Penalize resource hoarding
        if (ecanStats.bankBalance > 200.0f) {
            score *= 0.8f
        }
        
        // Penalize resource deficit
        if (ecanStats.bankBalance < 0.0f) {
            score *= 0.5f
        }
        
        return kotlin.math.min(1.0f, score)
    }
}

/**
 * Result of a verification operation
 */
data class VerificationResult(
    val isValid: Boolean,
    val issues: List<String>,
    val component: String,
    val timestamp: Long
)

/**
 * System-wide verification report
 */
data class SystemVerificationReport(
    val overallHealth: SystemHealth,
    val validComponents: Int,
    val totalComponents: Int,
    val issues: List<String>,
    val timestamp: Long
) {
    val healthPercentage: Float
        get() = if (totalComponents > 0) validComponents.toFloat() / totalComponents else 0.0f
}

/**
 * System health status
 */
enum class SystemHealth {
    HEALTHY,
    DEGRADED,
    CRITICAL,
    UNKNOWN
}

/**
 * ECAN-specific verification report
 */
data class ECANVerificationReport(
    val isHealthy: Boolean,
    val issues: List<String>,
    val warnings: List<String>,
    val performanceMetrics: ECANPerformanceMetrics,
    val attentionDistributionScore: Float,
    val resourceEfficiencyScore: Float,
    val timestamp: Long
)

/**
 * Performance metrics for ECAN system
 */
data class ECANPerformanceMetrics(
    val attentionAllocationTimeMs: Long,
    val activationSpreadingTimeMs: Long,
    val totalBenchmarkTimeMs: Long,
    val atomsProcessed: Int,
    val throughputAtomsPerSecond: Float,
    val success: Boolean,
    val errorMessage: String? = null
)