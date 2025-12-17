package org.ninelym.cognitive

/**
 * Core tensor signature for cognitive primitives
 * 
 * Represents the foundational dimensions of cognitive computation:
 * - modality: Input/output modality (vision, audio, text, etc.)
 * - depth: Processing depth in the cognitive hierarchy
 * - context: Contextual relevance and semantic binding
 * - salience: Attention-weighted importance
 * - autonomyIndex: Level of autonomous processing capability
 * - valence: Emotional valence (positive/negative)
 * - arousal: Activation/arousal level
 * - confidence: Certainty/confidence level
 * - complexity: Computational complexity measure
 */
data class CognitiveTensor(
    val modality: Float,
    val depth: Float,
    val context: Float,
    val salience: Float,
    val autonomyIndex: Float,
    val valence: Float = 0.5f,
    val arousal: Float = 0.5f,
    val confidence: Float = 0.5f,
    val complexity: Float = 0.5f
) {
    companion object {
        const val TENSOR_DIMENSIONS = 9
        
        fun fromArray(values: FloatArray): CognitiveTensor {
            require(values.size >= 5) {
                "Tensor must have at least 5 dimensions (modality, depth, context, salience, autonomyIndex)"
            }
            return CognitiveTensor(
                modality = values[0],
                depth = values[1],
                context = values[2],
                salience = values[3],
                autonomyIndex = values[4],
                valence = if (values.size > 5) values[5] else 0.5f,
                arousal = if (values.size > 6) values[6] else 0.5f,
                confidence = if (values.size > 7) values[7] else 0.5f,
                complexity = if (values.size > 8) values[8] else 0.5f
            )
        }
        
        // Create tensor with 5 original fields
        fun create5D(modality: Float, depth: Float, context: Float, salience: Float, autonomyIndex: Float): CognitiveTensor {
            return CognitiveTensor(modality, depth, context, salience, autonomyIndex)
        }
    }
    
    fun toArray(): FloatArray = floatArrayOf(modality, depth, context, salience, autonomyIndex, valence, arousal, confidence, complexity)
    
    fun to5DArray(): FloatArray = floatArrayOf(modality, depth, context, salience, autonomyIndex)
    
    /**
     * Compute attention-weighted importance for ECAN integration
     */
    fun computeAttentionWeight(): Float = salience * autonomyIndex
    
    /**
     * Check if tensor represents a valid cognitive state
     */
    fun isValid(): Boolean = 
        modality in 0.0f..1.0f &&
        depth >= 0.0f &&
        context in 0.0f..1.0f &&
        salience in 0.0f..1.0f &&
        autonomyIndex in 0.0f..1.0f &&
        valence in 0.0f..1.0f &&
        arousal in 0.0f..1.0f &&
        confidence in 0.0f..1.0f &&
        complexity >= 0.0f
}