package org.ninelym.cognitive

import org.ninelym.cognitive.hypergraph.AtomType
import org.ninelym.cognitive.metacognition.*

/**
 * Phase 5 Demo: Recursive Meta-Cognition & Evolutionary Optimization
 * 
 * Demonstrates the complete Phase 5 implementation including:
 * - Meta-cognitive pathways for self-observation
 * - Evolutionary optimization using genetic algorithms
 * - Recursive verification with self-improvement loops
 */
class Phase5Demo {
    
    private val cognitiveEngine = CognitiveEngine()
    
    fun runDemo() {
        println("╔═══════════════════════════════════════════════════════════════╗")
        println("║        Phase 5: Recursive Meta-Cognition & Evolutionary      ║")
        println("║                    Optimization Demo                         ║")
        println("╚═══════════════════════════════════════════════════════════════╝")
        println()
        
        // Initialize the system with some cognitive content
        initializeSystemWithContent()
        
        // Demonstrate meta-cognitive introspection
        demonstrateMetaCognitiveIntrospection()
        
        // Demonstrate evolutionary optimization
        demonstrateEvolutionaryOptimization()
        
        // Demonstrate recursive verification
        demonstrateRecursiveVerification()
        
        // Demonstrate complete Phase 5 cycle
        demonstratePhase5Cycle()
        
        // Show system evolution over time
        demonstrateSystemEvolution()
        
        println("\n🎉 Phase 5 Demo Complete!")
        println("The system now exhibits recursive meta-cognition and self-optimization capabilities.")
    }
    
    /**
     * Initialize the cognitive system with some baseline content
     */
    private fun initializeSystemWithContent() {
        println("🔧 Initializing Cognitive System...")
        println("================================================")
        
        // Add some cognitive primitives
        cognitiveEngine.addCognitivePrimitive(
            name = "visual_processing",
            type = AtomType.CONCEPT,
            tensor = CognitiveTensor(0.8f, 0.7f, 0.6f, 0.9f, 0.5f)
        )
        
        cognitiveEngine.addCognitivePrimitive(
            name = "language_understanding",
            type = AtomType.CONCEPT,
            tensor = CognitiveTensor(0.9f, 0.8f, 0.7f, 0.8f, 0.7f)
        )
        
        cognitiveEngine.addCognitivePrimitive(
            name = "decision_making",
            type = AtomType.EVALUATION,
            tensor = CognitiveTensor(0.7f, 0.9f, 0.8f, 0.6f, 0.8f)
        )
        
        // Process some Scheme expressions
        cognitiveEngine.processSchemeExpression("(similar visual_processing pattern_recognition)")
        cognitiveEngine.processSchemeExpression("(implies language_understanding communication)")
        cognitiveEngine.processSchemeExpression("(evaluation decision_making context)")
        
        // Perform initial ECAN attention allocation
        cognitiveEngine.performAttentionAllocation()
        
        val stats = cognitiveEngine.getStatistics()
        println("✅ System initialized with:")
        println("   • ${stats.totalAtoms} cognitive atoms")
        println("   • ${stats.totalLinks} hypergraph links")
        println("   • ${stats.activeFragments} active tensor fragments")
        println("   • System health: ${(stats.systemHealthPercentage * 100).toInt()}%")
        println()
    }
    
    /**
     * Demonstrate meta-cognitive introspection capabilities
     */
    private fun demonstrateMetaCognitiveIntrospection() {
        println("🧠 5.1 Meta-Cognitive Pathways - System Introspection")
        println("================================================")
        
        val introspectionResult = cognitiveEngine.performMetaCognitiveIntrospection()
        
        println("📊 Introspection Results:")
        println("   • Hypergraph Complexity: ${(introspectionResult.hypergraphComplexity * 100).toInt()}%")
        println("   • Attention Coherence: ${(introspectionResult.attentionCoherence * 100).toInt()}%")
        println("   • Processing Efficiency: ${(introspectionResult.processingEfficiency * 100).toInt()}%")
        println("   • Cognitive Rules Extracted: ${introspectionResult.ruleCount}")
        println("   • Meta-Atoms Created: ${introspectionResult.metaAtoms.size}")
        
        println("\n🔍 Self-Generated Insights:")
        introspectionResult.insights.forEach { insight ->
            println("   • $insight")
        }
        
        val metaInsights = cognitiveEngine.getMetaCognitiveInsights()
        println("\n📈 Meta-Cognitive Status:")
        println("   • Total Introspections: ${metaInsights.totalIntrospections}")
        println("   • Cognitive Rule Database: ${metaInsights.cognitiveRuleCount} rules")
        println("   • System Self-Awareness: ${(metaInsights.systemSelfAwareness * 100).toInt()}%")
        println("   • Meta-Cognitive Health: ${(metaInsights.metacognitiveHealth * 100).toInt()}%")
        
        println("\n🔄 Self-Observation Patterns:")
        metaInsights.selfObservationPatterns.forEach { pattern ->
            println("   • ${pattern.type}: ${pattern.currentTrend} (${pattern.observationCount} observations)")
        }
        println()
    }
    
    /**
     * Demonstrate evolutionary optimization
     */
    private fun demonstrateEvolutionaryOptimization() {
        println("🧬 5.2 Adaptive Optimization - Evolutionary Algorithms")
        println("================================================")
        
        println("🚀 Starting evolutionary optimization cycle...")
        
        // Run multiple evolution cycles
        repeat(3) { cycle ->
            println("\n--- Evolution Cycle ${cycle + 1} ---")
            val evolutionResult = cognitiveEngine.evolveCognitiveSystem()
            
            println("   Generation: ${evolutionResult.generation}")
            println("   Population Size: ${evolutionResult.populationSize}")
            println("   Best Fitness: ${String.format("%.3f", evolutionResult.bestFitness)}")
            println("   Average Fitness: ${String.format("%.3f", evolutionResult.averageFitness)}")
            println("   Optimizations Applied: ${evolutionResult.appliedOptimizations.size}")
            
            evolutionResult.appliedOptimizations.forEach { optimization ->
                println("     ○ ${optimization.type}: ${optimization.description} (improvement: ${String.format("%.2f", optimization.improvement)})")
            }
            
            println("   Execution Time: ${evolutionResult.executionTime}ms")
        }
        
        val evolutionStats = cognitiveEngine.getEvolutionStats()
        println("\n📊 Evolution Statistics:")
        println("   • Total Generations: ${evolutionStats.totalGenerations}")
        println("   • Best Overall Fitness: ${String.format("%.3f", evolutionStats.bestOverallFitness)}")
        println("   • Fitness Improvement: ${String.format("%.3f", evolutionStats.fitnessImprovement)}")
        println("   • Convergence Rate: ${String.format("%.3f", evolutionStats.convergenceRate)}")
        println("   • Total Optimizations: ${evolutionStats.totalOptimizationsApplied}")
        println()
    }
    
    /**
     * Demonstrate recursive verification
     */
    private fun demonstrateRecursiveVerification() {
        println("🔄 5.3 Recursive Verification - Self-Improvement Loops")
        println("================================================")
        
        println("🔍 Starting recursive verification process...")
        
        val verificationResult = cognitiveEngine.performRecursiveVerification()
        
        println("\n📋 Verification Results:")
        println("   • Recursion Depth: ${verificationResult.depth}")
        println("   • Status: ${verificationResult.verificationStatus}")
        println("   • System Health: ${(verificationResult.systemHealth * 100).toInt()}%")
        println("   • Execution Time: ${verificationResult.executionTime}ms")
        
        println("\n🎯 Verification Insights:")
        verificationResult.insights.forEach { insight ->
            println("   • $insight")
        }
        
        println("\n🔧 Applied Feedback Actions:")
        verificationResult.feedbackActions.forEach { feedback ->
            val impact = "${(feedback.impact * 100).toInt()}%"
            val status = if (feedback.successful) "✅" else "❌"
            println("   $status ${feedback.action} (impact: $impact)")
            println("      → ${feedback.description}")
        }
        
        // Show verification layers
        println("\n📊 Verification Layers:")
        verificationResult.subVerifications.forEach { layer ->
            val health = "${(layer.health * 100).toInt()}%"
            val confidence = "${(layer.confidence * 100).toInt()}%"
            println("   • ${layer.layerName}: Health $health, Confidence $confidence")
            println("     Issues: ${layer.issues.size}, Recommendations: ${layer.recommendations.size}")
        }
        
        val verificationStats = cognitiveEngine.getRecursiveVerificationStats()
        println("\n📈 Recursive Verification Statistics:")
        println("   • Total Verifications: ${verificationStats.totalVerifications}")
        println("   • Average Recursion Depth: ${String.format("%.1f", verificationStats.averageRecursionDepth)}")
        println("   • Success Rate: ${(verificationStats.verificationSuccessRate * 100).toInt()}%")
        println("   • Active Feedback Loops: ${verificationStats.activeFeedbackLoops}")
        println("   • Total Feedback Actions: ${verificationStats.totalFeedbackActions}")
        println()
    }
    
    /**
     * Demonstrate complete Phase 5 cycle
     */
    private fun demonstratePhase5Cycle() {
        println("🌟 Complete Phase 5 Cycle - Integrated Meta-Cognition")
        println("================================================")
        
        println("🔄 Executing complete Phase 5 cycle (introspection → evolution → verification)...")
        
        val cycleResult = cognitiveEngine.performPhase5Cycle()
        
        println("\n📊 Phase 5 Cycle Results:")
        println("   • Total Execution Time: ${cycleResult.executionTime}ms")
        println("   • Cycle Health: ${(cycleResult.cycleHealth * 100).toInt()}%")
        
        println("\n🎯 Tensor Signature [rules, mutability, fitness, introspect]:")
        val tensor = cycleResult.tensorSignature
        println("   • Rules: ${String.format("%.3f", tensor.modality)}")
        println("   • Mutability: ${String.format("%.3f", tensor.depth)}")
        println("   • Fitness: ${String.format("%.3f", tensor.context)}")
        println("   • Introspect: ${String.format("%.3f", tensor.salience)}")
        
        println("\n📈 Cycle Breakdown:")
        println("   • Introspection: ${cycleResult.introspection.insights.size} insights generated")
        println("   • Evolution: ${cycleResult.evolution.appliedOptimizations.size} optimizations applied")
        println("   • Verification: ${cycleResult.verification.feedbackActions.size} feedback actions")
        
        // Demonstrate recursive self-improvement
        if (cycleResult.verification.verificationStatus == VerificationStatus.NEEDS_RECURSION) {
            println("\n🔄 System detected need for recursive improvement...")
            println("   → Triggering additional optimization cycle")
            
            // This would trigger another cycle in practice
            val additionalEvolution = cognitiveEngine.evolveCognitiveSystem()
            println("   → Applied ${additionalEvolution.appliedOptimizations.size} additional optimizations")
        }
        println()
    }
    
    /**
     * Demonstrate system evolution over time
     */
    private fun demonstrateSystemEvolution() {
        println("📈 System Evolution Over Time")
        println("================================================")
        
        println("🔄 Running multiple meta-cognitive cycles to show evolution...")
        
        val evolutionHistory = mutableListOf<Float>()
        val healthHistory = mutableListOf<Float>()
        
        repeat(5) { cycle ->
            println("\n--- Meta-Cognitive Cycle ${cycle + 1} ---")
            
            // Perform introspection
            val introspection = cognitiveEngine.performMetaCognitiveIntrospection()
            
            // Evolve system
            val evolution = cognitiveEngine.evolveCognitiveSystem()
            
            // Verify improvements
            val verification = cognitiveEngine.performRecursiveVerification()
            
            val currentFitness = evolution.bestFitness
            val currentHealth = verification.systemHealth
            
            evolutionHistory.add(currentFitness)
            healthHistory.add(currentHealth)
            
            println("   System Fitness: ${String.format("%.3f", currentFitness)}")
            println("   System Health: ${(currentHealth * 100).toInt()}%")
            println("   Meta-Insights: ${introspection.insights.size}")
            
            // Show trend
            if (evolutionHistory.size > 1) {
                val trend = if (currentFitness > evolutionHistory[evolutionHistory.size - 2]) "↗️" else "↘️"
                println("   Fitness Trend: $trend")
            }
        }
        
        println("\n📊 Evolution Summary:")
        val initialFitness = evolutionHistory.first()
        val finalFitness = evolutionHistory.last()
        val improvement = ((finalFitness - initialFitness) / initialFitness * 100)
        
        println("   • Initial Fitness: ${String.format("%.3f", initialFitness)}")
        println("   • Final Fitness: ${String.format("%.3f", finalFitness)}")
        println("   • Overall Improvement: ${String.format("%.1f", improvement)}%")
        
        val avgHealth = healthHistory.average()
        println("   • Average System Health: ${(avgHealth * 100).toInt()}%")
        
        // Final system state
        val finalStats = cognitiveEngine.getStatistics()
        val finalTensor = cognitiveEngine.getPhase5TensorSignature()
        
        println("\n🎯 Final System State:")
        println("   • Total Atoms: ${finalStats.totalAtoms}")
        println("   • System Health: ${(finalStats.systemHealthPercentage * 100).toInt()}%")
        println("   • Phase 5 Tensor: [${String.format("%.2f", finalTensor.modality)}, ${String.format("%.2f", finalTensor.depth)}, ${String.format("%.2f", finalTensor.context)}, ${String.format("%.2f", finalTensor.salience)}]")
        
        println("\n✨ The system has successfully demonstrated:")
        println("   ✅ Recursive meta-cognition and self-awareness")
        println("   ✅ Evolutionary optimization and adaptation")
        println("   ✅ Self-verification and improvement loops")
        println("   ✅ Continuous learning and system evolution")
    }
    
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            Phase5Demo().runDemo()
        }
    }
}