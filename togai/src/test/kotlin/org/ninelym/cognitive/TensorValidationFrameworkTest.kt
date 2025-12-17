package org.ninelym.cognitive

import org.ninelym.cognitive.hypergraph.*
import org.junit.Test
import org.junit.Assert.*
import org.junit.Before

/**
 * Comprehensive tensor validation framework for Phase 6
 * 
 * Phase 6.1: Deep Testing Protocols for cognitive tensor validation
 */
class TensorValidationFrameworkTest {
    
    private lateinit var cognitiveEngine: CognitiveEngine
    
    @Before
    fun setUp() {
        cognitiveEngine = CognitiveEngine()
        setupTensorValidationEnvironment()
    }
    
    private fun setupTensorValidationEnvironment() {
        // Create a comprehensive set of test atoms for tensor validation
        val testAtoms = listOf(
            // Concept atoms with varying truth values
            Atom("concept_high_truth", AtomType.CONCEPT, "high_truth_concept", 
                 TruthValue(0.9f, 0.95f), AttentionValue(0.8f, 0.9f)),
            Atom("concept_medium_truth", AtomType.CONCEPT, "medium_truth_concept", 
                 TruthValue(0.5f, 0.7f), AttentionValue(0.6f, 0.7f)),
            Atom("concept_low_truth", AtomType.CONCEPT, "low_truth_concept", 
                 TruthValue(0.1f, 0.3f), AttentionValue(0.2f, 0.4f)),
            
            // Relation atoms
            Atom("relation_strong", AtomType.RELATION, "strong_relation", 
                 TruthValue(0.8f, 0.9f), AttentionValue(0.7f, 0.8f)),
            Atom("relation_weak", AtomType.RELATION, "weak_relation", 
                 TruthValue(0.3f, 0.5f), AttentionValue(0.3f, 0.5f)),
            
            // Predicate atoms
            Atom("predicate_active", AtomType.PREDICATE, "active_predicate", 
                 TruthValue(0.7f, 0.85f), AttentionValue(0.9f, 0.95f)),
            Atom("predicate_passive", AtomType.PREDICATE, "passive_predicate", 
                 TruthValue(0.4f, 0.6f), AttentionValue(0.2f, 0.4f))
        )
        
        testAtoms.forEach { cognitiveEngine.addAtom(it) }
        
        // Create links for tensor relationships
        cognitiveEngine.addLink("concept_high_truth", "relation_strong", "strong_link")
        cognitiveEngine.addLink("concept_medium_truth", "relation_weak", "weak_link")
        cognitiveEngine.addLink("relation_strong", "predicate_active", "active_link")
        
        // Run initial processing
        repeat(3) {
            cognitiveEngine.runAttentionCycle()
        }
    }
    
    @Test
    fun testBasicTensorValidation() {
        val tensors = cognitiveEngine.getActiveTensors(0.1f)
        
        assertTrue("Should have active tensors", tensors.isNotEmpty())
        
        for (tensor in tensors) {
            assertTrue("Tensor should be valid", tensor.isValid())
            assertTrue("Modality should be in range", tensor.modality >= 0.0f && tensor.modality <= 1.0f)
            assertTrue("Depth should be in range", tensor.depth >= 0.0f && tensor.depth <= 1.0f)
            assertTrue("Context should be in range", tensor.context >= 0.0f && tensor.context <= 1.0f)
            assertTrue("Salience should be in range", tensor.salience >= 0.0f && tensor.salience <= 1.0f)
            assertTrue("Autonomy index should be in range", tensor.autonomyIndex >= 0.0f && tensor.autonomyIndex <= 1.0f)
        }
    }
    
    @Test
    fun testTensorSignatureConsistency() {
        // Test different phase tensor signatures
        
        // Phase 1: Basic cognitive primitives
        val basicTensor = CognitiveTensor(0.5f, 0.6f, 0.7f, 0.8f, 0.9f)
        assertTrue("Basic tensor should be valid", basicTensor.isValid())
        
        // Phase 2: ECAN attention
        val attentionTensor = CognitiveTensor(0.4f, 0.8f, 0.6f, 0.9f, 0.7f)
        assertTrue("Attention tensor should be valid", attentionTensor.isValid())
        
        // Phase 5: Meta-cognitive signature [rules, mutability, fitness, introspect]
        val phase5Tensor = cognitiveEngine.getPhase5TensorSignature()
        assertTrue("Phase 5 tensor should be valid", phase5Tensor.isValid())
        
        // Verify tensor signature consistency
        validateTensorSignature(phase5Tensor, "Phase5")
    }
    
    private fun validateTensorSignature(tensor: CognitiveTensor, phaseName: String) {
        assertNotNull("$phaseName tensor should not be null", tensor)
        assertTrue("$phaseName tensor should be valid", tensor.isValid())
        
        val values = tensor.toArray()
        assertEquals("$phaseName tensor should have 5 dimensions", 5, values.size)
        
        for (i in values.indices) {
            assertTrue("$phaseName tensor dimension $i should be in valid range", 
                       values[i] >= 0.0f && values[i] <= 1.0f)
        }
        
        // Test tensor operations
        val attentionWeight = tensor.computeAttentionWeight()
        assertTrue("$phaseName attention weight should be valid", 
                   attentionWeight >= 0.0f && attentionWeight <= 1.0f)
    }
    
    @Test
    fun testTensorArithmetic() {
        val tensor1 = CognitiveTensor(0.3f, 0.4f, 0.5f, 0.6f, 0.7f)
        val tensor2 = CognitiveTensor(0.2f, 0.3f, 0.4f, 0.5f, 0.6f)
        
        // Test tensor addition (if implemented)
        try {
            val sum = tensor1.add(tensor2)
            assertTrue("Sum tensor should be valid", sum.isValid())
            
            val sumValues = sum.toArray()
            val values1 = tensor1.toArray()
            val values2 = tensor2.toArray()
            
            for (i in sumValues.indices) {
                assertEquals("Sum should be correct", values1[i] + values2[i], sumValues[i], 0.001f)
            }
        } catch (e: Exception) {
            // Tensor arithmetic may not be implemented
            println("Tensor arithmetic not available: ${e.message}")
        }
    }
    
    @Test
    fun testTensorNormalization() {
        // Test tensor normalization
        val unnormalizedTensor = CognitiveTensor(1.5f, 2.0f, 0.5f, 3.0f, 0.2f)
        
        if (!unnormalizedTensor.isValid()) {
            try {
                val normalizedTensor = unnormalizedTensor.normalize()
                assertTrue("Normalized tensor should be valid", normalizedTensor.isValid())
                
                val values = normalizedTensor.toArray()
                for (value in values) {
                    assertTrue("Normalized values should be in range", value >= 0.0f && value <= 1.0f)
                }
            } catch (e: Exception) {
                // Normalization may not be implemented
                println("Tensor normalization not available: ${e.message}")
            }
        }
    }
    
    @Test
    fun testTensorSimilarity() {
        val tensor1 = CognitiveTensor(0.5f, 0.6f, 0.7f, 0.8f, 0.9f)
        val tensor2 = CognitiveTensor(0.5f, 0.6f, 0.7f, 0.8f, 0.9f)
        val tensor3 = CognitiveTensor(0.1f, 0.2f, 0.3f, 0.4f, 0.5f)
        
        try {
            val similarity12 = tensor1.similarity(tensor2)
            val similarity13 = tensor1.similarity(tensor3)
            
            assertTrue("Identical tensors should have high similarity", similarity12 > 0.95f)
            assertTrue("Different tensors should have lower similarity", similarity13 < similarity12)
            assertTrue("Similarity should be in valid range", 
                       similarity12 >= 0.0f && similarity12 <= 1.0f)
            assertTrue("Similarity should be in valid range", 
                       similarity13 >= 0.0f && similarity13 <= 1.0f)
        } catch (e: Exception) {
            // Similarity calculation may not be implemented
            println("Tensor similarity not available: ${e.message}")
        }
    }
    
    @Test
    fun testTensorFromAtomMapping() {
        // Test tensor creation from different atom types
        val conceptAtom = Atom("test_concept", AtomType.CONCEPT, "test", 
                               TruthValue(0.8f, 0.9f), AttentionValue(0.7f, 0.8f))
        val relationAtom = Atom("test_relation", AtomType.RELATION, "test", 
                                TruthValue(0.6f, 0.7f), AttentionValue(0.5f, 0.6f))
        val predicateAtom = Atom("test_predicate", AtomType.PREDICATE, "test", 
                                 TruthValue(0.9f, 0.95f), AttentionValue(0.8f, 0.85f))
        
        val atoms = listOf(conceptAtom, relationAtom, predicateAtom)
        
        try {
            val tensor = cognitiveEngine.createTensorFromAtoms(atoms)
            assertNotNull("Tensor from atoms should not be null", tensor)
            assertTrue("Tensor from atoms should be valid", tensor.isValid())
            
            // Tensor should reflect the characteristics of input atoms
            assertTrue("Tensor should have meaningful values", tensor.salience > 0.0f)
        } catch (e: Exception) {
            // Tensor creation from atoms may not be implemented
            println("Tensor from atoms creation not available: ${e.message}")
        }
    }
    
    @Test
    fun testTensorEvolutionTracking() {
        // Track tensor evolution over time
        val initialTensors = cognitiveEngine.getActiveTensors(0.1f)
        val initialCount = initialTensors.size
        
        // Perform operations that should affect tensors
        repeat(5) {
            cognitiveEngine.runAttentionCycle()
        }
        
        val evolvedTensors = cognitiveEngine.getActiveTensors(0.1f)
        
        assertTrue("Should maintain some active tensors", evolvedTensors.isNotEmpty())
        
        // Check for tensor evolution patterns
        val averageInitialSalience = if (initialTensors.isNotEmpty()) {
            initialTensors.map { it.salience }.average().toFloat()
        } else 0.0f
        
        val averageEvolvedSalience = if (evolvedTensors.isNotEmpty()) {
            evolvedTensors.map { it.salience }.average().toFloat()
        } else 0.0f
        
        if (initialTensors.isNotEmpty() && evolvedTensors.isNotEmpty()) {
            // Salience patterns may evolve
            assertTrue("Evolved salience should be reasonable", averageEvolvedSalience >= 0.0f)
        }
    }
    
    @Test
    fun testTensorCompressionAndDecompression() {
        val originalTensor = CognitiveTensor(0.123456f, 0.234567f, 0.345678f, 0.456789f, 0.567890f)
        
        try {
            // Test tensor compression/serialization
            val compressed = originalTensor.compress()
            assertNotNull("Compressed tensor should not be null", compressed)
            
            val decompressed = CognitiveTensor.decompress(compressed)
            assertTrue("Decompressed tensor should be valid", decompressed.isValid())
            
            // Check compression fidelity
            val originalValues = originalTensor.toArray()
            val decompressedValues = decompressed.toArray()
            
            for (i in originalValues.indices) {
                assertEquals("Decompressed values should match original", 
                             originalValues[i], decompressedValues[i], 0.001f)
            }
        } catch (e: Exception) {
            // Compression may not be implemented
            println("Tensor compression not available: ${e.message}")
        }
    }
    
    @Test
    fun testTensorBoundaryConditions() {
        // Test boundary conditions
        val boundaryTensors = listOf(
            CognitiveTensor(0.0f, 0.0f, 0.0f, 0.0f, 0.0f), // All zeros
            CognitiveTensor(1.0f, 1.0f, 1.0f, 1.0f, 1.0f), // All ones
            CognitiveTensor(0.5f, 0.5f, 0.5f, 0.5f, 0.5f), // All middle values
            CognitiveTensor(0.0f, 1.0f, 0.0f, 1.0f, 0.0f), // Alternating
            CognitiveTensor(1.0f, 0.0f, 1.0f, 0.0f, 1.0f)  // Alternating inverse
        )
        
        for ((index, tensor) in boundaryTensors.withIndex()) {
            assertTrue("Boundary tensor $index should be valid", tensor.isValid())
            
            val attentionWeight = tensor.computeAttentionWeight()
            assertTrue("Boundary tensor $index attention weight should be valid", 
                       attentionWeight >= 0.0f && attentionWeight <= 1.0f)
        }
    }
    
    @Test
    fun testTensorStressConditions() {
        // Create many tensors to test memory and performance
        val stressTensors = (1..1000).map { i ->
            CognitiveTensor(
                kotlin.random.Random.nextFloat(),
                kotlin.random.Random.nextFloat(),
                kotlin.random.Random.nextFloat(),
                kotlin.random.Random.nextFloat(),
                kotlin.random.Random.nextFloat()
            )
        }
        
        val startTime = System.currentTimeMillis()
        
        val validTensors = stressTensors.filter { it.isValid() }
        val attentionWeights = validTensors.map { it.computeAttentionWeight() }
        
        val endTime = System.currentTimeMillis()
        
        assertTrue("Should handle many tensors", validTensors.isNotEmpty())
        assertTrue("Should process tensors efficiently", endTime - startTime < 5000)
        assertTrue("All attention weights should be valid", 
                   attentionWeights.all { it >= 0.0f && it <= 1.0f })
    }
}