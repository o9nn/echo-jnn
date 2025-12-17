package org.ninelym.cognitive.ecan

import org.ninelym.cognitive.*
import org.ninelym.cognitive.hypergraph.*

/**
 * Demonstration of Phase 2: ECAN Attention Allocation & Resource Kernel Construction
 * 
 * This demo showcases the economic attention allocation system and dynamic mesh integration
 */
fun main() {
    println("🧠 9mly Phase 2: ECAN Attention Allocation & Resource Kernel Demo")
    println("=" * 70)
    println()
    
    // Initialize cognitive engine with ECAN capabilities
    val engine = CognitiveEngine()
    
    // Demo 1: ECAN Kernel & Scheduler
    println("Demo 1: ECAN Kernel & Resource Management")
    println("-" * 40)
    
    // Add cognitive primitives with varying attention requirements
    val primitives = listOf(
        Triple("visual-cortex", AtomType.CONCEPT, 
               CognitiveTensor(0.9f, 3.0f, 0.8f, 0.9f, 0.7f)), // High attention visual processing
        Triple("language-center", AtomType.EVALUATION,
               CognitiveTensor(0.6f, 4.0f, 0.9f, 0.8f, 0.6f)), // Resource-intensive language
        Triple("motor-control", AtomType.PREDICATE,
               CognitiveTensor(0.8f, 1.5f, 0.7f, 0.6f, 0.9f)), // High autonomy motor
        Triple("memory-formation", AtomType.INHERITANCE,
               CognitiveTensor(0.4f, 2.5f, 0.9f, 0.7f, 0.5f)), // Context-rich memory
        Triple("attention-filter", AtomType.SIMILARITY,
               CognitiveTensor(0.7f, 2.0f, 0.6f, 0.95f, 0.8f)) // Meta-attention system
    )
    
    primitives.forEach { (name, type, tensor) ->
        val success = engine.addCognitivePrimitive(name, type, tensor)
        val ecanTask = engine.tensorToECANTask(tensor)
        println("✓ Added $name: tasks=${String.format("%.2f", ecanTask.tasks)}, " +
                "attention=${String.format("%.2f", ecanTask.attention)}, " +
                "priority=${String.format("%.2f", ecanTask.priority)}, " +
                "resources=${String.format("%.2f", ecanTask.resources)}")
    }
    
    println()
    
    // Perform initial attention allocation
    println("Performing ECAN attention allocation...")
    val allocationResult = engine.performAttentionAllocation()
    println("✓ Focus atoms: ${allocationResult.focusAtoms.size}")
    println("✓ Rent collected: ${String.format("%.3f", allocationResult.rentCollected)}")
    println("✓ Funds distributed: ${String.format("%.3f", allocationResult.fundsDistributed)}")
    println("✓ Spreading operations: ${allocationResult.spreadingOperations}")
    println("✓ Bank balance: ${String.format("%.2f", allocationResult.bankBalance)}")
    
    println()
    
    // Demo 2: Dynamic Task Scheduling
    println("Demo 2: ECAN Task Scheduling")
    println("-" * 40)
    
    // Create a sample task executor
    val cognitiveTaskExecutor = object : TaskExecutor {
        override fun execute(task: ECANTask): TaskExecutionOutput {
            // Simulate cognitive task execution
            val processingTime = (task.resources * 100).toLong()
            Thread.sleep(kotlin.math.min(processingTime, 50)) // Cap sleep time for demo
            
            val success = task.attention > 0.5f && task.priority > 0.3f
            val outputTensor = if (success) {
                CognitiveTensor(
                    modality = task.tasks * 0.9f,
                    depth = task.resources * 0.8f,
                    context = 0.7f,
                    salience = task.attention * 0.9f,
                    autonomyIndex = task.priority * 1.1f
                )
            } else null
            
            return TaskExecutionOutput(
                success = success,
                outputTensor = outputTensor,
                errorMessage = if (!success) "Insufficient attention/priority" else null
            )
        }
    }
    
    // Schedule various tasks
    val tasks = listOf(
        TaskSpec("pattern-recognition", 0.8f, 0.9f, 0.85f, 2.5f),
        TaskSpec("decision-making", 0.9f, 0.8f, 0.9f, 3.0f),
        TaskSpec("memory-consolidation", 0.6f, 0.7f, 0.6f, 2.0f),
        TaskSpec("sensory-integration", 0.7f, 0.6f, 0.7f, 1.5f),
        TaskSpec("action-planning", 0.5f, 0.5f, 0.8f, 1.8f)
    )
    
    tasks.forEach { (name, tasks, attention, priority, resources) ->
        val taskId = engine.scheduleECANTask(name, tasks, attention, priority, resources, cognitiveTaskExecutor)
        println("→ Scheduled $name (ID: ${taskId.take(12)}...)")
    }
    
    // Process scheduled tasks
    println("\nProcessing scheduled tasks...")
    val schedulingResult = engine.processECANTasks()
    println("✓ Tasks processed: ${schedulingResult.tasksScheduled}")
    println("✓ Tasks completed: ${schedulingResult.tasksCompleted}")
    println("✓ Tasks failed: ${schedulingResult.tasksFailed}")
    println("✓ Remaining in queue: ${schedulingResult.queueSize}")
    
    // Show execution results
    schedulingResult.executionResults.forEach { result ->
        val status = when (result.status) {
            TaskStatus.COMPLETED -> "✓"
            TaskStatus.FAILED -> "✗"
            else -> "⧖"
        }
        println("  $status ${result.taskName}: ${result.executionTimeMs}ms")
    }
    
    println()
    
    // Demo 3: Dynamic Mesh Integration
    println("Demo 3: Dynamic Mesh Integration & Activation Spreading")
    println("-" * 40)
    
    // Get initial mesh connectivity
    val initialMesh = engine.getMeshConnectivity(0.4f)
    println("Initial mesh state:")
    println("  Nodes: ${initialMesh.totalNodes}")
    println("  Edges: ${initialMesh.totalEdges}")
    println("  Average connectivity: ${String.format("%.2f", initialMesh.averageConnectivity)}")
    println("  Attention clusters: ${initialMesh.attentionClusters.size}")
    
    // Show attention clusters
    initialMesh.attentionClusters.forEachIndexed { index, cluster ->
        println("    Cluster ${index + 1}: ${cluster.atoms.size} atoms, " +
                "avg attention=${String.format("%.3f", cluster.averageAttention)}, " +
                "cohesion=${String.format("%.3f", cluster.cohesionStrength)}")
    }
    
    // Perform activation spreading
    val highAttentionAtoms = initialMesh.connectivityMatrix.keys.take(3).toList()
    if (highAttentionAtoms.isNotEmpty()) {
        println("\nPerforming activation spreading from high-attention atoms...")
        val spreadingResult = engine.performActivationSpreading(
            initialAtomIds = highAttentionAtoms,
            spreadingStrength = 0.7f,
            maxDepth = 3
        )
        
        println("✓ Activated atoms: ${spreadingResult.activatedAtoms}")
        println("✓ Total activation: ${String.format("%.3f", spreadingResult.totalActivation)}")
        println("✓ Spreading depth: ${spreadingResult.spreadingDepth}")
        
        // Show spreading path
        spreadingResult.spreadingPath.forEachIndexed { depth, level ->
            println("  Depth $depth: ${level.activations.size} atoms activated")
        }
    }
    
    println()
    
    // Demo 4: Real-World Verification & Performance
    println("Demo 4: Real-World Verification & Performance Analysis")
    println("-" * 40)
    
    // Run ECAN verification
    println("Running ECAN system verification...")
    val ecanVerification = engine.verifyECAN()
    
    println("✓ System health: ${if (ecanVerification.isHealthy) "HEALTHY" else "ISSUES DETECTED"}")
    println("✓ Attention distribution score: ${String.format("%.3f", ecanVerification.attentionDistributionScore)}")
    println("✓ Resource efficiency score: ${String.format("%.3f", ecanVerification.resourceEfficiencyScore)}")
    
    if (ecanVerification.issues.isNotEmpty()) {
        println("Issues found:")
        ecanVerification.issues.take(3).forEach { issue ->
            println("  ⚠ $issue")
        }
    }
    
    if (ecanVerification.warnings.isNotEmpty()) {
        println("Warnings:")
        ecanVerification.warnings.take(3).forEach { warning ->
            println("  ⚡ $warning")
        }
    }
    
    // Performance metrics
    val perf = ecanVerification.performanceMetrics
    println("\nPerformance benchmarks:")
    println("✓ Attention allocation: ${perf.attentionAllocationTimeMs}ms")
    println("✓ Activation spreading: ${perf.activationSpreadingTimeMs}ms")
    println("✓ Atoms processed: ${perf.atomsProcessed}")
    println("✓ Throughput: ${String.format("%.1f", perf.throughputAtomsPerSecond)} atoms/sec")
    
    println()
    
    // Demo 5: System Statistics & Health
    println("Demo 5: Complete System Statistics")
    println("-" * 40)
    
    val ecanStats = engine.getECANStats()
    val schedulerStats = engine.getECANSchedulerStats()
    val overallStats = engine.getStatistics()
    
    println("ECAN Statistics:")
    println("  Total atoms: ${ecanStats.totalAtoms}")
    println("  High attention atoms: ${ecanStats.highAttentionAtoms}")
    println("  Average attention: ${String.format("%.3f", ecanStats.averageAttention)}")
    println("  Bank balance: ${String.format("%.2f", ecanStats.bankBalance)}")
    println("  Spreading operations: ${ecanStats.spreadingOperations}")
    
    println("\nScheduler Statistics:")
    println("  Total tasks scheduled: ${schedulerStats.totalTasksScheduled}")
    println("  Currently queued: ${schedulerStats.queuedTasks}")
    println("  Currently running: ${schedulerStats.runningTasks}")
    println("  Completed tasks: ${schedulerStats.completedTasks}")
    println("  Completion rate: ${String.format("%.1f%%", schedulerStats.completionRate * 100)}")
    println("  Average execution time: ${String.format("%.1f", schedulerStats.averageExecutionTimeMs)}ms")
    
    println("\nOverall System Health:")
    println("  System health: ${String.format("%.1f%%", overallStats.systemHealthPercentage * 100)}")
    println("  Active tensor fragments: ${overallStats.activeFragments}")
    println("  Average attention: ${String.format("%.3f", overallStats.averageAttention)}")
    
    println()
    
    // Final demonstration - tensor signature mapping
    println("Demo 6: Tensor Signature Mapping [tasks, attention, priority, resources]")
    println("-" * 40)
    
    val exampleTensor = CognitiveTensor(
        modality = 0.8f,      // -> tasks
        depth = 2.5f,         // -> resources
        context = 0.7f,       // context (preserved)
        salience = 0.9f,      // -> attention
        autonomyIndex = 0.85f // -> priority
    )
    
    println("Original tensor: [${exampleTensor.modality}, ${exampleTensor.depth}, " +
            "${exampleTensor.context}, ${exampleTensor.salience}, ${exampleTensor.autonomyIndex}]")
    
    val ecanTask = engine.tensorToECANTask(exampleTensor)
    println("ECAN task: [tasks=${ecanTask.tasks}, attention=${ecanTask.attention}, " +
            "priority=${ecanTask.priority}, resources=${ecanTask.resources}]")
    
    val reconstructedTensor = engine.ecanTaskToTensor(ecanTask, context = exampleTensor.context)
    println("Reconstructed: [${reconstructedTensor.modality}, ${reconstructedTensor.depth}, " +
            "${reconstructedTensor.context}, ${reconstructedTensor.salience}, ${reconstructedTensor.autonomyIndex}]")
    
    println()
    println("🎯 Phase 2 ECAN Demo completed successfully!")
    println("All attention allocation and resource kernel systems operational.")
}

/**
 * Helper for string repetition
 */
private operator fun String.times(count: Int): String = repeat(count)

/**
 * Task specification helper
 */
private data class TaskSpec(
    val name: String,
    val tasks: Float,
    val attention: Float,
    val priority: Float,
    val resources: Float
)