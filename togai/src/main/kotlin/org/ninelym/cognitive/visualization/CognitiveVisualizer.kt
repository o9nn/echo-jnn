package org.ninelym.cognitive.visualization

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.hypergraph.Atom
import org.ninelym.cognitive.hypergraph.Hypergraph
import org.ninelym.cognitive.hypergraph.AtomType

/**
 * Visualization utilities for cognitive primitives
 * 
 * Provides text-based and data export capabilities for visualizing
 * cognitive structures and tensor operations
 */
class CognitiveVisualizer {
    
    /**
     * Generate ASCII art representation of tensor values
     */
    fun visualizeTensor(tensor: CognitiveTensor, width: Int = 50): String {
        val builder = StringBuilder()
        builder.appendLine("Cognitive Tensor Visualization")
        builder.appendLine("=" * 40)
        
        val values = listOf(
            "Modality" to tensor.modality,
            "Depth" to tensor.depth,
            "Context" to tensor.context,
            "Salience" to tensor.salience,
            "Autonomy" to tensor.autonomyIndex
        )
        
        values.forEach { (name, value) ->
            val barLength = (value * width).toInt()
            val bar = "█".repeat(barLength) + "░".repeat(width - barLength)
            builder.appendLine("$name:     |$bar| ${String.format("%.3f", value)}")
        }
        
        builder.appendLine()
        builder.appendLine("Attention Weight: ${String.format("%.3f", tensor.computeAttentionWeight())}")
        builder.appendLine("Valid: ${tensor.isValid()}")
        
        return builder.toString()
    }
    
    /**
     * Generate text-based hypergraph visualization
     */
    fun visualizeHypergraph(hypergraph: Hypergraph): String {
        val builder = StringBuilder()
        val stats = hypergraph.getStats()
        
        builder.appendLine("Hypergraph Visualization")
        builder.appendLine("=" * 40)
        builder.appendLine("Atoms: ${stats.atomCount}")
        builder.appendLine("Links: ${stats.linkCount}")
        builder.appendLine("Avg Attention: ${String.format("%.3f", stats.averageAttention)}")
        builder.appendLine()
        
        // Visualize atom type distribution
        builder.appendLine("Atom Type Distribution:")
        stats.typeDistribution.forEach { (type, count) ->
            val percentage = if (stats.atomCount > 0) count * 100 / stats.atomCount else 0
            builder.appendLine("  $type: $count (${percentage}%)")
        }
        builder.appendLine()
        
        // Show high-attention atoms
        val activeAtoms = hypergraph.getActiveTensors(0.5f)
        if (activeAtoms.isNotEmpty()) {
            builder.appendLine("High Attention Atoms:")
            activeAtoms.take(10).forEach { tensor ->
                builder.appendLine("  Attention: ${String.format("%.3f", tensor.computeAttentionWeight())}")
            }
        }
        
        return builder.toString()
    }
    
    /**
     * Create DOT format representation for Graphviz
     */
    fun generateDotGraph(hypergraph: Hypergraph): String {
        val builder = StringBuilder()
        builder.appendLine("digraph CognitiveGraph {")
        builder.appendLine("  rankdir=TB;")
        builder.appendLine("  node [shape=box, style=rounded];")
        builder.appendLine()
        
        // Add atoms as nodes
        AtomType.values().forEach { type ->
            val atoms = hypergraph.getAtomsByType(type)
            atoms.take(20).forEach { atom -> // Limit for visualization
                val color = getTypeColor(atom.type)
                val attention = atom.attentionValue.totalImportance()
                val size = 0.5 + attention
                
                builder.appendLine(
                    "  \"${atom.id}\" [label=\"${atom.name}\", " +
                    "color=\"$color\", fontsize=${(size * 10).toInt()}];"
                )
            }
        }
        
        builder.appendLine("}")
        return builder.toString()
    }
    
    /**
     * Generate CSV export of tensor data
     */
    fun exportTensorData(tensors: List<CognitiveTensor>): String {
        val builder = StringBuilder()
        builder.appendLine("modality,depth,context,salience,autonomy_index,attention_weight,valid")
        
        tensors.forEach { tensor ->
            builder.appendLine(
                "${tensor.modality},${tensor.depth},${tensor.context}," +
                "${tensor.salience},${tensor.autonomyIndex}," +
                "${tensor.computeAttentionWeight()},${tensor.isValid()}"
            )
        }
        
        return builder.toString()
    }
    
    /**
     * Create visual summary report
     */
    fun generateSummaryReport(
        hypergraph: Hypergraph,
        tensors: List<CognitiveTensor>
    ): String {
        val builder = StringBuilder()
        val stats = hypergraph.getStats()
        
        builder.appendLine("═══════════════════════════════════════")
        builder.appendLine("    COGNITIVE SYSTEM SUMMARY REPORT")
        builder.appendLine("═══════════════════════════════════════")
        builder.appendLine()
        
        // System overview
        builder.appendLine("SYSTEM OVERVIEW:")
        builder.appendLine("  Total Atoms: ${stats.atomCount}")
        builder.appendLine("  Total Links: ${stats.linkCount}")
        builder.appendLine("  Active Tensors: ${tensors.size}")
        builder.appendLine("  Avg Attention: ${String.format("%.3f", stats.averageAttention)}")
        builder.appendLine()
        
        // Tensor statistics
        if (tensors.isNotEmpty()) {
            val validTensors = tensors.count { it.isValid() }
            val avgAttention = tensors.map { it.computeAttentionWeight() }.average()
            
            builder.appendLine("TENSOR ANALYSIS:")
            builder.appendLine("  Valid Tensors: $validTensors/${tensors.size}")
            builder.appendLine("  Avg Attention Weight: ${String.format("%.3f", avgAttention)}")
            builder.appendLine("  Max Attention: ${String.format("%.3f", tensors.maxOfOrNull { it.computeAttentionWeight() } ?: 0.0f)}")
            builder.appendLine()
        }
        
        // Type distribution visualization
        builder.appendLine("ATOM TYPE DISTRIBUTION:")
        stats.typeDistribution.forEach { (type, count) ->
            val bar = "█".repeat((count * 20 / stats.atomCount.coerceAtLeast(1)).coerceAtMost(20))
            builder.appendLine("  ${type.name.padEnd(12)}: $bar ($count)")
        }
        
        builder.appendLine()
        builder.appendLine("Report generated at: ${java.time.Instant.now()}")
        builder.appendLine("═══════════════════════════════════════")
        
        return builder.toString()
    }
    
    private fun getTypeColor(type: AtomType): String {
        return when (type) {
            AtomType.CONCEPT -> "lightblue"
            AtomType.PREDICATE -> "lightgreen"
            AtomType.LINK -> "gray"
            AtomType.NODE -> "yellow"
            AtomType.EVALUATION -> "orange"
            AtomType.INHERITANCE -> "red"
            AtomType.SIMILARITY -> "purple"
            AtomType.IMPLICATION -> "darkgreen"
        }
    }
}

/**
 * Helper for string repetition (Kotlin doesn't have built-in operator)
 */
private operator fun String.times(count: Int): String = repeat(count)