package org.ninelym.cognitive.metacognition

import org.ninelym.cognitive.hypergraph.Hypergraph
import org.ninelym.cognitive.hypergraph.Atom
import org.ninelym.cognitive.hypergraph.AtomType
import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.ecan.ECANKernel

/**
 * Meta-Cognitive Pathway System for Phase 5
 * 
 * Enables the system to observe, analyze, and understand its own
 * cognitive processes through recursive self-reflection and pattern analysis.
 */
class MetaCognitivePathwaySystem(
    private val hypergraph: Hypergraph,
    private val ecanKernel: ECANKernel
) {
    
    private val introspectionHistory = mutableListOf<IntrospectionResult>()
    private val cognitiveRules = mutableMapOf<String, CognitiveRule>()
    private val selfObservationPatterns = mutableListOf<SelfObservationPattern>()
    
    /**
     * Perform meta-cognitive introspection on the current system state
     */
    fun performIntrospection(): IntrospectionResult {
        val startTime = System.currentTimeMillis()
        
        // Analyze current hypergraph structure
        val structureAnalysis = analyzeHypergraphStructure()
        
        // Examine ECAN attention patterns
        val attentionAnalysis = analyzeAttentionPatterns()
        
        // Extract cognitive rules from recent processing
        val ruleExtraction = extractCognitiveRules()
        
        // Analyze processing efficiency patterns
        val efficiencyAnalysis = analyzeProcessingEfficiency()
        
        // Create meta-cognitive atoms representing self-knowledge
        val metaAtoms = createMetaCognitiveAtoms(
            structureAnalysis, 
            attentionAnalysis, 
            ruleExtraction,
            efficiencyAnalysis
        )
        
        val result = IntrospectionResult(
            timestamp = startTime,
            hypergraphComplexity = structureAnalysis.complexity,
            attentionCoherence = attentionAnalysis.coherence,
            ruleCount = ruleExtraction.size,
            processingEfficiency = efficiencyAnalysis.efficiency,
            metaAtoms = metaAtoms,
            insights = generateIntrospectiveInsights(structureAnalysis, attentionAnalysis, ruleExtraction)
        )
        
        // Store in history for pattern analysis
        introspectionHistory.add(result)
        
        // Update self-observation patterns
        updateSelfObservationPatterns(result)
        
        return result
    }
    
    /**
     * Analyze the structure and connectivity of the hypergraph
     */
    private fun analyzeHypergraphStructure(): StructureAnalysis {
        val stats = hypergraph.getStats()
        val atoms = hypergraph.getAllAtoms()
        
        // Calculate connectivity metrics
        val totalConnections = atoms.sumOf { atom ->
            hypergraph.getConnectedAtoms(atom.id).size
        }
        
        val averageConnectivity = if (atoms.isNotEmpty()) {
            totalConnections.toFloat() / atoms.size
        } else 0.0f
        
        // Analyze clustering patterns
        val clusters = identifyCognitiveclusters(atoms)
        val clusteringCoefficient = calculateClusteringCoefficient(clusters)
        
        // Calculate complexity score
        val complexity = calculateStructuralComplexity(stats, averageConnectivity, clusteringCoefficient)
        
        return StructureAnalysis(
            totalAtoms = stats.atomCount,
            totalLinks = stats.linkCount,
            averageConnectivity = averageConnectivity,
            clusterCount = clusters.size,
            clusteringCoefficient = clusteringCoefficient,
            complexity = complexity
        )
    }
    
    /**
     * Analyze ECAN attention allocation patterns
     */
    private fun analyzeAttentionPatterns(): AttentionAnalysis {
        val ecanStats = ecanKernel.getECANStats()
        val atoms = hypergraph.getAllAtoms()
        
        // Calculate attention distribution metrics
        val attentionValues = atoms.map { it.attention }
        val attentionMean = attentionValues.average().toFloat()
        val attentionVariance = calculateVariance(attentionValues, attentionMean)
        
        // Identify attention hotspots
        val hotspots = atoms.filter { it.attention > attentionMean + attentionVariance }
        
        // Analyze attention flow patterns
        val flowPatterns = analyzeAttentionFlow(atoms)
        
        // Calculate coherence score
        val coherence = calculateAttentionCoherence(attentionValues, flowPatterns)
        
        return AttentionAnalysis(
            meanAttention = attentionMean,
            attentionVariance = attentionVariance,
            hotspotCount = hotspots.size,
            flowPatterns = flowPatterns,
            coherence = coherence
        )
    }
    
    /**
     * Extract cognitive rules from recent processing patterns
     */
    private fun extractCognitiveRules(): List<CognitiveRule> {
        val extractedRules = mutableListOf<CognitiveRule>()
        
        // Analyze frequent atom patterns
        val frequentPatterns = identifyFrequentAtomPatterns()
        
        // Extract rules from attention allocation patterns
        val attentionRules = extractAttentionAllocationRules()
        
        // Extract processing sequence rules
        val sequenceRules = extractProcessingSequenceRules()
        
        extractedRules.addAll(frequentPatterns.map { pattern ->
            CognitiveRule(
                id = "pattern_${pattern.id}",
                type = CognitiveRuleType.PATTERN_RECOGNITION,
                condition = pattern.condition,
                action = pattern.action,
                confidence = pattern.frequency,
                usage = pattern.usage
            )
        })
        
        extractedRules.addAll(attentionRules)
        extractedRules.addAll(sequenceRules)
        
        // Update rule database
        extractedRules.forEach { rule ->
            cognitiveRules[rule.id] = rule
        }
        
        return extractedRules
    }
    
    /**
     * Analyze processing efficiency patterns
     */
    private fun analyzeProcessingEfficiency(): EfficiencyAnalysis {
        val recentOperations = getRecentProcessingOperations()
        
        val averageTime = recentOperations.map { it.processingTime }.average().toFloat()
        val successRate = recentOperations.count { it.successful }.toFloat() / recentOperations.size
        
        val bottlenecks = identifyProcessingBottlenecks(recentOperations)
        val optimizationOpportunities = identifyOptimizationOpportunities(recentOperations)
        
        val efficiency = calculateOverallEfficiency(averageTime, successRate, bottlenecks.size)
        
        return EfficiencyAnalysis(
            averageProcessingTime = averageTime,
            successRate = successRate,
            bottlenecks = bottlenecks,
            optimizationOpportunities = optimizationOpportunities,
            efficiency = efficiency
        )
    }
    
    /**
     * Create meta-cognitive atoms representing self-knowledge
     */
    private fun createMetaCognitiveAtoms(
        structure: StructureAnalysis,
        attention: AttentionAnalysis,
        rules: List<CognitiveRule>,
        efficiency: EfficiencyAnalysis
    ): List<Atom> {
        val metaAtoms = mutableListOf<Atom>()
        
        // Create atoms for structural insights
        metaAtoms.add(createMetaAtom(
            "self_structure_complexity",
            AtomType.EVALUATION,
            CognitiveTensor(structure.complexity, 0.8f, 0.9f, 0.7f, 0.6f, 0.5f, 0.6f, 0.8f, structure.complexity)
        ))
        
        // Create atoms for attention insights
        metaAtoms.add(createMetaAtom(
            "self_attention_coherence",
            AtomType.EVALUATION,
            CognitiveTensor(attention.coherence, 0.7f, 0.8f, 0.9f, 0.5f, 0.6f, attention.coherence, 0.8f, 0.4f)
        ))
        
        // Create atoms for rule insights
        metaAtoms.add(createMetaAtom(
            "self_rule_count",
            AtomType.EVALUATION,
            CognitiveTensor(rules.size.toFloat() / 100.0f, 0.6f, 0.7f, 0.8f, 0.4f, 0.5f, 0.3f, 0.9f, 0.3f)
        ))
        
        // Create atoms for efficiency insights
        metaAtoms.add(createMetaAtom(
            "self_processing_efficiency",
            AtomType.EVALUATION,
            CognitiveTensor(efficiency.efficiency, 0.9f, 0.8f, 0.7f, 0.8f, 0.7f, efficiency.efficiency, 0.9f, 0.5f)
        ))
        
        // Add meta-atoms to hypergraph
        metaAtoms.forEach { atom ->
            hypergraph.addAtom(atom)
        }
        
        return metaAtoms
    }
    
    /**
     * Generate introspective insights from analysis results
     */
    private fun generateIntrospectiveInsights(
        structure: StructureAnalysis,
        attention: AttentionAnalysis,
        rules: List<CognitiveRule>
    ): List<String> {
        val insights = mutableListOf<String>()
        
        // Structural insights
        when {
            structure.complexity > 0.8f -> insights.add("High cognitive complexity detected - consider optimization")
            structure.complexity < 0.3f -> insights.add("Low cognitive complexity - opportunity for enhancement")
            structure.clusteringCoefficient > 0.7f -> insights.add("Strong clustering patterns indicate specialized processing modules")
        }
        
        // Attention insights
        when {
            attention.coherence > 0.8f -> insights.add("Highly coherent attention allocation - effective focus")
            attention.coherence < 0.4f -> insights.add("Fragmented attention - may need attention consolidation")
            attention.hotspotCount > 10 -> insights.add("Multiple attention hotspots - potentially divided focus")
        }
        
        // Rule insights
        when {
            rules.size > 50 -> insights.add("Rich rule base developed - approaching expert-level knowledge")
            rules.size < 10 -> insights.add("Limited rule base - opportunity for learning acceleration")
            rules.count { it.confidence > 0.8f } > rules.size / 2 -> insights.add("High-confidence rules dominate - stable cognitive patterns")
        }
        
        return insights
    }
    
    /**
     * Update self-observation patterns based on introspection results
     */
    private fun updateSelfObservationPatterns(result: IntrospectionResult) {
        // Look for recurring patterns in introspection history
        if (introspectionHistory.size >= 3) {
            val recentResults = introspectionHistory.takeLast(3)
            
            // Check for trending patterns
            val complexityTrend = analyzeTrend(recentResults.map { it.hypergraphComplexity })
            val coherenceTrend = analyzeTrend(recentResults.map { it.attentionCoherence })
            val efficiencyTrend = analyzeTrend(recentResults.map { it.processingEfficiency })
            
            // Create or update observation patterns
            updateOrCreatePattern("complexity_trend", complexityTrend)
            updateOrCreatePattern("coherence_trend", coherenceTrend)
            updateOrCreatePattern("efficiency_trend", efficiencyTrend)
        }
    }
    
    // Helper methods
    private fun identifyCognitiveclusters(atoms: List<Atom>): List<CognitiveCluster> {
        // K-means clustering based on tensor similarity
        if (atoms.isEmpty()) return emptyList()
        
        val k = Math.min(5, Math.max(2, atoms.size / 10)) // Dynamic cluster count
        val clusters = mutableListOf<CognitiveCluster>()
        
        // Initialize centroids using k-means++ algorithm
        val centroids = initializeKMeansPlusPlusCentroids(atoms, k)
        
        // Perform k-means clustering iterations
        repeat(10) { // Maximum 10 iterations
            val assignments = atoms.map { atom ->
                val distances = centroids.map { centroid ->
                    calculateTensorDistance(atom.tensor, centroid)
                }
                distances.indexOf(distances.minOrNull())
            }
            
            // Update centroids
            for (i in 0 until k) {
                val clusterAtoms = atoms.filterIndexed { index, _ -> assignments[index] == i }
                if (clusterAtoms.isNotEmpty()) {
                    centroids[i] = calculateClusterCentroid(clusterAtoms)
                }
            }
        }
        
        // Create final clusters
        for (i in 0 until k) {
            val clusterAtoms = atoms.filterIndexed { index, _ -> 
                val distances = centroids.map { centroid ->
                    calculateTensorDistance(atoms[index].tensor, centroid)
                }
                distances.indexOf(distances.minOrNull()) == i
            }
            
            if (clusterAtoms.isNotEmpty()) {
                clusters.add(CognitiveCluster(
                    id = "cluster_$i",
                    atoms = clusterAtoms,
                    centroid = centroids[i]
                ))
            }
        }
        
        return clusters
    }
    
    private fun initializeKMeansPlusPlusCentroids(atoms: List<Atom>, k: Int): MutableList<CognitiveTensor> {
        val centroids = mutableListOf<CognitiveTensor>()
        val random = kotlin.random.Random
        
        // Choose first centroid randomly
        centroids.add(atoms[random.nextInt(atoms.size)].tensor)
        
        // Choose remaining centroids using k-means++ algorithm
        repeat(k - 1) {
            val distances = atoms.map { atom ->
                centroids.minOf { centroid ->
                    calculateTensorDistance(atom.tensor, centroid)
                }
            }
            
            val totalDistance = distances.sum()
            if (totalDistance > 0) {
                val target = random.nextFloat() * totalDistance
                var cumulative = 0.0f
                
                for (i in atoms.indices) {
                    cumulative += distances[i]
                    if (cumulative >= target) {
                        centroids.add(atoms[i].tensor)
                        break
                    }
                }
            } else {
                centroids.add(atoms[random.nextInt(atoms.size)].tensor)
            }
        }
        
        return centroids
    }
    
    private fun calculateTensorDistance(tensor1: CognitiveTensor, tensor2: CognitiveTensor): Float {
        return Math.sqrt(
            Math.pow((tensor1.modality - tensor2.modality).toDouble(), 2.0) +
            Math.pow((tensor1.depth - tensor2.depth).toDouble(), 2.0) +
            Math.pow((tensor1.context - tensor2.context).toDouble(), 2.0) +
            Math.pow((tensor1.salience - tensor2.salience).toDouble(), 2.0) +
            Math.pow((tensor1.autonomyIndex - tensor2.autonomyIndex).toDouble(), 2.0) +
            Math.pow((tensor1.valence - tensor2.valence).toDouble(), 2.0) +
            Math.pow((tensor1.arousal - tensor2.arousal).toDouble(), 2.0) +
            Math.pow((tensor1.confidence - tensor2.confidence).toDouble(), 2.0) +
            Math.pow((tensor1.complexity - tensor2.complexity).toDouble(), 2.0)
        ).toFloat()
    }
    
    private fun calculateClusteringCoefficient(clusters: List<CognitiveCluster>): Float {
        // Simplified clustering coefficient calculation
        return if (clusters.isNotEmpty()) {
            clusters.map { it.cohesion }.average().toFloat()
        } else 0.0f
    }
    
    private fun calculateStructuralComplexity(
        stats: org.ninelym.cognitive.hypergraph.HypergraphStats,
        connectivity: Float,
        clustering: Float
    ): Float {
        // Combine multiple complexity metrics
        val sizeComplexity = Math.min(stats.atomCount.toFloat() / 1000.0f, 1.0f)
        val connectivityComplexity = Math.min(connectivity / 10.0f, 1.0f)
        val clusteringComplexity = clustering
        
        return (sizeComplexity + connectivityComplexity + clusteringComplexity) / 3.0f
    }
    
    private fun calculateVariance(values: List<Float>, mean: Float): Float {
        return if (values.isNotEmpty()) {
            values.map { (it - mean) * (it - mean) }.average().toFloat()
        } else 0.0f
    }
    
    private fun analyzeAttentionFlow(atoms: List<Atom>): List<AttentionFlowPattern> {
        val flowPatterns = mutableListOf<AttentionFlowPattern>()
        
        // Analyze attention propagation between connected atoms
        atoms.forEach { sourceAtom ->
            val connectedAtoms = hypergraph.getConnectedAtoms(sourceAtom.id)
            
            connectedAtoms.forEach { targetAtom ->
                val attentionDiff = targetAtom.attention - sourceAtom.attention
                val strength = Math.abs(attentionDiff)
                
                if (strength > 0.1f) { // Significant attention flow
                    val existingPattern = flowPatterns.find { 
                        it.source == sourceAtom.id && it.target == targetAtom.id 
                    }
                    
                    if (existingPattern != null) {
                        existingPattern.frequency++
                    } else {
                        flowPatterns.add(AttentionFlowPattern(
                            source = sourceAtom.id,
                            target = targetAtom.id,
                            strength = strength,
                            frequency = 1
                        ))
                    }
                }
            }
        }
        
        return flowPatterns.sortedByDescending { it.strength }
    }
    
    private fun calculateAttentionCoherence(
        attentionValues: List<Float>,
        flowPatterns: List<AttentionFlowPattern>
    ): Float {
        // Simplified coherence calculation
        val variance = calculateVariance(attentionValues, attentionValues.average().toFloat())
        return Math.max(0.0f, 1.0f - variance)
    }
    
    private fun identifyFrequentAtomPatterns(): List<AtomPattern> {
        val patterns = mutableListOf<AtomPattern>()
        val atoms = hypergraph.getAllAtoms()
        
        // Analyze temporal sequences of atom activations
        val recentAtoms = atoms.filter { it.attention > 0.3f }
            .sortedByDescending { it.attention }
            .take(20)
        
        // Find patterns in atom type sequences
        val typeSequences = recentAtoms.windowed(3).groupBy { window ->
            window.map { it.type }.joinToString("->")
        }
        
        typeSequences.forEach { (sequence, occurrences) ->
            if (occurrences.size >= 2) { // Pattern occurred at least twice
                val frequency = occurrences.size.toFloat() / recentAtoms.size
                val avgAttention = occurrences.flatten().map { it.attention }.average().toFloat()
                
                patterns.add(AtomPattern(
                    id = "pattern_${patterns.size}",
                    condition = "type_sequence: $sequence",
                    action = "promote_attention",
                    frequency = frequency,
                    usage = occurrences.size
                ))
            }
        }
        
        // Find spatial clustering patterns
        val spatialClusters = identifyCognitiveclusters(recentAtoms)
        spatialClusters.forEach { cluster ->
            if (cluster.atoms.size >= 3) {
                val avgCohesion = cluster.cohesion
                patterns.add(AtomPattern(
                    id = "spatial_${cluster.id}",
                    condition = "cluster_cohesion > $avgCohesion",
                    action = "reinforce_cluster",
                    frequency = avgCohesion,
                    usage = cluster.atoms.size
                ))
            }
        }
        
        return patterns.sortedByDescending { it.frequency }
    }
    
    private fun extractAttentionAllocationRules(): List<CognitiveRule> {
        val rules = mutableListOf<CognitiveRule>()
        val ecanStats = ecanKernel.getECANStats()
        val atoms = hypergraph.getAllAtoms()
        
        // Rule 1: High attention atoms get more processing time
        val highAttentionAtoms = atoms.filter { it.attention > 0.7f }
        if (highAttentionAtoms.isNotEmpty()) {
            val averageProcessingBenefit = highAttentionAtoms.size.toFloat() / atoms.size
            rules.add(CognitiveRule(
                id = "high_attention_priority",
                type = CognitiveRuleType.ATTENTION_ALLOCATION,
                condition = "attention > 0.7",
                action = "increase_processing_priority",
                confidence = averageProcessingBenefit,
                usage = highAttentionAtoms.size
            ))
        }
        
        // Rule 2: Connected atoms share attention
        val attentionFlowPatterns = analyzeAttentionFlow(atoms)
        if (attentionFlowPatterns.isNotEmpty()) {
            val avgFlowStrength = attentionFlowPatterns.map { it.strength }.average().toFloat()
            rules.add(CognitiveRule(
                id = "attention_spreading",
                type = CognitiveRuleType.ATTENTION_ALLOCATION,
                condition = "has_connected_atoms",
                action = "spread_attention_proportionally",
                confidence = avgFlowStrength,
                usage = attentionFlowPatterns.size
            ))
        }
        
        // Rule 3: Stable attention patterns should be preserved
        val stableAtoms = atoms.filter { atom ->
            // Check if attention has been stable (not changing much)
            val variance = calculateAttentionVarianceForAtom(atom)
            variance < 0.1f
        }
        
        if (stableAtoms.isNotEmpty()) {
            rules.add(CognitiveRule(
                id = "preserve_stable_attention",
                type = CognitiveRuleType.ATTENTION_ALLOCATION,
                condition = "attention_variance < 0.1",
                action = "maintain_current_attention",
                confidence = stableAtoms.size.toFloat() / atoms.size,
                usage = stableAtoms.size
            ))
        }
        
        return rules
    }
    
    private fun calculateAttentionVarianceForAtom(atom: Atom): Float {
        // Simplified - in practice would track attention history
        return 0.05f // Assume low variance for stable atoms
    }
    
    private fun extractProcessingSequenceRules(): List<CognitiveRule> {
        val rules = mutableListOf<CognitiveRule>()
        val atoms = hypergraph.getAllAtoms()
        
        // Analyze processing order based on atom types and attention
        val processedSequences = atoms.sortedByDescending { it.attention }
            .take(10)
            .windowed(3)
            .map { window -> window.map { it.type } }
        
        // Find common processing sequences
        val sequenceFrequency = processedSequences.groupingBy { it }.eachCount()
        
        sequenceFrequency.forEach { (sequence, count) ->
            if (count >= 2) {
                val confidence = count.toFloat() / processedSequences.size
                rules.add(CognitiveRule(
                    id = "sequence_${sequence.hashCode()}",
                    type = CognitiveRuleType.PROCESSING_SEQUENCE,
                    condition = "process_${sequence[0]}_then_${sequence[1]}",
                    action = "expect_${sequence[2]}",
                    confidence = confidence,
                    usage = count
                ))
            }
        }
        
        // Rule for efficient batch processing
        val batchableTypes = atoms.groupBy { it.type }
            .filter { (_, atoms) -> atoms.size >= 3 }
        
        if (batchableTypes.isNotEmpty()) {
            rules.add(CognitiveRule(
                id = "batch_processing",
                type = CognitiveRuleType.PROCESSING_SEQUENCE,
                condition = "multiple_atoms_same_type",
                action = "batch_process_together",
                confidence = 0.8f,
                usage = batchableTypes.values.sumOf { it.size }
            ))
        }
        
        return rules
    }
    
    private fun getRecentProcessingOperations(): List<ProcessingOperation> {
        val operations = mutableListOf<ProcessingOperation>()
        val currentTime = System.currentTimeMillis()
        
        // Simulate recent operations based on system state
        val stats = hypergraph.getStats()
        val ecanStats = ecanKernel.getECANStats()
        
        // Add attention allocation operations
        operations.add(ProcessingOperation(
            operation = "attention_allocation",
            processingTime = (ecanStats.averageAttention * 1000).toLong(),
            successful = ecanStats.averageAttention > 0.3f,
            timestamp = currentTime - 5000
        ))
        
        // Add atom processing operations
        val activeAtoms = hypergraph.getAllAtoms().filter { it.attention > 0.4f }
        activeAtoms.take(5).forEach { atom ->
            operations.add(ProcessingOperation(
                operation = "process_${atom.type.name.lowercase()}_atom",
                processingTime = (atom.attention * 1000).toLong(),
                successful = atom.tensor.isValid(),
                timestamp = currentTime - (1000..10000).random()
            ))
        }
        
        // Add hypergraph operations
        operations.add(ProcessingOperation(
            operation = "hypergraph_update",
            processingTime = (stats.atomCount * 2).toLong(),
            successful = stats.atomCount > 0,
            timestamp = currentTime - 2000
        ))
        
        // Add tensor fragment processing
        operations.add(ProcessingOperation(
            operation = "tensor_fragment_processing",
            processingTime = 150L,
            successful = true,
            timestamp = currentTime - 3000
        ))
        
        return operations.sortedByDescending { it.timestamp }
    }
    
    private fun identifyProcessingBottlenecks(operations: List<ProcessingOperation>): List<String> {
        return operations.filter { it.processingTime > 1000 }.map { "Slow operation: ${it.operation}" }
    }
    
    private fun identifyOptimizationOpportunities(operations: List<ProcessingOperation>): List<String> {
        return listOf("Batch similar operations", "Cache frequent patterns", "Optimize attention allocation")
    }
    
    private fun calculateOverallEfficiency(averageTime: Float, successRate: Float, bottleneckCount: Int): Float {
        val timeEfficiency = Math.max(0.0f, 1.0f - (averageTime / 1000.0f))
        val bottleneckPenalty = Math.max(0.0f, 1.0f - (bottleneckCount * 0.1f))
        return (timeEfficiency + successRate + bottleneckPenalty) / 3.0f
    }
    
    private fun createMetaAtom(name: String, type: AtomType, tensor: CognitiveTensor): Atom {
        return Atom(
            id = "meta_$name",
            type = type,
            name = name
        )
    }
    
    private fun calculateClusterCentroid(atoms: List<Atom>): CognitiveTensor {
        if (atoms.isEmpty()) return CognitiveTensor(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f)
        
        val sumTensor = atoms.fold(CognitiveTensor(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f)) { acc, atom ->
            val tensor = atom.tensor
            CognitiveTensor(
                acc.modality + tensor.modality,
                acc.depth + tensor.depth,
                acc.context + tensor.context,
                acc.salience + tensor.salience,
                acc.autonomyIndex + tensor.autonomyIndex,
                acc.valence + tensor.valence,
                acc.arousal + tensor.arousal,
                acc.confidence + tensor.confidence,
                acc.complexity + tensor.complexity
            )
        }
        
        val count = atoms.size.toFloat()
        return CognitiveTensor(
            sumTensor.modality / count,
            sumTensor.depth / count,
            sumTensor.context / count,
            sumTensor.salience / count,
            sumTensor.autonomyIndex / count,
            sumTensor.valence / count,
            sumTensor.arousal / count,
            sumTensor.confidence / count,
            sumTensor.complexity / count
        )
    }
    
    private fun analyzeTrend(values: List<Float>): String {
        if (values.size < 2) return "insufficient_data"
        
        val first = values.first()
        val last = values.last()
        val change = (last - first) / first
        
        return when {
            change > 0.1f -> "increasing"
            change < -0.1f -> "decreasing"
            else -> "stable"
        }
    }
    
    private fun updateOrCreatePattern(patternType: String, trend: String) {
        val existingPattern = selfObservationPatterns.find { it.type == patternType }
        if (existingPattern != null) {
            existingPattern.update(trend)
        } else {
            selfObservationPatterns.add(SelfObservationPattern(patternType, trend))
        }
    }
    
    /**
     * Get meta-cognitive insights about the system
     */
    fun getMetaCognitiveInsights(): MetaCognitiveInsights {
        val recentIntrospection = introspectionHistory.lastOrNull()
        
        return MetaCognitiveInsights(
            totalIntrospections = introspectionHistory.size,
            cognitiveRuleCount = cognitiveRules.size,
            selfObservationPatterns = selfObservationPatterns.toList(),
            recentInsights = recentIntrospection?.insights ?: emptyList(),
            systemSelfAwareness = calculateSelfAwarenessLevel(),
            metacognitiveHealth = calculateMetaCognitiveHealth()
        )
    }
    
    private fun calculateSelfAwarenessLevel(): Float {
        val historyFactor = Math.min(introspectionHistory.size.toFloat() / 10.0f, 1.0f)
        val ruleFactor = Math.min(cognitiveRules.size.toFloat() / 50.0f, 1.0f)
        val patternFactor = Math.min(selfObservationPatterns.size.toFloat() / 20.0f, 1.0f)
        
        return (historyFactor + ruleFactor + patternFactor) / 3.0f
    }
    
    private fun calculateMetaCognitiveHealth(): Float {
        val recentIntrospection = introspectionHistory.lastOrNull()
        return recentIntrospection?.let { introspection ->
            (introspection.hypergraphComplexity +
             introspection.attentionCoherence +
             introspection.processingEfficiency) / 3.0f
        } ?: 0.5f
    }
}

// Data classes for meta-cognitive analysis
data class IntrospectionResult(
    val timestamp: Long,
    val hypergraphComplexity: Float,
    val attentionCoherence: Float,
    val ruleCount: Int,
    val processingEfficiency: Float,
    val metaAtoms: List<Atom>,
    val insights: List<String>
)

data class StructureAnalysis(
    val totalAtoms: Int,
    val totalLinks: Int,
    val averageConnectivity: Float,
    val clusterCount: Int,
    val clusteringCoefficient: Float,
    val complexity: Float
)

data class AttentionAnalysis(
    val meanAttention: Float,
    val attentionVariance: Float,
    val hotspotCount: Int,
    val flowPatterns: List<AttentionFlowPattern>,
    val coherence: Float
)

data class EfficiencyAnalysis(
    val averageProcessingTime: Float,
    val successRate: Float,
    val bottlenecks: List<String>,
    val optimizationOpportunities: List<String>,
    val efficiency: Float
)

data class CognitiveRule(
    val id: String,
    val type: CognitiveRuleType,
    val condition: String,
    val action: String,
    val confidence: Float,
    val usage: Int
)

enum class CognitiveRuleType {
    PATTERN_RECOGNITION,
    ATTENTION_ALLOCATION,
    PROCESSING_SEQUENCE,
    OPTIMIZATION
}

data class CognitiveCluster(
    val id: String,
    val atoms: List<Atom>,
    val centroid: CognitiveTensor
) {
    val cohesion: Float
        get() = calculateCohesion()
    
    private fun calculateCohesion(): Float {
        if (atoms.size < 2) return 1.0f
        
        val distances = atoms.map { atom ->
            val tensor = atom.tensor
            Math.sqrt(
                Math.pow((tensor.modality - centroid.modality).toDouble(), 2.0) +
                Math.pow((tensor.depth - centroid.depth).toDouble(), 2.0) +
                Math.pow((tensor.context - centroid.context).toDouble(), 2.0) +
                Math.pow((tensor.salience - centroid.salience).toDouble(), 2.0) +
                Math.pow((tensor.autonomyIndex - centroid.autonomyIndex).toDouble(), 2.0) +
                Math.pow((tensor.valence - centroid.valence).toDouble(), 2.0) +
                Math.pow((tensor.arousal - centroid.arousal).toDouble(), 2.0) +
                Math.pow((tensor.confidence - centroid.confidence).toDouble(), 2.0) +
                Math.pow((tensor.complexity - centroid.complexity).toDouble(), 2.0)
            ).toFloat()
        }
        
        val averageDistance = distances.average().toFloat()
        return Math.max(0.0f, 1.0f - (averageDistance / 3.0f)) // Adjusted for 9D space
    }
}

data class AttentionFlowPattern(
    val source: String,
    val target: String,
    val strength: Float,
    var frequency: Int
)

data class AtomPattern(
    val id: String,
    val condition: String,
    val action: String,
    val frequency: Float,
    val usage: Int
)

data class ProcessingOperation(
    val operation: String,
    val processingTime: Long,
    val successful: Boolean,
    val timestamp: Long
)

data class SelfObservationPattern(
    val type: String,
    var currentTrend: String,
    var observationCount: Int = 1,
    var lastUpdated: Long = System.currentTimeMillis()
) {
    fun update(newTrend: String) {
        currentTrend = newTrend
        observationCount++
        lastUpdated = System.currentTimeMillis()
    }
}

data class MetaCognitiveInsights(
    val totalIntrospections: Int,
    val cognitiveRuleCount: Int,
    val selfObservationPatterns: List<SelfObservationPattern>,
    val recentInsights: List<String>,
    val systemSelfAwareness: Float,
    val metacognitiveHealth: Float
)