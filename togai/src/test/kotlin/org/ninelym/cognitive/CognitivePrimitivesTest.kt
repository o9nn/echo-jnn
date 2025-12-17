package org.ninelym.cognitive

import org.ninelym.cognitive.hypergraph.*
import org.junit.Test
import org.junit.Assert.*

/**
 * Basic tests for cognitive primitives implementation
 * 
 * Tests core functionality of Phase 1: Cognitive Primitives & 
 * Foundational Hypergraph Encoding
 */
class CognitivePrimitivesTest {
    
    @Test
    fun testCognitiveTensorCreation() {
        val tensor = CognitiveTensor(
            modality = 0.5f,
            depth = 1.0f,
            context = 0.8f,
            salience = 0.7f,
            autonomyIndex = 0.6f
        )
        
        assertTrue("Tensor should be valid", tensor.isValid())
        assertEquals("Tensor should have 5 dimensions", 5, tensor.toArray().size)
        
        val attentionWeight = tensor.computeAttentionWeight()
        assertEquals("Attention weight should be salience * autonomy", 0.42f, attentionWeight, 0.01f)
    }
    
    @Test
    fun testCognitiveTensorFromArray() {
        val values = floatArrayOf(0.1f, 0.2f, 0.3f, 0.4f, 0.5f)
        val tensor = CognitiveTensor.fromArray(values)
        
        assertEquals(0.1f, tensor.modality, 0.01f)
        assertEquals(0.2f, tensor.depth, 0.01f)
        assertEquals(0.3f, tensor.context, 0.01f)
        assertEquals(0.4f, tensor.salience, 0.01f)
        assertEquals(0.5f, tensor.autonomyIndex, 0.01f)
    }
    
    @Test
    fun testAtomCreation() {
        val atom = Atom(
            id = "test-atom-1",
            type = AtomType.CONCEPT,
            name = "test-concept",
            truthValue = TruthValue.TRUE,
            attentionValue = AttentionValue.HIGH_ATTENTION
        )
        
        assertEquals("test-atom-1", atom.id)
        assertEquals(AtomType.CONCEPT, atom.type)
        assertEquals("test-concept", atom.name)
        assertTrue(atom.truthValue.isValid())
        assertTrue(atom.attentionValue.isValid())
    }
    
    @Test
    fun testAtomToCognitiveTensor() {
        val atom = Atom(
            id = "test-atom-2",
            type = AtomType.CONCEPT,
            name = "test-concept-2"
        )
        
        val tensor = atom.toCognitiveTensor()
        
        assertNotNull(tensor)
        assertTrue("Converted tensor should be valid", tensor.isValid())
        assertEquals("Modality should match atom type", AtomType.CONCEPT.modalityWeight, tensor.modality, 0.01f)
        assertEquals("Depth should match atom type", AtomType.CONCEPT.hierarchyDepth, tensor.depth, 0.01f)
    }
    
    @Test
    fun testHypergraphOperations() {
        val hypergraph = Hypergraph()
        
        val atom1 = Atom("atom1", AtomType.CONCEPT, "concept1")
        val atom2 = Atom("atom2", AtomType.PREDICATE, "predicate1")
        
        assertTrue("Should add atom1 successfully", hypergraph.addAtom(atom1))
        assertTrue("Should add atom2 successfully", hypergraph.addAtom(atom2))
        assertFalse("Should not add duplicate atom", hypergraph.addAtom(atom1))
        
        val retrieved = hypergraph.getAtom("atom1")
        assertNotNull("Should retrieve added atom", retrieved)
        assertEquals("Retrieved atom should match", atom1, retrieved)
        
        val concepts = hypergraph.getAtomsByType(AtomType.CONCEPT)
        assertEquals("Should have one concept", 1, concepts.size)
        assertEquals("Concept should be atom1", atom1, concepts[0])
    }
    
    @Test
    fun testHypergraphStats() {
        val hypergraph = Hypergraph()
        
        hypergraph.addAtom(Atom("a1", AtomType.CONCEPT, "c1"))
        hypergraph.addAtom(Atom("a2", AtomType.CONCEPT, "c2"))
        hypergraph.addAtom(Atom("a3", AtomType.PREDICATE, "p1"))
        
        val stats = hypergraph.getStats()
        assertEquals("Should have 3 atoms", 3, stats.atomCount)
        assertEquals("Should have 2 concepts", 2, stats.typeDistribution[AtomType.CONCEPT])
        assertEquals("Should have 1 predicate", 1, stats.typeDistribution[AtomType.PREDICATE])
    }
    
    @Test
    fun testCognitiveEngineBasicOperations() {
        val engine = CognitiveEngine()
        
        // Test adding a cognitive primitive
        val tensor = CognitiveTensor(0.5f, 1.0f, 0.8f, 0.7f, 0.6f)
        val success = engine.addCognitivePrimitive("test-primitive", AtomType.CONCEPT, tensor)
        assertTrue("Should add primitive successfully", success)
        
        // Test getting cognitive state
        val state = engine.getCognitiveState()
        assertTrue("Should have some atoms", state.atomCount > 0)
        assertNotNull("System health should be defined", state.systemHealth)
        
        // Test verification
        val verificationReport = engine.verify()
        assertNotNull("Verification report should not be null", verificationReport)
        assertTrue("Should have some components", verificationReport.totalComponents > 0)
    }
    
    @Test
    fun testSchemeExpressionProcessing() {
        val engine = CognitiveEngine()
        
        // Test simple concept
        val result1 = engine.processSchemeExpression("(concept dog)")
        assertTrue("Should process simple concept", result1 is ProcessingResult.Success)
        
        // Test inheritance
        val result2 = engine.processSchemeExpression("(inherit dog animal)")
        assertTrue("Should process inheritance", result2 is ProcessingResult.Success)
        
        // Verify state after processing
        val state = engine.getCognitiveState()
        assertTrue("Should have atoms after processing", state.atomCount > 0)
    }
    
    @Test
    fun testTruthValueValidation() {
        assertTrue("Valid truth value should pass", TruthValue(0.5f, 0.8f).isValid())
        assertFalse("Invalid strength should fail", TruthValue(-0.1f, 0.8f).isValid())
        assertFalse("Invalid confidence should fail", TruthValue(0.5f, 1.5f).isValid())
    }
    
    @Test
    fun testAttentionValueValidation() {
        assertTrue("Valid attention value should pass", AttentionValue(0.5f, 0.8f).isValid())
        assertFalse("Negative STI should fail", AttentionValue(-0.1f, 0.8f).isValid())
        assertFalse("Negative LTI should fail", AttentionValue(0.5f, -0.1f).isValid())
        
        val av = AttentionValue(0.3f, 0.7f)
        assertEquals("Total importance should be sum", 1.0f, av.totalImportance(), 0.01f)
    }
}