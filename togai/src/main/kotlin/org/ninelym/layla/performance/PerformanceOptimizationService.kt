package org.ninelym.layla.performance

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlin.system.measureTimeMillis

/**
 * Performance Optimization Service for monitoring and improving system performance.
 * Tracks memory usage, battery consumption, network efficiency, and provides optimization recommendations.
 */
class PerformanceOptimizationService {
    
    private val _performanceMetrics = MutableStateFlow(PerformanceMetrics())
    val performanceMetrics: StateFlow<PerformanceMetrics> = _performanceMetrics.asStateFlow()
    
    private val _optimizationSuggestions = MutableStateFlow<List<OptimizationSuggestion>>(emptyList())
    val optimizationSuggestions: StateFlow<List<OptimizationSuggestion>> = _optimizationSuggestions.asStateFlow()
    
    private val memoryCache = mutableMapOf<String, CacheEntry<Any>>()
    private val performanceHistory = mutableListOf<PerformanceSnapshot>()
    private var startTime = System.currentTimeMillis()
    
    /**
     * Initialize the performance optimization service
     */
    fun initialize() {
        startTime = System.currentTimeMillis()
        updateMetrics()
    }
    
    /**
     * Update current performance metrics
     */
    fun updateMetrics() {
        val runtime = Runtime.getRuntime()
        val usedMemory = runtime.totalMemory() - runtime.freeMemory()
        val maxMemory = runtime.maxMemory()
        val memoryUsagePercent = (usedMemory.toDouble() / maxMemory * 100).toFloat()
        
        _performanceMetrics.value = PerformanceMetrics(
            memoryUsageMB = usedMemory / (1024 * 1024),
            memoryUsagePercent = memoryUsagePercent,
            maxMemoryMB = maxMemory / (1024 * 1024),
            cacheSize = memoryCache.size,
            uptimeMs = System.currentTimeMillis() - startTime
        )
        
        // Generate optimization suggestions if needed
        generateOptimizationSuggestions()
    }
    
    /**
     * Measure execution time of a code block
     */
    inline fun <T> measurePerformance(
        operationName: String,
        block: () -> T
    ): PerformanceResult<T> {
        val initialMemory = Runtime.getRuntime().let { it.totalMemory() - it.freeMemory() }
        
        val result: T
        val executionTime = measureTimeMillis {
            result = block()
        }
        
        val finalMemory = Runtime.getRuntime().let { it.totalMemory() - it.freeMemory() }
        val memoryDelta = finalMemory - initialMemory
        
        // Record performance snapshot
        recordSnapshot(operationName, executionTime, memoryDelta)
        
        return PerformanceResult(
            result = result,
            executionTimeMs = executionTime,
            memoryDeltaBytes = memoryDelta,
            operationName = operationName
        )
    }
    
    /**
     * Cache management with TTL support
     */
    fun <T> cache(key: String, value: T, ttlMs: Long = 300000) { // 5 min default
        memoryCache[key] = CacheEntry(
            value = value,
            timestamp = System.currentTimeMillis(),
            ttlMs = ttlMs
        )
        
        // Clean expired entries
        cleanExpiredCache()
    }
    
    /**
     * Retrieve cached value if valid
     */
    @Suppress("UNCHECKED_CAST")
    fun <T> getCached(key: String): T? {
        val entry = memoryCache[key] as? CacheEntry<T> ?: return null
        
        if (System.currentTimeMillis() - entry.timestamp > entry.ttlMs) {
            memoryCache.remove(key)
            return null
        }
        
        return entry.value
    }
    
    /**
     * Clear cache
     */
    fun clearCache() {
        memoryCache.clear()
        updateMetrics()
    }
    
    /**
     * Clean expired cache entries
     */
    private fun cleanExpiredCache() {
        val now = System.currentTimeMillis()
        val keysToRemove = memoryCache.entries
            .filter { now - it.value.timestamp > it.value.ttlMs }
            .map { it.key }
        
        keysToRemove.forEach { memoryCache.remove(it) }
    }
    
    /**
     * Optimize memory usage
     */
    fun optimizeMemory(): MemoryOptimizationResult {
        val beforeMemory = Runtime.getRuntime().let { it.totalMemory() - it.freeMemory() }
        
        // Clear expired cache
        cleanExpiredCache()
        
        // Suggest garbage collection (hint only)
        System.gc()
        
        Thread.sleep(100) // Give GC time to run
        
        val afterMemory = Runtime.getRuntime().let { it.totalMemory() - it.freeMemory() }
        val freedMemory = beforeMemory - afterMemory
        
        updateMetrics()
        
        return MemoryOptimizationResult(
            freedMemoryMB = freedMemory / (1024 * 1024),
            expiredCacheCleared = memoryCache.size,
            success = freedMemory > 0
        )
    }
    
    /**
     * Get battery efficiency recommendations
     */
    fun getBatteryOptimizations(): List<BatteryOptimization> {
        val metrics = _performanceMetrics.value
        val optimizations = mutableListOf<BatteryOptimization>()
        
        // Check for high memory usage
        if (metrics.memoryUsagePercent > 80) {
            optimizations.add(BatteryOptimization(
                category = OptimizationCategory.MEMORY,
                impact = Impact.HIGH,
                description = "High memory usage detected (${metrics.memoryUsagePercent.toInt()}%)",
                recommendation = "Clear cache and close unused features"
            ))
        }
        
        // Check cache size
        if (metrics.cacheSize > 100) {
            optimizations.add(BatteryOptimization(
                category = OptimizationCategory.CACHE,
                impact = Impact.MEDIUM,
                description = "Large cache size: ${metrics.cacheSize} entries",
                recommendation = "Clear expired cache entries to reduce memory footprint"
            ))
        }
        
        return optimizations
    }
    
    /**
     * Record performance snapshot
     */
    private fun recordSnapshot(operationName: String, executionTimeMs: Long, memoryDeltaBytes: Long) {
        performanceHistory.add(PerformanceSnapshot(
            timestamp = System.currentTimeMillis(),
            operationName = operationName,
            executionTimeMs = executionTimeMs,
            memoryDeltaBytes = memoryDeltaBytes
        ))
        
        // Keep only last 100 snapshots
        if (performanceHistory.size > 100) {
            performanceHistory.removeAt(0)
        }
    }
    
    /**
     * Get performance history for analysis
     */
    fun getPerformanceHistory(): List<PerformanceSnapshot> {
        return performanceHistory.toList()
    }
    
    /**
     * Analyze performance trends
     */
    fun analyzePerformance(): PerformanceAnalysis {
        if (performanceHistory.isEmpty()) {
            return PerformanceAnalysis(
                averageExecutionTimeMs = 0,
                maxExecutionTimeMs = 0,
                totalOperations = 0,
                slowOperations = emptyList()
            )
        }
        
        val avgTime = performanceHistory.map { it.executionTimeMs }.average()
        val maxTime = performanceHistory.maxOf { it.executionTimeMs }
        val slowOps = performanceHistory
            .filter { it.executionTimeMs > 1000 } // > 1 second
            .sortedByDescending { it.executionTimeMs }
            .take(5)
        
        return PerformanceAnalysis(
            averageExecutionTimeMs = avgTime.toLong(),
            maxExecutionTimeMs = maxTime,
            totalOperations = performanceHistory.size,
            slowOperations = slowOps
        )
    }
    
    /**
     * Generate optimization suggestions
     */
    private fun generateOptimizationSuggestions() {
        val suggestions = mutableListOf<OptimizationSuggestion>()
        val metrics = _performanceMetrics.value
        
        // Memory optimization suggestions
        if (metrics.memoryUsagePercent > 85) {
            suggestions.add(OptimizationSuggestion(
                priority = Priority.HIGH,
                category = OptimizationCategory.MEMORY,
                title = "Critical Memory Usage",
                description = "Memory usage is at ${metrics.memoryUsagePercent.toInt()}%. Consider clearing cache or restarting services.",
                action = "Clear Cache",
                estimatedImpact = "Free up to ${metrics.memoryUsageMB / 4}MB"
            ))
        } else if (metrics.memoryUsagePercent > 70) {
            suggestions.add(OptimizationSuggestion(
                priority = Priority.MEDIUM,
                category = OptimizationCategory.MEMORY,
                title = "High Memory Usage",
                description = "Memory usage is at ${metrics.memoryUsagePercent.toInt()}%.",
                action = "Optimize Memory",
                estimatedImpact = "Improve system responsiveness"
            ))
        }
        
        // Cache optimization
        if (metrics.cacheSize > 150) {
            suggestions.add(OptimizationSuggestion(
                priority = Priority.MEDIUM,
                category = OptimizationCategory.CACHE,
                title = "Large Cache",
                description = "Cache has ${metrics.cacheSize} entries.",
                action = "Clear Expired Cache",
                estimatedImpact = "Reduce memory usage by ~${metrics.cacheSize / 10}MB"
            ))
        }
        
        // Performance analysis
        val analysis = analyzePerformance()
        if (analysis.slowOperations.isNotEmpty()) {
            suggestions.add(OptimizationSuggestion(
                priority = Priority.LOW,
                category = OptimizationCategory.PERFORMANCE,
                title = "Slow Operations Detected",
                description = "${analysis.slowOperations.size} operations took >1 second.",
                action = "Review Performance",
                estimatedImpact = "Identify bottlenecks"
            ))
        }
        
        _optimizationSuggestions.value = suggestions
    }
    
    /**
     * Get network optimization strategies
     */
    fun getNetworkOptimizations(): NetworkOptimizationStrategy {
        return NetworkOptimizationStrategy(
            batchRequests = true,
            useCompression = true,
            cacheResponses = true,
            timeoutMs = 30000,
            retryPolicy = RetryPolicy(
                maxRetries = 3,
                backoffMs = 1000,
                exponentialBackoff = true
            )
        )
    }
}

/**
 * Current performance metrics
 */
data class PerformanceMetrics(
    val memoryUsageMB: Long = 0,
    val memoryUsagePercent: Float = 0f,
    val maxMemoryMB: Long = 0,
    val cacheSize: Int = 0,
    val uptimeMs: Long = 0
)

/**
 * Performance measurement result
 */
data class PerformanceResult<T>(
    val result: T,
    val executionTimeMs: Long,
    val memoryDeltaBytes: Long,
    val operationName: String
)

/**
 * Cache entry with TTL
 */
data class CacheEntry<T>(
    val value: T,
    val timestamp: Long,
    val ttlMs: Long
)

/**
 * Performance snapshot for history
 */
data class PerformanceSnapshot(
    val timestamp: Long,
    val operationName: String,
    val executionTimeMs: Long,
    val memoryDeltaBytes: Long
)

/**
 * Performance analysis result
 */
data class PerformanceAnalysis(
    val averageExecutionTimeMs: Long,
    val maxExecutionTimeMs: Long,
    val totalOperations: Int,
    val slowOperations: List<PerformanceSnapshot>
)

/**
 * Memory optimization result
 */
data class MemoryOptimizationResult(
    val freedMemoryMB: Long,
    val expiredCacheCleared: Int,
    val success: Boolean
)

/**
 * Battery optimization suggestion
 */
data class BatteryOptimization(
    val category: OptimizationCategory,
    val impact: Impact,
    val description: String,
    val recommendation: String
)

/**
 * Optimization suggestion
 */
data class OptimizationSuggestion(
    val priority: Priority,
    val category: OptimizationCategory,
    val title: String,
    val description: String,
    val action: String,
    val estimatedImpact: String
)

/**
 * Network optimization strategy
 */
data class NetworkOptimizationStrategy(
    val batchRequests: Boolean,
    val useCompression: Boolean,
    val cacheResponses: Boolean,
    val timeoutMs: Long,
    val retryPolicy: RetryPolicy
)

/**
 * Retry policy configuration
 */
data class RetryPolicy(
    val maxRetries: Int,
    val backoffMs: Long,
    val exponentialBackoff: Boolean
)

/**
 * Optimization category
 */
enum class OptimizationCategory {
    MEMORY,
    CACHE,
    BATTERY,
    NETWORK,
    PERFORMANCE
}

/**
 * Impact level
 */
enum class Impact {
    LOW,
    MEDIUM,
    HIGH,
    CRITICAL
}

/**
 * Priority level
 */
enum class Priority {
    LOW,
    MEDIUM,
    HIGH,
    CRITICAL
}
