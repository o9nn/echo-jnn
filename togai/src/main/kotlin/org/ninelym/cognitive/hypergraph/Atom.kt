package org.ninelym.cognitive.hypergraph

/**
 * Atomic element in the cognitive hypergraph
 * 
 * Represents the fundamental unit of cognitive representation,
 * compatible with OpenCog's AtomSpace patterns
 */
data class Atom(
    val id: String,
    val type: AtomType,
    val name: String,
    val truthValue: TruthValue = TruthValue.DEFAULT,
    val attentionValue: AttentionValue = AttentionValue.DEFAULT
) {
    /**
     * Get the cognitive tensor representation of this atom
     */
    fun toCognitiveTensor(): org.ninelym.cognitive.CognitiveTensor {
        return org.ninelym.cognitive.CognitiveTensor(
            modality = type.modalityWeight,
            depth = type.hierarchyDepth,
            context = truthValue.confidence,
            salience = attentionValue.sti,
            autonomyIndex = attentionValue.lti,
            valence = if (truthValue.strength > 0.5f) truthValue.strength else 1.0f - truthValue.strength,
            arousal = attentionValue.totalImportance() / 2.0f,
            confidence = truthValue.confidence,
            complexity = type.hierarchyDepth / 4.0f // Normalize to 0-1 range
        )
    }
    
    /**
     * Get tensor property for backward compatibility
     */
    val tensor: org.ninelym.cognitive.CognitiveTensor
        get() = toCognitiveTensor()
    
    /**
     * Get attention value for backward compatibility
     */
    val attention: Float
        get() = attentionValue.sti
}

/**
 * Types of atoms in the cognitive hypergraph
 */
enum class AtomType(
    val modalityWeight: Float,
    val hierarchyDepth: Float
) {
    CONCEPT(0.1f, 1.0f),
    PREDICATE(0.2f, 2.0f),
    LINK(0.0f, 0.5f),
    NODE(0.3f, 1.5f),
    EVALUATION(0.4f, 3.0f),
    INHERITANCE(0.1f, 2.5f),
    SIMILARITY(0.2f, 2.0f),
    IMPLICATION(0.3f, 4.0f)
}

/**
 * Truth value representing certainty and confidence
 */
data class TruthValue(
    val strength: Float,
    val confidence: Float
) {
    companion object {
        val DEFAULT = TruthValue(0.5f, 0.5f)
        val TRUE = TruthValue(1.0f, 1.0f)
        val FALSE = TruthValue(0.0f, 1.0f)
        val UNKNOWN = TruthValue(0.5f, 0.0f)
    }
    
    fun isValid(): Boolean = 
        strength in 0.0f..1.0f && confidence in 0.0f..1.0f
}

/**
 * Attention value for ECAN-style resource allocation
 */
data class AttentionValue(
    val sti: Float, // Short-term importance
    val lti: Float  // Long-term importance
) {
    companion object {
        val DEFAULT = AttentionValue(0.5f, 0.5f)
        val HIGH_ATTENTION = AttentionValue(1.0f, 0.8f)
        val LOW_ATTENTION = AttentionValue(0.1f, 0.2f)
    }
    
    fun totalImportance(): Float = sti + lti
    
    fun isValid(): Boolean = 
        sti >= 0.0f && lti >= 0.0f
}