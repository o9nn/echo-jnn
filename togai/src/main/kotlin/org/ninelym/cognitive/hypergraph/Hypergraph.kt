package org.ninelym.cognitive.hypergraph

import kotlin.math.pow

/**
 * Hypergraph structure for cognitive representation
 * 
 * Implements a simplified AtomSpace-compatible hypergraph for storing
 * and manipulating cognitive primitives and their relationships
 */
class Hypergraph {
    private val atoms = mutableMapOf<String, Atom>()
    private val links = mutableMapOf<String, HyperLink>()
    
    /**
     * Add an atom to the hypergraph
     */
    fun addAtom(atom: Atom): Boolean {
        if (atoms.containsKey(atom.id)) {
            return false
        }
        atoms[atom.id] = atom
        return true
    }
    
    /**
     * Remove an atom from the hypergraph
     */
    fun removeAtom(atomId: String): Boolean {
        return atoms.remove(atomId) != null
    }
    
    /**
     * Get an atom by ID
     */
    fun getAtom(atomId: String): Atom? = atoms[atomId]
    
    /**
     * Add a hyperlink connecting multiple atoms
     */
    fun addLink(link: HyperLink): Boolean {
        // Verify all target atoms exist
        if (!link.targets.all { atoms.containsKey(it) }) {
            return false
        }
        links[link.id] = link
        return true
    }
    
    /**
     * Get all atoms of a specific type
     */
    fun getAtomsByType(type: AtomType): List<Atom> {
        return atoms.values.filter { it.type == type }
    }
    
    /**
     * Get atoms connected to a specific atom
     */
    fun getConnectedAtoms(atomId: String): List<Atom> {
        val connectedIds = links.values
            .filter { it.targets.contains(atomId) }
            .flatMap { it.targets }
            .filter { it != atomId }
            .distinct()
        
        return connectedIds.mapNotNull { atoms[it] }
    }
    
    /**
     * Convert atoms in attention range to cognitive tensors
     */
    fun getActiveTensors(minAttention: Float = 0.3f): List<org.ninelym.cognitive.CognitiveTensor> {
        return atoms.values
            .filter { it.attentionValue.totalImportance() >= minAttention }
            .map { it.toCognitiveTensor() }
    }
    
    /**
     * Get basic statistics about the hypergraph
     */
    fun getStats(): HypergraphStats {
        return HypergraphStats(
            atomCount = atoms.size,
            linkCount = links.size,
            typeDistribution = atoms.values.groupingBy { it.type }.eachCount(),
            averageAttention = atoms.values.map { it.attentionValue.totalImportance() }.average().toFloat()
        )
    }
    
    /**
     * Get all atoms in the hypergraph (for ECAN processing)
     */
    fun getAllAtoms(): List<Atom> {
        return atoms.values.toList()
    }
    
    /**
     * Update attention value for a specific atom (for ECAN kernel)
     */
    fun updateAtomAttention(atomId: String, newAttentionValue: AttentionValue): Boolean {
        val atom = atoms[atomId] ?: return false
        val updatedAtom = atom.copy(attentionValue = newAttentionValue)
        atoms[atomId] = updatedAtom
        return true
    }
    
    /**
     * Perform activation spreading across the hypergraph mesh
     * 
     * Implements dynamic mesh connectivity based on attention values,
     * allowing activation to spread through the cognitive network
     */
    fun performActivationSpreading(
        initialAtoms: List<String>,
        spreadingStrength: Float = 0.8f,
        maxDepth: Int = 3,
        minActivation: Float = 0.1f
    ): ActivationSpreadingResult {
        val activationMap = mutableMapOf<String, Float>()
        val processedAtoms = mutableSetOf<String>()
        val currentLevel = mutableSetOf<String>()
        
        // Initialize with starting atoms
        initialAtoms.forEach { atomId ->
            atoms[atomId]?.let { atom ->
                val initialActivation = atom.attentionValue.totalImportance()
                activationMap[atomId] = initialActivation
                currentLevel.add(atomId)
            }
        }
        
        var depth = 0
        val spreadingPath = mutableListOf<ActivationLevel>()
        
        while (currentLevel.isNotEmpty() && depth < maxDepth) {
            val nextLevel = mutableSetOf<String>()
            val currentLevelActivation = mutableMapOf<String, Float>()
            
            currentLevel.forEach { sourceAtomId ->
                if (!processedAtoms.contains(sourceAtomId)) {
                    val sourceActivation = activationMap[sourceAtomId] ?: 0.0f
                    val connectedAtoms = getConnectedAtoms(sourceAtomId)
                    
                    connectedAtoms.forEach { targetAtom ->
                        if (!processedAtoms.contains(targetAtom.id)) {
                            val spreadAmount = calculateActivationSpread(
                                sourceActivation,
                                targetAtom.attentionValue.totalImportance(),
                                spreadingStrength,
                                depth
                            )
                            
                            if (spreadAmount >= minActivation) {
                                val existingActivation = activationMap[targetAtom.id] ?: 0.0f
                                val newActivation = existingActivation + spreadAmount
                                activationMap[targetAtom.id] = newActivation
                                currentLevelActivation[targetAtom.id] = newActivation
                                nextLevel.add(targetAtom.id)
                            }
                        }
                    }
                    
                    processedAtoms.add(sourceAtomId)
                }
            }
            
            spreadingPath.add(ActivationLevel(depth, currentLevelActivation.toMap()))
            currentLevel.clear()
            currentLevel.addAll(nextLevel)
            depth++
        }
        
        return ActivationSpreadingResult(
            activatedAtoms = activationMap.size,
            totalActivation = activationMap.values.sum(),
            spreadingDepth = spreadingPath.size,
            activationMap = activationMap.toMap(),
            spreadingPath = spreadingPath
        )
    }
    
    /**
     * Calculate activation spread amount between atoms
     */
    private fun calculateActivationSpread(
        sourceActivation: Float,
        targetBaseActivation: Float,
        spreadingStrength: Float,
        currentDepth: Int
    ): Float {
        val depthDecay = 0.8.pow(currentDepth).toFloat()
        val baseSpreading = sourceActivation * spreadingStrength * depthDecay
        
        // Reduce spreading if target already has high activation
        val inhibitionFactor = 1.0f / (1.0f + targetBaseActivation)
        
        return baseSpreading * inhibitionFactor
    }
    
    /**
     * Get mesh connectivity patterns based on attention values
     */
    fun getMeshConnectivity(minAttention: Float = 0.3f): MeshConnectivityResult {
        val highAttentionAtoms = atoms.values.filter { 
            it.attentionValue.totalImportance() >= minAttention 
        }
        
        val connectivityMatrix = mutableMapOf<String, List<String>>()
        val attentionClusters = mutableListOf<AttentionCluster>()
        
        // Build connectivity matrix
        highAttentionAtoms.forEach { atom ->
            val connections = getConnectedAtoms(atom.id).map { it.id }
            connectivityMatrix[atom.id] = connections
        }
        
        // Identify attention clusters
        val processedAtoms = mutableSetOf<String>()
        highAttentionAtoms.forEach { atom ->
            if (!processedAtoms.contains(atom.id)) {
                val cluster = findAttentionCluster(atom, highAttentionAtoms, processedAtoms)
                if (cluster.atoms.size > 1) {
                    attentionClusters.add(cluster)
                }
            }
        }
        
        return MeshConnectivityResult(
            totalNodes = highAttentionAtoms.size,
            totalEdges = connectivityMatrix.values.sumOf { it.size },
            connectivityMatrix = connectivityMatrix.toMap(),
            attentionClusters = attentionClusters,
            averageConnectivity = connectivityMatrix.values.map { it.size }.average().toFloat()
        )
    }
    
    /**
     * Find attention-based clusters in the hypergraph
     */
    private fun findAttentionCluster(
        startAtom: Atom,
        candidateAtoms: List<Atom>,
        processedAtoms: MutableSet<String>
    ): AttentionCluster {
        val clusterAtoms = mutableListOf<Atom>()
        val toProcess = mutableListOf<Atom>()
        val attentionThreshold = startAtom.attentionValue.totalImportance() * 0.7f
        
        toProcess.add(startAtom)
        
        while (toProcess.isNotEmpty()) {
            val currentAtom = toProcess.removeAt(0)
            if (processedAtoms.contains(currentAtom.id)) continue
            
            clusterAtoms.add(currentAtom)
            processedAtoms.add(currentAtom.id)
            
            val connectedAtoms = getConnectedAtoms(currentAtom.id)
            connectedAtoms.forEach { connectedAtom ->
                if (!processedAtoms.contains(connectedAtom.id) &&
                    connectedAtom.attentionValue.totalImportance() >= attentionThreshold &&
                    candidateAtoms.any { it.id == connectedAtom.id }
                ) {
                    toProcess.add(connectedAtom)
                }
            }
        }
        
        val avgAttention = clusterAtoms.map { it.attentionValue.totalImportance() }.average().toFloat()
        return AttentionCluster(
            id = "cluster-${startAtom.id}",
            atoms = clusterAtoms,
            averageAttention = avgAttention,
            cohesionStrength = calculateClusterCohesion(clusterAtoms)
        )
    }
    
    /**
     * Calculate cohesion strength of an attention cluster
     */
    private fun calculateClusterCohesion(clusterAtoms: List<Atom>): Float {
        if (clusterAtoms.size < 2) return 0.0f
        
        var totalConnections = 0
        var internalConnections = 0
        
        clusterAtoms.forEach { atom ->
            val connections = getConnectedAtoms(atom.id)
            totalConnections += connections.size
            internalConnections += connections.count { connectedAtom ->
                clusterAtoms.any { it.id == connectedAtom.id }
            }
        }
        
        return if (totalConnections > 0) {
            internalConnections.toFloat() / totalConnections.toFloat()
        } else 0.0f
    }
}

/**
 * Hyperlink connecting multiple atoms in the hypergraph
 */
data class HyperLink(
    val id: String,
    val type: LinkType,
    val targets: List<String>, // Atom IDs
    val strength: Float = 1.0f
) {
    init {
        require(targets.size >= 2) { "HyperLink must connect at least 2 atoms" }
        require(strength in 0.0f..1.0f) { "Link strength must be between 0 and 1" }
    }
}

/**
 * Types of hyperlinks
 */
enum class LinkType {
    INHERITANCE,
    SIMILARITY,
    IMPLICATION,
    EVALUATION,
    MEMBERSHIP,
    SUBSET,
    EQUIVALENCE
}

/**
 * Statistics about the hypergraph state
 */
data class HypergraphStats(
    val atomCount: Int,
    val linkCount: Int,
    val typeDistribution: Map<AtomType, Int>,
    val averageAttention: Float
)

/**
 * Result of activation spreading process
 */
data class ActivationSpreadingResult(
    val activatedAtoms: Int,
    val totalActivation: Float,
    val spreadingDepth: Int,
    val activationMap: Map<String, Float>,
    val spreadingPath: List<ActivationLevel>
)

/**
 * Activation level during spreading process
 */
data class ActivationLevel(
    val depth: Int,
    val activations: Map<String, Float>
)

/**
 * Result of mesh connectivity analysis
 */
data class MeshConnectivityResult(
    val totalNodes: Int,
    val totalEdges: Int,
    val connectivityMatrix: Map<String, List<String>>,
    val attentionClusters: List<AttentionCluster>,
    val averageConnectivity: Float
)

/**
 * Cluster of atoms with similar attention characteristics
 */
data class AttentionCluster(
    val id: String,
    val atoms: List<Atom>,
    val averageAttention: Float,
    val cohesionStrength: Float
)