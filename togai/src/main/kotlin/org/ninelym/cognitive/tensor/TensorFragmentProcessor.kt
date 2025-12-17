package org.ninelym.cognitive.tensor

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.hypergraph.Atom

/**
 * Tensor Fragment Architecture for cognitive computation
 * 
 * Manages tensor operations and transformations for cognitive primitives,
 * enabling efficient processing of cognitive tensors with signature
 * [modality, depth, context, salience, autonomy_index]
 */
class TensorFragmentProcessor {
    
    private val fragments = mutableMapOf<String, TensorFragment>()
    
    /**
     * Create a tensor fragment from cognitive tensor
     */
    fun createFragment(id: String, tensor: CognitiveTensor): TensorFragment {
        val fragment = TensorFragment(
            id = id,
            tensor = tensor,
            timestamp = System.currentTimeMillis()
        )
        fragments[id] = fragment
        return fragment
    }
    
    /**
     * Process tensor through transformation pipeline
     */
    fun processTensor(tensor: CognitiveTensor, operations: List<TensorOperation>): CognitiveTensor {
        return operations.fold(tensor) { acc, operation ->
            operation.apply(acc)
        }
    }
    
    /**
     * Combine multiple tensor fragments
     */
    fun combineFragments(fragmentIds: List<String>, combiner: TensorCombiner): CognitiveTensor? {
        val tensors = fragmentIds.mapNotNull { fragments[it]?.tensor }
        if (tensors.isEmpty()) return null
        
        return combiner.combine(tensors)
    }
    
    /**
     * Get tensor fragments by attention threshold
     */
    fun getActiveFragments(minAttention: Float = 0.3f): List<TensorFragment> {
        return fragments.values.filter { 
            it.tensor.computeAttentionWeight() >= minAttention 
        }
    }
    
    /**
     * Convert atom to tensor fragment
     */
    fun atomToFragment(atom: Atom): TensorFragment {
        return TensorFragment(
            id = atom.id,
            tensor = atom.toCognitiveTensor(),
            timestamp = System.currentTimeMillis(),
            sourceAtom = atom
        )
    }
    
    /**
     * Cleanup old fragments based on age and attention
     */
    fun cleanup(maxAge: Long = 3600000, minAttention: Float = 0.1f) {
        val currentTime = System.currentTimeMillis()
        fragments.entries.removeAll { (_, fragment) ->
            val age = currentTime - fragment.timestamp
            age > maxAge && fragment.tensor.computeAttentionWeight() < minAttention
        }
    }
}

/**
 * Individual tensor fragment with metadata
 */
data class TensorFragment(
    val id: String,
    val tensor: CognitiveTensor,
    val timestamp: Long,
    val sourceAtom: Atom? = null
) {
    /**
     * Check if fragment is still active based on age and attention
     */
    fun isActive(maxAge: Long = 1800000, minAttention: Float = 0.2f): Boolean {
        val age = System.currentTimeMillis() - timestamp
        return age <= maxAge && tensor.computeAttentionWeight() >= minAttention
    }
}

/**
 * Interface for tensor operations
 */
interface TensorOperation {
    fun apply(tensor: CognitiveTensor): CognitiveTensor
}

/**
 * Normalize tensor values to [0,1] range
 */
class NormalizationOperation : TensorOperation {
    override fun apply(tensor: CognitiveTensor): CognitiveTensor {
        val values = tensor.toArray()
        val max = values.maxOrNull() ?: 1.0f
        val min = values.minOrNull() ?: 0.0f
        val range = max - min
        
        if (range == 0.0f) return tensor
        
        val normalized = values.map { (it - min) / range }.toFloatArray()
        return CognitiveTensor.fromArray(normalized)
    }
}

/**
 * Apply attention-based scaling
 */
class AttentionScalingOperation(private val scale: Float = 1.5f) : TensorOperation {
    override fun apply(tensor: CognitiveTensor): CognitiveTensor {
        val attentionWeight = tensor.computeAttentionWeight()
        return CognitiveTensor(
            modality = tensor.modality,
            depth = tensor.depth,
            context = tensor.context,
            salience = tensor.salience * (1.0f + attentionWeight * scale),
            autonomyIndex = tensor.autonomyIndex
        )
    }
}

/**
 * Interface for combining multiple tensors
 */
interface TensorCombiner {
    fun combine(tensors: List<CognitiveTensor>): CognitiveTensor
}

/**
 * Average-based tensor combination
 */
class AverageCombiner : TensorCombiner {
    override fun combine(tensors: List<CognitiveTensor>): CognitiveTensor {
        if (tensors.isEmpty()) {
            return CognitiveTensor(0.0f, 0.0f, 0.0f, 0.0f, 0.0f)
        }
        
        val count = tensors.size.toFloat()
        val sumModality = tensors.sumOf { it.modality.toDouble() }.toFloat()
        val sumDepth = tensors.sumOf { it.depth.toDouble() }.toFloat()
        val sumContext = tensors.sumOf { it.context.toDouble() }.toFloat()
        val sumSalience = tensors.sumOf { it.salience.toDouble() }.toFloat()
        val sumAutonomy = tensors.sumOf { it.autonomyIndex.toDouble() }.toFloat()
        
        return CognitiveTensor(
            modality = sumModality / count,
            depth = sumDepth / count,
            context = sumContext / count,
            salience = sumSalience / count,
            autonomyIndex = sumAutonomy / count
        )
    }
}

/**
 * Attention-weighted tensor combination
 */
class AttentionWeightedCombiner : TensorCombiner {
    override fun combine(tensors: List<CognitiveTensor>): CognitiveTensor {
        if (tensors.isEmpty()) {
            return CognitiveTensor(0.0f, 0.0f, 0.0f, 0.0f, 0.0f)
        }
        
        val weights = tensors.map { it.computeAttentionWeight() }
        val totalWeight = weights.sum()
        
        if (totalWeight == 0.0f) {
            return AverageCombiner().combine(tensors)
        }
        
        val weightedSum = tensors.zip(weights) { tensor, weight ->
            val factor = weight / totalWeight
            CognitiveTensor(
                modality = tensor.modality * factor,
                depth = tensor.depth * factor,
                context = tensor.context * factor,
                salience = tensor.salience * factor,
                autonomyIndex = tensor.autonomyIndex * factor
            )
        }
        
        return AverageCombiner().combine(weightedSum)
    }
}