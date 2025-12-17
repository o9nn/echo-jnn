package org.ninelym.cognitive.ecan

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.hypergraph.Atom
import org.ninelym.cognitive.hypergraph.AttentionValue
import org.ninelym.cognitive.hypergraph.Hypergraph
import kotlin.math.exp
import kotlin.math.max
import kotlin.math.min

/**
 * Economic Cognitive Attention Network (ECAN) Kernel
 * 
 * Implements dynamic attention allocation and resource management
 * using economic principles to distribute cognitive resources
 * based on importance and utility.
 */
class ECANKernel(
    private val hypergraph: Hypergraph,
    private val attentionalFocus: Int = 20,
    private val rentRate: Float = 0.1f,
    private val spreadingDecay: Float = 0.9f
) {
    
    private val resourceBank = ResourceBank()
    private val attentionSpreadingHistory = mutableMapOf<String, AttentionSpreadingRecord>()
    
    /**
     * Allocate attention based on economic principles
     */
    fun allocateAttention(): AttentionAllocationResult {
        val allAtoms = hypergraph.getAllAtoms()
        val activeFocusAtoms = selectAttentionalFocus(allAtoms)
        
        // Collect rent from all atoms
        val totalRentCollected = collectRent(allAtoms)
        resourceBank.addFunds(totalRentCollected)
        
        // Distribute funds to high-importance atoms
        val fundsDistributed = distributeFunds(activeFocusAtoms)
        
        // Spread attention between connected atoms
        val spreadingResults = spreadAttention(activeFocusAtoms)
        
        return AttentionAllocationResult(
            focusAtoms = activeFocusAtoms,
            rentCollected = totalRentCollected,
            fundsDistributed = fundsDistributed,
            spreadingOperations = spreadingResults.size,
            bankBalance = resourceBank.getBalance()
        )
    }
    
    /**
     * Select atoms for attentional focus based on importance
     */
    private fun selectAttentionalFocus(atoms: List<Atom>): List<Atom> {
        return atoms
            .sortedByDescending { it.attentionValue.totalImportance() }
            .take(attentionalFocus)
    }
    
    /**
     * Collect rent from atoms based on their attention consumption
     */
    private fun collectRent(atoms: List<Atom>): Float {
        var totalRent = 0.0f
        
        atoms.forEach { atom ->
            val rent = calculateRent(atom)
            val newSTI = max(0.0f, atom.attentionValue.sti - rent)
            val updatedAttention = atom.attentionValue.copy(sti = newSTI)
            
            // Update atom's attention value
            hypergraph.updateAtomAttention(atom.id, updatedAttention)
            totalRent += rent
        }
        
        return totalRent
    }
    
    /**
     * Calculate rent for an atom based on attention consumption
     */
    private fun calculateRent(atom: Atom): Float {
        val baseCost = rentRate * atom.attentionValue.sti
        val typeCost = when (atom.type) {
            org.ninelym.cognitive.hypergraph.AtomType.EVALUATION,
            org.ninelym.cognitive.hypergraph.AtomType.IMPLICATION -> baseCost * 1.5f
            org.ninelym.cognitive.hypergraph.AtomType.CONCEPT -> baseCost * 0.8f
            else -> baseCost
        }
        return min(typeCost, atom.attentionValue.sti * 0.5f) // Max 50% of STI as rent
    }
    
    /**
     * Distribute funds to high-importance atoms
     */
    private fun distributeFunds(focusAtoms: List<Atom>): Float {
        val availableFunds = resourceBank.getBalance()
        if (availableFunds <= 0.0f) return 0.0f
        
        val totalImportance = focusAtoms.sumOf { it.attentionValue.totalImportance().toDouble() }.toFloat()
        if (totalImportance <= 0.0f) return 0.0f
        
        var distributed = 0.0f
        
        focusAtoms.forEach { atom ->
            val proportion = atom.attentionValue.totalImportance() / totalImportance
            val funding = availableFunds * proportion * 0.8f // Distribute 80% of available funds
            
            if (funding > 0.0f) {
                val newSTI = min(2.0f, atom.attentionValue.sti + funding) // Cap STI at 2.0
                val updatedAttention = atom.attentionValue.copy(sti = newSTI)
                
                hypergraph.updateAtomAttention(atom.id, updatedAttention)
                resourceBank.withdrawFunds(funding)
                distributed += funding
            }
        }
        
        return distributed
    }
    
    /**
     * Spread attention between connected atoms
     */
    private fun spreadAttention(focusAtoms: List<Atom>): List<AttentionSpreadingResult> {
        val results = mutableListOf<AttentionSpreadingResult>()
        
        focusAtoms.forEach { sourceAtom ->
            val connectedAtoms = hypergraph.getConnectedAtoms(sourceAtom.id)
            
            connectedAtoms.forEach { targetAtom ->
                val spreadAmount = calculateSpreadAmount(sourceAtom, targetAtom)
                if (spreadAmount > 0.0f) {
                    performAttentionSpread(sourceAtom, targetAtom, spreadAmount)
                    
                    results.add(AttentionSpreadingResult(
                        sourceAtomId = sourceAtom.id,
                        targetAtomId = targetAtom.id,
                        spreadAmount = spreadAmount
                    ))
                }
            }
        }
        
        return results
    }
    
    /**
     * Calculate amount of attention to spread between atoms
     */
    private fun calculateSpreadAmount(sourceAtom: Atom, targetAtom: Atom): Float {
        val sourceImportance = sourceAtom.attentionValue.totalImportance()
        val targetImportance = targetAtom.attentionValue.totalImportance()
        
        // Spread only if source has significantly more attention
        if (sourceImportance <= targetImportance * 1.2f) return 0.0f
        
        val baseSpread = (sourceImportance - targetImportance) * 0.1f
        val decayedSpread = baseSpread * spreadingDecay
        
        return min(decayedSpread, sourceAtom.attentionValue.sti * 0.2f) // Max 20% of source STI
    }
    
    /**
     * Perform attention spreading between two atoms
     */
    private fun performAttentionSpread(sourceAtom: Atom, targetAtom: Atom, amount: Float) {
        // Reduce source attention
        val newSourceSTI = max(0.0f, sourceAtom.attentionValue.sti - amount)
        val updatedSourceAttention = sourceAtom.attentionValue.copy(sti = newSourceSTI)
        hypergraph.updateAtomAttention(sourceAtom.id, updatedSourceAttention)
        
        // Increase target attention
        val newTargetSTI = min(2.0f, targetAtom.attentionValue.sti + amount * 0.8f) // 20% lost in transfer
        val updatedTargetAttention = targetAtom.attentionValue.copy(sti = newTargetSTI)
        hypergraph.updateAtomAttention(targetAtom.id, updatedTargetAttention)
        
        // Record spreading history
        val record = AttentionSpreadingRecord(
            sourceId = sourceAtom.id,
            targetId = targetAtom.id,
            amount = amount,
            timestamp = System.currentTimeMillis()
        )
        attentionSpreadingHistory["${sourceAtom.id}-${targetAtom.id}"] = record
    }
    
    /**
     * Get current ECAN statistics
     */
    fun getECANStats(): ECANStats {
        val allAtoms = hypergraph.getAllAtoms()
        val highAttentionCount = allAtoms.count { it.attentionValue.totalImportance() > 1.0f }
        val averageAttention = allAtoms.map { it.attentionValue.totalImportance() }.average().toFloat()
        
        return ECANStats(
            totalAtoms = allAtoms.size,
            highAttentionAtoms = highAttentionCount,
            averageAttention = averageAttention,
            bankBalance = resourceBank.getBalance(),
            spreadingOperations = attentionSpreadingHistory.size
        )
    }
    
    /**
     * Convert cognitive tensor to ECAN task representation  
     * Tensor signature: [tasks, attention, priority, resources] maps to
     * [modality -> tasks, salience -> attention, autonomyIndex -> priority, depth -> resources]
     */
    fun tensorToECANTask(tensor: CognitiveTensor): ECANTask {
        return ECANTask(
            tasks = tensor.modality,           // Task complexity/type
            attention = tensor.salience,       // Current attention level  
            priority = tensor.autonomyIndex,   // Processing priority
            resources = tensor.depth          // Required resources
        )
    }
    
    /**
     * Convert ECAN task back to cognitive tensor
     */
    fun ecanTaskToTensor(task: ECANTask, context: Float = 0.5f): CognitiveTensor {
        return CognitiveTensor(
            modality = task.tasks,
            depth = task.resources,
            context = context,  // Context preserved or defaulted
            salience = task.attention,
            autonomyIndex = task.priority
        )
    }
}

/**
 * Resource bank for managing cognitive resources
 */
private class ResourceBank {
    private var balance: Float = 100.0f // Initial resource pool
    
    fun addFunds(amount: Float) {
        balance += amount
    }
    
    fun withdrawFunds(amount: Float): Boolean {
        return if (balance >= amount) {
            balance -= amount
            true
        } else false
    }
    
    fun getBalance(): Float = balance
}

/**
 * ECAN task representation using tensor signature [tasks, attention, priority, resources]
 */
data class ECANTask(
    val tasks: Float,      // Task complexity/type (0.0-1.0)
    val attention: Float,  // Current attention allocation (0.0-1.0)
    val priority: Float,   // Processing priority (0.0-1.0) 
    val resources: Float   // Required cognitive resources (0.0+)
)

/**
 * Result of attention allocation cycle
 */
data class AttentionAllocationResult(
    val focusAtoms: List<Atom>,
    val rentCollected: Float,
    val fundsDistributed: Float,
    val spreadingOperations: Int,
    val bankBalance: Float
)

/**
 * Result of attention spreading between atoms
 */
data class AttentionSpreadingResult(
    val sourceAtomId: String,
    val targetAtomId: String,
    val spreadAmount: Float
)

/**
 * Record of attention spreading history
 */
private data class AttentionSpreadingRecord(
    val sourceId: String,
    val targetId: String,
    val amount: Float,
    val timestamp: Long
)

/**
 * ECAN system statistics
 */
data class ECANStats(
    val totalAtoms: Int,
    val highAttentionAtoms: Int,
    val averageAttention: Float,
    val bankBalance: Float,
    val spreadingOperations: Int
)