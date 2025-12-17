package org.ninelym.cognitive.neural

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.hypergraph.Atom
import org.ninelym.cognitive.hypergraph.AtomType
import org.ninelym.cognitive.hypergraph.TruthValue
import org.ninelym.cognitive.hypergraph.AttentionValue
import kotlin.system.measureTimeMillis

/**
 * Comprehensive benchmarking framework for custom ggml kernels
 * 
 * Provides performance metrics collection, tensor operation benchmarks,
 * and neural-symbolic computation analysis aligned with tensor signature
 * [atoms, confidence, features].
 */
class TensorBenchmarkFramework {
    
    private val kernel = GgmlNeuralSymbolicKernel()
    private val benchmarkResults = mutableListOf<BenchmarkResult>()
    
    /**
     * Initialize benchmarking framework
     */
    fun initialize(backend: GgmlBackend = GgmlBackend.CPU): Boolean {
        return kernel.initialize(backend)
    }
    
    /**
     * Run comprehensive benchmark suite
     */
    fun runBenchmarkSuite(): BenchmarkSuite {
        val suiteStartTime = System.currentTimeMillis()
        
        println("🧪 Starting Neural-Symbolic Tensor Benchmark Suite")
        println("=".repeat(50))
        
        val results = mutableListOf<BenchmarkResult>()
        
        // 1. Neural-Symbolic Fusion Benchmarks
        results.addAll(benchmarkNeuralSymbolicFusion())
        
        // 2. Tensor Inference Benchmarks  
        results.addAll(benchmarkTensorInference())
        
        // 3. Batch Processing Benchmarks
        results.addAll(benchmarkBatchProcessing())
        
        // 4. Memory Performance Benchmarks
        results.addAll(benchmarkMemoryPerformance())
        
        // 5. Scalability Benchmarks
        results.addAll(benchmarkScalability())
        
        val suiteEndTime = System.currentTimeMillis()
        val totalDuration = suiteEndTime - suiteStartTime
        
        return BenchmarkSuite(
            results = results,
            totalDuration = totalDuration,
            summary = generateSummary(results)
        )
    }
    
    /**
     * Benchmark neural-symbolic fusion operations
     */
    private fun benchmarkNeuralSymbolicFusion(): List<BenchmarkResult> {
        println("🔬 Benchmarking Neural-Symbolic Fusion...")
        
        val results = mutableListOf<BenchmarkResult>()
        
        // Test with different atom counts
        val atomCounts = listOf(1, 5, 10, 25, 50, 100)
        
        atomCounts.forEach { count ->
            val atoms = generateTestAtoms(count)
            val embeddings = FloatArray(512) { kotlin.random.Random.nextFloat() }
            
            var totalTime = 0L
            var iterations = 0
            val warmupIterations = 5
            val benchmarkIterations = 20
            
            // Warmup
            repeat(warmupIterations) {
                kernel.neuralSymbolicFusion(atoms, embeddings, 0.8f)
            }
            
            // Benchmark
            repeat(benchmarkIterations) {
                val time = measureTimeMillis {
                    kernel.neuralSymbolicFusion(atoms, embeddings, 0.8f)
                }
                totalTime += time
                iterations++
            }
            
            val avgTime = totalTime.toDouble() / iterations
            val throughput = 1000.0 / avgTime // Operations per second
            
            results.add(
                BenchmarkResult(
                    operation = "neural_symbolic_fusion",
                    parameters = mapOf("atom_count" to count),
                    avgTimeMs = avgTime,
                    throughputOps = throughput,
                    memoryUsageMb = estimateMemoryUsage(atoms, embeddings),
                    success = true
                )
            )
            
            println("  • $count atoms: ${String.format("%.2f", avgTime)} ms, " +
                   "${String.format("%.1f", throughput)} ops/sec")
        }
        
        return results
    }
    
    /**
     * Benchmark tensor inference operations
     */
    private fun benchmarkTensorInference(): List<BenchmarkResult> {
        println("🔬 Benchmarking Tensor Inference...")
        
        val results = mutableListOf<BenchmarkResult>()
        val operations = TensorOperation.values()
        val weights = FloatArray(25) { kotlin.random.Random.nextFloat() }
        
        operations.forEach { operation ->
            val tensor = generateTestTensor()
            
            var totalTime = 0L
            var iterations = 0
            val benchmarkIterations = 50
            
            // Warmup
            repeat(5) {
                kernel.tensorInference(tensor, weights, operation)
            }
            
            // Benchmark
            repeat(benchmarkIterations) {
                val time = measureTimeMillis {
                    kernel.tensorInference(tensor, weights, operation)
                }
                totalTime += time
                iterations++
            }
            
            val avgTime = totalTime.toDouble() / iterations
            val throughput = 1000.0 / avgTime
            
            results.add(
                BenchmarkResult(
                    operation = "tensor_inference_${operation.name.lowercase()}",
                    parameters = mapOf("operation" to operation.name),
                    avgTimeMs = avgTime,
                    throughputOps = throughput,
                    memoryUsageMb = estimateMemoryUsage(tensor, weights),
                    success = true
                )
            )
            
            println("  • ${operation.name}: ${String.format("%.3f", avgTime)} ms, " +
                   "${String.format("%.1f", throughput)} ops/sec")
        }
        
        return results
    }
    
    /**
     * Benchmark batch processing operations
     */
    private fun benchmarkBatchProcessing(): List<BenchmarkResult> {
        println("🔬 Benchmarking Batch Processing...")
        
        val results = mutableListOf<BenchmarkResult>()
        val batchSizes = listOf(1, 4, 8, 16, 32, 64)
        val operations = BatchOperation.values()
        
        operations.forEach { batchOp ->
            batchSizes.forEach { batchSize ->
                val tensors = generateTestTensors(batchSize)
                
                var totalTime = 0L
                var iterations = 0
                val benchmarkIterations = 10
                
                // Warmup
                repeat(3) {
                    kernel.batchProcess(tensors, batchOp)
                }
                
                // Benchmark
                repeat(benchmarkIterations) {
                    val time = measureTimeMillis {
                        kernel.batchProcess(tensors, batchOp)
                    }
                    totalTime += time
                    iterations++
                }
                
                val avgTime = totalTime.toDouble() / iterations
                val throughput = (batchSize * 1000.0) / avgTime // Tensors per second
                
                results.add(
                    BenchmarkResult(
                        operation = "batch_${batchOp.name.lowercase()}",
                        parameters = mapOf("batch_size" to batchSize, "operation" to batchOp.name),
                        avgTimeMs = avgTime,
                        throughputOps = throughput,
                        memoryUsageMb = estimateMemoryUsage(tensors),
                        success = true
                    )
                )
                
                println("  • ${batchOp.name} (${batchSize}): ${String.format("%.2f", avgTime)} ms, " +
                       "${String.format("%.1f", throughput)} tensors/sec")
            }
        }
        
        return results
    }
    
    /**
     * Benchmark memory performance
     */
    private fun benchmarkMemoryPerformance(): List<BenchmarkResult> {
        println("🔬 Benchmarking Memory Performance...")
        
        val results = mutableListOf<BenchmarkResult>()
        val memoryTests = listOf(
            "small_tensors" to 100,
            "medium_tensors" to 1000,
            "large_tensors" to 5000
        )
        
        memoryTests.forEach { (testName, tensorCount) ->
            val initialMemory = Runtime.getRuntime().let { 
                it.totalMemory() - it.freeMemory() 
            }
            
            val tensors = generateTestTensors(tensorCount)
            
            val peakMemory = Runtime.getRuntime().let { 
                it.totalMemory() - it.freeMemory() 
            }
            
            val memoryUsage = (peakMemory - initialMemory) / 1024.0 / 1024.0 // MB
            
            // Process tensors to measure processing memory
            val time = measureTimeMillis {
                kernel.batchProcess(tensors, BatchOperation.PARALLEL_INFERENCE)
            }
            
            results.add(
                BenchmarkResult(
                    operation = "memory_$testName",
                    parameters = mapOf("tensor_count" to tensorCount),
                    avgTimeMs = time.toDouble(),
                    throughputOps = tensorCount * 1000.0 / time,
                    memoryUsageMb = memoryUsage,
                    success = true
                )
            )
            
            println("  • $testName ($tensorCount): ${String.format("%.2f", memoryUsage)} MB, " +
                   "${String.format("%.2f", time.toDouble())} ms")
        }
        
        return results
    }
    
    /**
     * Benchmark scalability with increasing complexity
     */
    private fun benchmarkScalability(): List<BenchmarkResult> {
        println("🔬 Benchmarking Scalability...")
        
        val results = mutableListOf<BenchmarkResult>()
        val complexities = listOf(1, 2, 4, 8, 16, 32)
        
        complexities.forEach { complexity ->
            val atoms = generateComplexAtoms(complexity * 10)
            val embeddings = FloatArray(complexity * 64) { kotlin.random.Random.nextFloat() }
            
            val time = measureTimeMillis {
                repeat(10) {
                    kernel.neuralSymbolicFusion(atoms, embeddings, 0.8f)
                }
            }
            
            val avgTime = time.toDouble() / 10
            val throughput = 1000.0 / avgTime
            
            results.add(
                BenchmarkResult(
                    operation = "scalability_test",
                    parameters = mapOf("complexity_factor" to complexity),
                    avgTimeMs = avgTime,
                    throughputOps = throughput,
                    memoryUsageMb = estimateMemoryUsage(atoms, embeddings),
                    success = true
                )
            )
            
            println("  • Complexity ${complexity}x: ${String.format("%.2f", avgTime)} ms, " +
                   "${String.format("%.1f", throughput)} ops/sec")
        }
        
        return results
    }
    
    /**
     * Generate test atoms with different types
     */
    private fun generateTestAtoms(count: Int): List<Atom> {
        val types = AtomType.values()
        return (1..count).map { i ->
            Atom(
                id = "test_atom_$i",
                type = types[i % types.size],
                name = "test_concept_$i",
                truthValue = TruthValue(
                    strength = kotlin.random.Random.nextFloat(),
                    confidence = kotlin.random.Random.nextFloat()
                ),
                attentionValue = AttentionValue(
                    sti = kotlin.random.Random.nextFloat(),
                    lti = kotlin.random.Random.nextFloat()
                )
            )
        }
    }
    
    /**
     * Generate complex atoms with relationships
     */
    private fun generateComplexAtoms(count: Int): List<Atom> {
        val atoms = generateTestAtoms(count)
        // Add complexity through varied truth values and attention
        return atoms.mapIndexed { index, atom ->
            val complexity = 1.0f + (index % 5) * 0.2f
            Atom(
                id = atom.id,
                type = atom.type,
                name = atom.name,
                truthValue = TruthValue(
                    strength = (atom.truthValue.strength * complexity).coerceIn(0.0f, 1.0f),
                    confidence = (atom.truthValue.confidence * complexity).coerceIn(0.0f, 1.0f)
                ),
                attentionValue = AttentionValue(
                    sti = (atom.attentionValue.sti * complexity).coerceIn(0.0f, 1.0f),
                    lti = atom.attentionValue.lti
                )
            )
        }
    }
    
    /**
     * Generate test tensor
     */
    private fun generateTestTensor(): CognitiveTensor {
        return CognitiveTensor(
            modality = kotlin.random.Random.nextFloat(),
            depth = kotlin.random.Random.nextFloat() * 2.0f,
            context = kotlin.random.Random.nextFloat(),
            salience = kotlin.random.Random.nextFloat(),
            autonomyIndex = kotlin.random.Random.nextFloat()
        )
    }
    
    /**
     * Generate multiple test tensors
     */
    private fun generateTestTensors(count: Int): List<CognitiveTensor> {
        return (1..count).map { generateTestTensor() }
    }
    
    /**
     * Estimate memory usage for different data structures
     */
    private fun estimateMemoryUsage(atoms: List<Atom>, embeddings: FloatArray): Double {
        val atomsSize = atoms.size * 200 // Rough estimate per atom
        val embeddingsSize = embeddings.size * 4 // 4 bytes per float
        return (atomsSize + embeddingsSize) / 1024.0 / 1024.0 // MB
    }
    
    private fun estimateMemoryUsage(tensor: CognitiveTensor, weights: FloatArray): Double {
        val tensorSize = 5 * 4 // 5 floats * 4 bytes
        val weightsSize = weights.size * 4
        return (tensorSize + weightsSize) / 1024.0 / 1024.0 // MB
    }
    
    private fun estimateMemoryUsage(tensors: List<CognitiveTensor>): Double {
        return tensors.size * 5 * 4 / 1024.0 / 1024.0 // MB
    }
    
    /**
     * Generate benchmark summary
     */
    private fun generateSummary(results: List<BenchmarkResult>): BenchmarkSummary {
        val successful = results.count { it.success }
        val avgTime = results.map { it.avgTimeMs }.average()
        val avgThroughput = results.map { it.throughputOps }.average()
        val maxMemory = results.maxOfOrNull { it.memoryUsageMb } ?: 0.0
        
        return BenchmarkSummary(
            totalTests = results.size,
            successfulTests = successful,
            failedTests = results.size - successful,
            avgExecutionTimeMs = avgTime,
            avgThroughputOps = avgThroughput,
            peakMemoryUsageMb = maxMemory,
            recommendations = generateRecommendations(results)
        )
    }
    
    /**
     * Generate performance recommendations
     */
    private fun generateRecommendations(results: List<BenchmarkResult>): List<String> {
        val recommendations = mutableListOf<String>()
        
        val avgTime = results.map { it.avgTimeMs }.average()
        val maxMemory = results.maxOfOrNull { it.memoryUsageMb } ?: 0.0
        
        if (avgTime > 10.0) {
            recommendations.add("Consider GPU acceleration for better performance")
        }
        
        if (maxMemory > 100.0) {
            recommendations.add("High memory usage detected - optimize tensor batching")
        }
        
        val batchResults = results.filter { it.operation.startsWith("batch_") }
        if (batchResults.isNotEmpty()) {
            val bestBatchOp = batchResults.maxByOrNull { it.throughputOps }
            bestBatchOp?.let {
                recommendations.add("Use ${it.parameters["operation"]} for optimal batch processing")
            }
        }
        
        return recommendations
    }
    
    /**
     * Cleanup resources
     */
    fun shutdown() {
        kernel.shutdown()
    }
}

/**
 * Individual benchmark result
 */
data class BenchmarkResult(
    val operation: String,
    val parameters: Map<String, Any>,
    val avgTimeMs: Double,
    val throughputOps: Double,
    val memoryUsageMb: Double,
    val success: Boolean
)

/**
 * Complete benchmark suite results
 */
data class BenchmarkSuite(
    val results: List<BenchmarkResult>,
    val totalDuration: Long,
    val summary: BenchmarkSummary
)

/**
 * Benchmark summary statistics
 */
data class BenchmarkSummary(
    val totalTests: Int,
    val successfulTests: Int,
    val failedTests: Int,
    val avgExecutionTimeMs: Double,
    val avgThroughputOps: Double,
    val peakMemoryUsageMb: Double,
    val recommendations: List<String>
)

