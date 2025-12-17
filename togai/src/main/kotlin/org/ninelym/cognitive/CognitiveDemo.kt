package org.ninelym.cognitive

import org.ninelym.cognitive.hypergraph.AtomType

/**
 * Demonstration of Phase 1 Cognitive Computing capabilities
 * 
 * This demo showcases the core functionality of cognitive primitives
 * and foundational hypergraph encoding implementation.
 */
fun main() {
    println("🧬 9mly Cognitive Computing Demo - Phase 1")
    println("=" * 50)
    println()
    
    // Initialize cognitive engine
    val engine = CognitiveEngine()
    
    // Demo 1: Process Scheme expressions
    println("Demo 1: Scheme Cognitive Grammar")
    println("-" * 30)
    
    val expressions = listOf(
        "(concept dog)",
        "(concept animal)",
        "(inherit dog animal)",
        "(concept cat)",
        "(similar cat dog)",
        "(concept intelligence)",
        "(implies animal intelligence)"
    )
    
    expressions.forEach { expr ->
        val result = engine.processSchemeExpression(expr)
        when (result) {
            is ProcessingResult.Success -> 
                println("✓ Processed: $expr → ${result.atoms.size} atoms")
            is ProcessingResult.Failure -> 
                println("✗ Failed: $expr → ${result.error}")
        }
    }
    
    println()
    
    // Demo 2: Add cognitive primitives directly
    println("Demo 2: Direct Cognitive Primitives")
    println("-" * 30)
    
    val primitives = listOf(
        Triple("visual-processing", AtomType.EVALUATION, 
               CognitiveTensor(0.9f, 2.0f, 0.8f, 0.9f, 0.7f)),
        Triple("language-understanding", AtomType.CONCEPT,
               CognitiveTensor(0.3f, 3.0f, 0.9f, 0.8f, 0.6f)),
        Triple("motor-control", AtomType.PREDICATE,
               CognitiveTensor(0.7f, 1.5f, 0.6f, 0.5f, 0.8f))
    )
    
    primitives.forEach { (name, type, tensor) ->
        val success = engine.addCognitivePrimitive(name, type, tensor)
        val status = if (success) "✓" else "✗"
        println("$status Added primitive: $name (${type.name})")
    }
    
    println()
    
    // Demo 3: System state and statistics
    println("Demo 3: Cognitive System State")
    println("-" * 30)
    
    val state = engine.getCognitiveState()
    val stats = engine.getStatistics()
    
    println("Active Tensors: ${state.tensors.size}")
    println("Total Atoms: ${state.atomCount}")
    println("Active Fragments: ${state.fragmentCount}")
    println("System Health: ${state.systemHealth}")
    println("Average Attention: ${String.format("%.3f", state.averageAttention)}")
    println("Health Percentage: ${String.format("%.1f%%", stats.systemHealthPercentage * 100)}")
    
    println()
    
    // Demo 4: Verification
    println("Demo 4: System Verification")
    println("-" * 30)
    
    val verificationReport = engine.verify()
    println("Valid Components: ${verificationReport.validComponents}/${verificationReport.totalComponents}")
    if (verificationReport.issues.isNotEmpty()) {
        println("Issues detected:")
        verificationReport.issues.take(3).forEach { issue ->
            println("  - $issue")
        }
    } else {
        println("✓ All systems verified successfully")
    }
    
    println()
    
    // Demo 5: Visualization
    println("Demo 5: Cognitive Visualization")
    println("-" * 30)
    
    val summary = engine.visualize(VisualizationFormat.SUMMARY)
    println(summary)
    
    // Demo 6: Scheme regeneration
    println("\nDemo 6: Bidirectional Translation")
    println("-" * 30)
    
    val regeneratedScheme = engine.generateSchemeExpression(AtomType.INHERITANCE)
    println("Generated Scheme expression:")
    println(regeneratedScheme)
    
    println()
    
    // Demo 7: Tensor operations example
    println("Demo 7: Tensor Operations")
    println("-" * 30)
    
    val sampleTensor = CognitiveTensor(0.6f, 1.8f, 0.7f, 0.8f, 0.5f)
    println("Sample Tensor:")
    println("  Modality: ${sampleTensor.modality}")
    println("  Depth: ${sampleTensor.depth}")
    println("  Context: ${sampleTensor.context}")
    println("  Salience: ${sampleTensor.salience}")
    println("  Autonomy: ${sampleTensor.autonomyIndex}")
    println("  Attention Weight: ${String.format("%.3f", sampleTensor.computeAttentionWeight())}")
    println("  Is Valid: ${sampleTensor.isValid()}")
    
    println()
    println("🎯 Demo completed successfully!")
    println("Phase 1 cognitive primitives are fully operational.")
}

/**
 * Helper for string repetition
 */
private operator fun String.times(count: Int): String = repeat(count)