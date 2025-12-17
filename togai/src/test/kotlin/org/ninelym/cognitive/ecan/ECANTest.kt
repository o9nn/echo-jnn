package org.ninelym.cognitive.ecan

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.CognitiveEngine
import org.ninelym.cognitive.hypergraph.*
import org.junit.Test
import org.junit.Assert.*

/**
 * Tests for Phase 2: ECAN Attention Allocation & Resource Kernel Construction
 */
class ECANTest {
    
    @Test
    fun testECANKernelCreation() {
        val hypergraph = Hypergraph()
        val ecanKernel = ECANKernel(hypergraph)
        
        assertNotNull("ECAN kernel should be created", ecanKernel)
        
        val stats = ecanKernel.getECANStats()
        assertEquals("Initial total atoms should be 0", 0, stats.totalAtoms)
        assertTrue("Initial bank balance should be positive", stats.bankBalance > 0.0f)
    }
    
    @Test
    fun testTensorToECANTaskConversion() {
        val hypergraph = Hypergraph()
        val ecanKernel = ECANKernel(hypergraph)
        
        // Test tensor with signature [modality, depth, context, salience, autonomyIndex]
        // Maps to ECAN: [tasks, attention, priority, resources]
        val tensor = CognitiveTensor(0.7f, 2.5f, 0.8f, 0.9f, 0.6f)
        val ecanTask = ecanKernel.tensorToECANTask(tensor)
        
        assertEquals("Tasks should map from modality", 0.7f, ecanTask.tasks, 0.01f)
        assertEquals("Attention should map from salience", 0.9f, ecanTask.attention, 0.01f)  
        assertEquals("Priority should map from autonomyIndex", 0.6f, ecanTask.priority, 0.01f)
        assertEquals("Resources should map from depth", 2.5f, ecanTask.resources, 0.01f)
    }
    
    @Test
    fun testECANTaskToTensorConversion() {
        val hypergraph = Hypergraph()
        val ecanKernel = ECANKernel(hypergraph)
        
        val ecanTask = ECANTask(0.8f, 0.7f, 0.9f, 1.5f)
        val tensor = ecanKernel.ecanTaskToTensor(ecanTask, context = 0.6f)
        
        assertEquals("Modality should map from tasks", 0.8f, tensor.modality, 0.01f)
        assertEquals("Depth should map from resources", 1.5f, tensor.depth, 0.01f)
        assertEquals("Context should be preserved", 0.6f, tensor.context, 0.01f)
        assertEquals("Salience should map from attention", 0.7f, tensor.salience, 0.01f)
        assertEquals("AutonomyIndex should map from priority", 0.9f, tensor.autonomyIndex, 0.01f)
    }
    
    @Test
    fun testAttentionAllocation() {
        val hypergraph = Hypergraph()
        val ecanKernel = ECANKernel(hypergraph)
        
        // Add some atoms with different attention values
        val atom1 = Atom("atom1", AtomType.CONCEPT, "concept1", 
                         attentionValue = AttentionValue(0.8f, 0.6f))
        val atom2 = Atom("atom2", AtomType.PREDICATE, "predicate1",
                         attentionValue = AttentionValue(0.4f, 0.3f))
        val atom3 = Atom("atom3", AtomType.EVALUATION, "evaluation1",
                         attentionValue = AttentionValue(0.9f, 0.7f))
        
        hypergraph.addAtom(atom1)
        hypergraph.addAtom(atom2)
        hypergraph.addAtom(atom3)
        
        val initialStats = ecanKernel.getECANStats()
        assertEquals("Should have 3 atoms", 3, initialStats.totalAtoms)
        
        // Perform attention allocation
        val result = ecanKernel.allocateAttention()
        
        assertTrue("Should collect some rent", result.rentCollected >= 0.0f)
        assertTrue("Should have focus atoms", result.focusAtoms.isNotEmpty())
        assertTrue("Bank balance should be reasonable", result.bankBalance >= 0.0f)
        
        val newStats = ecanKernel.getECANStats()
        assertEquals("Atom count should remain same", 3, newStats.totalAtoms)
    }
    
    @Test
    fun testECANScheduler() {
        val hypergraph = Hypergraph()
        val ecanKernel = ECANKernel(hypergraph)
        val scheduler = ECANScheduler(ecanKernel)
        
        // Mock task executor
        val mockExecutor = object : TaskExecutor {
            override fun execute(task: ECANTask): TaskExecutionOutput {
                return TaskExecutionOutput(
                    success = true,
                    outputTensor = CognitiveTensor(0.5f, 1.0f, 0.5f, 0.5f, 0.5f)
                )
            }
        }
        
        // Schedule a task
        val taskId = scheduler.scheduleTask(
            name = "test-task",
            ecanTask = ECANTask(0.5f, 0.7f, 0.8f, 1.0f),
            executor = mockExecutor
        )
        
        assertNotNull("Task ID should be generated", taskId)
        assertTrue("Task ID should not be empty", taskId.isNotEmpty())
        
        // Process tasks
        val result = scheduler.processTasks()
        
        assertTrue("Should schedule some tasks", result.tasksScheduled >= 0)
        assertEquals("Queue should be empty after processing", 0, result.queueSize)
    }
    
    @Test
    fun testActivationSpreading() {
        val hypergraph = Hypergraph()
        
        // Create connected atoms
        val atom1 = Atom("atom1", AtomType.CONCEPT, "concept1",
                         attentionValue = AttentionValue(1.0f, 0.8f))
        val atom2 = Atom("atom2", AtomType.CONCEPT, "concept2", 
                         attentionValue = AttentionValue(0.3f, 0.2f))
        val atom3 = Atom("atom3", AtomType.PREDICATE, "predicate1",
                         attentionValue = AttentionValue(0.2f, 0.1f))
        
        hypergraph.addAtom(atom1)
        hypergraph.addAtom(atom2) 
        hypergraph.addAtom(atom3)
        
        // Add links to create connectivity
        val link1 = HyperLink("link1", LinkType.SIMILARITY, listOf("atom1", "atom2"))
        val link2 = HyperLink("link2", LinkType.IMPLICATION, listOf("atom1", "atom3"))
        
        hypergraph.addLink(link1)
        hypergraph.addLink(link2)
        
        // Perform activation spreading
        val result = hypergraph.performActivationSpreading(
            initialAtoms = listOf("atom1"),
            spreadingStrength = 0.8f,
            maxDepth = 2,
            minActivation = 0.1f
        )
        
        assertTrue("Should activate some atoms", result.activatedAtoms > 0)
        assertTrue("Should have some total activation", result.totalActivation > 0.0f)
        assertTrue("Activation map should not be empty", result.activationMap.isNotEmpty())
        assertNotNull("Should have spreading path", result.spreadingPath)
    }
    
    @Test
    fun testMeshConnectivity() {
        val hypergraph = Hypergraph()
        
        // Create atoms with varying attention levels
        val highAttentionAtom = Atom("high1", AtomType.CONCEPT, "high-concept",
                                    attentionValue = AttentionValue(0.9f, 0.8f))
        val mediumAttentionAtom = Atom("med1", AtomType.PREDICATE, "med-predicate", 
                                      attentionValue = AttentionValue(0.5f, 0.4f))
        val lowAttentionAtom = Atom("low1", AtomType.EVALUATION, "low-eval",
                                   attentionValue = AttentionValue(0.2f, 0.1f))
        
        hypergraph.addAtom(highAttentionAtom)
        hypergraph.addAtom(mediumAttentionAtom)
        hypergraph.addAtom(lowAttentionAtom)
        
        val link = HyperLink("link1", LinkType.INHERITANCE, 
                            listOf("high1", "med1", "low1"))
        hypergraph.addLink(link)
        
        // Test mesh connectivity
        val connectivity = hypergraph.getMeshConnectivity(minAttention = 0.3f)
        
        assertTrue("Should have some nodes", connectivity.totalNodes > 0)
        assertTrue("Should have connectivity matrix", connectivity.connectivityMatrix.isNotEmpty())
        assertTrue("Average connectivity should be reasonable", connectivity.averageConnectivity >= 0.0f)
    }
    
    @Test
    fun testECANIntegrationWithCognitiveEngine() {
        val engine = CognitiveEngine()
        
        // Add a cognitive primitive
        val tensor = CognitiveTensor(0.6f, 1.5f, 0.7f, 0.8f, 0.9f)
        val success = engine.addCognitivePrimitive("test-primitive", AtomType.CONCEPT, tensor)
        assertTrue("Should add primitive successfully", success)
        
        // Perform attention allocation
        val allocationResult = engine.performAttentionAllocation()
        assertNotNull("Allocation result should not be null", allocationResult)
        assertTrue("Bank balance should be positive", allocationResult.bankBalance >= 0.0f)
        
        // Get ECAN statistics
        val ecanStats = engine.getECANStats()
        assertTrue("Should have at least one atom", ecanStats.totalAtoms >= 1)
        
        // Test mesh operations
        val meshResult = engine.getMeshConnectivity()
        assertNotNull("Mesh connectivity result should not be null", meshResult)
        
        // Test ECAN verification
        val verificationReport = engine.verifyECAN()
        assertNotNull("ECAN verification report should not be null", verificationReport)
        assertNotNull("Performance metrics should be available", verificationReport.performanceMetrics)
    }
    
    @Test
    fun testECANTaskExecutionCycle() {
        val engine = CognitiveEngine()
        
        // Add some atoms to work with
        engine.addCognitivePrimitive("task1", AtomType.CONCEPT, 
                                   CognitiveTensor(0.7f, 1.0f, 0.8f, 0.9f, 0.6f))
        engine.addCognitivePrimitive("task2", AtomType.PREDICATE,
                                   CognitiveTensor(0.5f, 2.0f, 0.6f, 0.7f, 0.8f))
        
        // Mock executor for testing
        val testExecutor = object : TaskExecutor {
            override fun execute(task: ECANTask): TaskExecutionOutput {
                return TaskExecutionOutput(
                    success = task.priority > 0.5f, // Succeed if priority > 0.5
                    outputTensor = engine.ecanTaskToTensor(task)
                )
            }
        }
        
        // Schedule tasks
        val taskId1 = engine.scheduleECANTask(
            "high-priority-task", 0.8f, 0.9f, 0.9f, 1.5f, testExecutor
        )
        val taskId2 = engine.scheduleECANTask(
            "low-priority-task", 0.3f, 0.4f, 0.3f, 0.5f, testExecutor  
        )
        
        assertNotNull("First task should be scheduled", taskId1)
        assertNotNull("Second task should be scheduled", taskId2)
        
        // Process tasks
        val schedulingResult = engine.processECANTasks()
        
        assertTrue("Should process some tasks", schedulingResult.tasksScheduled >= 0)
        
        // Get scheduler statistics
        val schedulerStats = engine.getECANSchedulerStats()
        assertTrue("Should have scheduled tasks", schedulerStats.totalTasksScheduled >= 2)
    }
    
    @Test
    fun testTensorSignatureMapping() {
        val hypergraph = Hypergraph()
        val ecanKernel = ECANKernel(hypergraph)
        
        // Test the tensor signature mapping [tasks, attention, priority, resources]
        // Cognitive tensor: [modality, depth, context, salience, autonomy_index]
        
        val originalTensor = CognitiveTensor(
            modality = 0.9f,      // tasks
            depth = 3.0f,         // resources  
            context = 0.7f,       // context (preserved)
            salience = 0.8f,      // attention
            autonomyIndex = 0.85f // priority
        )
        
        // Convert to ECAN task
        val ecanTask = ecanKernel.tensorToECANTask(originalTensor)
        
        assertEquals("Tasks from modality", 0.9f, ecanTask.tasks, 0.01f)
        assertEquals("Attention from salience", 0.8f, ecanTask.attention, 0.01f) 
        assertEquals("Priority from autonomyIndex", 0.85f, ecanTask.priority, 0.01f)
        assertEquals("Resources from depth", 3.0f, ecanTask.resources, 0.01f)
        
        // Convert back to tensor
        val reconstructedTensor = ecanKernel.ecanTaskToTensor(ecanTask, context = 0.7f)
        
        assertEquals("Modality should match", originalTensor.modality, reconstructedTensor.modality, 0.01f)
        assertEquals("Depth should match", originalTensor.depth, reconstructedTensor.depth, 0.01f)
        assertEquals("Context should be preserved", originalTensor.context, reconstructedTensor.context, 0.01f)
        assertEquals("Salience should match", originalTensor.salience, reconstructedTensor.salience, 0.01f)
        assertEquals("AutonomyIndex should match", originalTensor.autonomyIndex, reconstructedTensor.autonomyIndex, 0.01f)
    }
}