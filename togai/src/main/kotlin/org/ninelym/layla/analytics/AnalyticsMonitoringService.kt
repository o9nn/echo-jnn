package org.ninelym.layla.analytics

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Analytics and Monitoring Service for privacy-respecting usage analytics,
 * error tracking, performance metrics, and system health monitoring.
 */
class AnalyticsMonitoringService {
    
    private val _systemHealth = MutableStateFlow(SystemHealth())
    val systemHealth: StateFlow<SystemHealth> = _systemHealth.asStateFlow()
    
    private val _usageMetrics = MutableStateFlow(UsageMetrics())
    val usageMetrics: StateFlow<UsageMetrics> = _usageMetrics.asStateFlow()
    
    private val eventLog = mutableListOf<AnalyticsEvent>()
    private val errorLog = mutableListOf<ErrorEvent>()
    private val performanceLog = mutableListOf<PerformanceMetric>()
    
    private var privacyMode = true  // Privacy-first by default
    private var startTime = System.currentTimeMillis()
    
    /**
     * Initialize analytics and monitoring service
     */
    fun initialize(privacyRespecting: Boolean = true) {
        privacyMode = privacyRespecting
        startTime = System.currentTimeMillis()
        
        recordEvent(AnalyticsEvent(
            eventType = EventType.SYSTEM,
            eventName = "service_initialized",
            properties = mapOf("privacy_mode" to privacyMode.toString())
        ))
        
        updateSystemHealth()
    }
    
    /**
     * Track user event (privacy-respecting)
     */
    fun trackEvent(eventName: String, properties: Map<String, String> = emptyMap()) {
        if (!privacyMode) {
            // In non-privacy mode, could send to analytics service
            // For now, just log locally
        }
        
        recordEvent(AnalyticsEvent(
            eventType = EventType.USER_ACTION,
            eventName = eventName,
            properties = if (privacyMode) sanitizeProperties(properties) else properties
        ))
        
        updateUsageMetrics()
    }
    
    /**
     * Track feature usage
     */
    fun trackFeatureUsage(featureName: String, durationMs: Long? = null) {
        recordEvent(AnalyticsEvent(
            eventType = EventType.FEATURE_USAGE,
            eventName = featureName,
            properties = durationMs?.let { mapOf("duration_ms" to it.toString()) } ?: emptyMap()
        ))
        
        updateUsageMetrics()
    }
    
    /**
     * Track error
     */
    fun trackError(
        errorType: String,
        errorMessage: String,
        stackTrace: String? = null,
        severity: ErrorSeverity = ErrorSeverity.MEDIUM
    ) {
        val errorEvent = ErrorEvent(
            timestamp = System.currentTimeMillis(),
            errorType = errorType,
            errorMessage = if (privacyMode) sanitizeErrorMessage(errorMessage) else errorMessage,
            stackTrace = if (privacyMode) null else stackTrace,
            severity = severity
        )
        
        errorLog.add(errorEvent)
        
        // Keep only last 500 errors
        if (errorLog.size > 500) {
            errorLog.removeAt(0)
        }
        
        updateSystemHealth()
    }
    
    /**
     * Record performance metric
     */
    fun recordPerformance(
        operationName: String,
        durationMs: Long,
        memoryUsageMB: Long? = null,
        success: Boolean = true
    ) {
        val metric = PerformanceMetric(
            timestamp = System.currentTimeMillis(),
            operationName = operationName,
            durationMs = durationMs,
            memoryUsageMB = memoryUsageMB,
            success = success
        )
        
        performanceLog.add(metric)
        
        // Keep only last 1000 metrics
        if (performanceLog.size > 1000) {
            performanceLog.removeAt(0)
        }
        
        updateSystemHealth()
    }
    
    /**
     * Get health monitoring dashboard
     */
    fun getHealthDashboard(): HealthDashboard {
        val uptime = System.currentTimeMillis() - startTime
        val recentErrors = errorLog.takeLast(10)
        val errorRate = calculateErrorRate()
        val avgResponseTime = calculateAverageResponseTime()
        
        return HealthDashboard(
            systemStatus = determineSystemStatus(),
            uptime = uptime,
            totalEvents = eventLog.size,
            totalErrors = errorLog.size,
            errorRate = errorRate,
            avgResponseTime = avgResponseTime,
            recentErrors = recentErrors,
            memoryHealthy = isMemoryHealthy(),
            performanceHealthy = isPerformanceHealthy()
        )
    }
    
    /**
     * Get usage analytics report
     */
    fun getUsageReport(periodMs: Long = 86400000): UsageReport {  // 24 hours default
        val cutoff = System.currentTimeMillis() - periodMs
        val recentEvents = eventLog.filter { it.timestamp >= cutoff }
        
        val featureUsage = recentEvents
            .filter { it.eventType == EventType.FEATURE_USAGE }
            .groupBy { it.eventName }
            .mapValues { it.value.size }
            .toList()
            .sortedByDescending { it.second }
            .take(10)
        
        val userActions = recentEvents
            .filter { it.eventType == EventType.USER_ACTION }
            .size
        
        val totalSessions = recentEvents
            .filter { it.eventName == "session_start" }
            .size
        
        return UsageReport(
            periodMs = periodMs,
            totalEvents = recentEvents.size,
            totalUserActions = userActions,
            totalSessions = totalSessions,
            topFeatures = featureUsage.associate { it.first to it.second },
            avgSessionDuration = calculateAvgSessionDuration()
        )
    }
    
    /**
     * Get error report
     */
    fun getErrorReport(periodMs: Long = 86400000): ErrorReport {  // 24 hours default
        val cutoff = System.currentTimeMillis() - periodMs
        val recentErrors = errorLog.filter { it.timestamp >= cutoff }
        
        val errorsByType = recentErrors
            .groupBy { it.errorType }
            .mapValues { it.value.size }
            .toList()
            .sortedByDescending { it.second }
        
        val errorsBySeverity = recentErrors
            .groupBy { it.severity }
            .mapValues { it.value.size }
        
        val crashRate = recentErrors.count { it.severity == ErrorSeverity.CRITICAL }.toDouble() / maxOf(1, recentErrors.size)
        
        return ErrorReport(
            periodMs = periodMs,
            totalErrors = recentErrors.size,
            errorsByType = errorsByType.associate { it.first to it.second },
            errorsBySeverity = errorsBySeverity,
            crashRate = crashRate,
            mostCommonError = errorsByType.firstOrNull()?.first
        )
    }
    
    /**
     * Get performance report
     */
    fun getPerformanceReport(periodMs: Long = 86400000): PerformanceReport {  // 24 hours default
        val cutoff = System.currentTimeMillis() - periodMs
        val recentMetrics = performanceLog.filter { it.timestamp >= cutoff }
        
        if (recentMetrics.isEmpty()) {
            return PerformanceReport(
                periodMs = periodMs,
                totalOperations = 0,
                avgResponseTime = 0,
                p50ResponseTime = 0,
                p95ResponseTime = 0,
                p99ResponseTime = 0,
                slowestOperations = emptyList()
            )
        }
        
        val durations = recentMetrics.map { it.durationMs }.sorted()
        val p50 = durations[durations.size / 2]
        val p95 = durations[(durations.size * 0.95).toInt()]
        val p99 = durations[(durations.size * 0.99).toInt()]
        
        val slowest = recentMetrics
            .sortedByDescending { it.durationMs }
            .take(5)
        
        return PerformanceReport(
            periodMs = periodMs,
            totalOperations = recentMetrics.size,
            avgResponseTime = durations.average().toLong(),
            p50ResponseTime = p50,
            p95ResponseTime = p95,
            p99ResponseTime = p99,
            slowestOperations = slowest
        )
    }
    
    /**
     * Get system health trends
     */
    fun getHealthTrends(periodsCount: Int = 24): HealthTrends {
        // Analyze trends over time periods (e.g., hourly for 24 hours)
        val periodDuration = 3600000L  // 1 hour
        val now = System.currentTimeMillis()
        
        val errorRates = mutableListOf<Double>()
        val responseTimeAvgs = mutableListOf<Long>()
        
        for (i in 0 until periodsCount) {
            val periodEnd = now - (i * periodDuration)
            val periodStart = periodEnd - periodDuration
            
            val periodErrors = errorLog.count { it.timestamp in periodStart..periodEnd }
            val periodMetrics = performanceLog.filter { it.timestamp in periodStart..periodEnd }
            
            errorRates.add(periodErrors.toDouble() / maxOf(1, periodMetrics.size))
            responseTimeAvgs.add(periodMetrics.map { it.durationMs }.average().toLong())
        }
        
        return HealthTrends(
            periodsAnalyzed = periodsCount,
            errorRateTrend = calculateTrend(errorRates),
            responseTimeTrend = calculateTrend(responseTimeAvgs.map { it.toDouble() }),
            healthImproving = isHealthImproving(errorRates)
        )
    }
    
    /**
     * Calculate trend direction
     */
    private fun calculateTrend(values: List<Double>): TrendDirection {
        if (values.size < 2) return TrendDirection.STABLE
        
        val recent = values.take(values.size / 2).average()
        val older = values.drop(values.size / 2).average()
        
        return when {
            recent > older * 1.1 -> TrendDirection.INCREASING
            recent < older * 0.9 -> TrendDirection.DECREASING
            else -> TrendDirection.STABLE
        }
    }
    
    /**
     * Check if health is improving
     */
    private fun isHealthImproving(errorRates: List<Double>): Boolean {
        if (errorRates.size < 2) return true
        
        val recent = errorRates.take(errorRates.size / 2).average()
        val older = errorRates.drop(errorRates.size / 2).average()
        
        return recent < older
    }
    
    /**
     * Update system health
     */
    private fun updateSystemHealth() {
        val errorRate = calculateErrorRate()
        val avgResponseTime = calculateAverageResponseTime()
        
        _systemHealth.value = SystemHealth(
            status = determineSystemStatus(),
            errorRate = errorRate,
            avgResponseTime = avgResponseTime,
            memoryHealthy = isMemoryHealthy(),
            performanceHealthy = isPerformanceHealthy(),
            lastUpdated = System.currentTimeMillis()
        )
    }
    
    /**
     * Update usage metrics
     */
    private fun updateUsageMetrics() {
        val recentEvents = eventLog.takeLast(1000)
        
        _usageMetrics.value = UsageMetrics(
            totalEvents = eventLog.size,
            recentEventCount = recentEvents.size,
            mostUsedFeature = findMostUsedFeature(),
            activeUsers = 1  // Single user app
        )
    }
    
    /**
     * Record analytics event
     */
    private fun recordEvent(event: AnalyticsEvent) {
        eventLog.add(event.copy(timestamp = System.currentTimeMillis()))
        
        // Keep only last 10000 events
        if (eventLog.size > 10000) {
            eventLog.removeAt(0)
        }
    }
    
    /**
     * Sanitize properties for privacy
     */
    private fun sanitizeProperties(properties: Map<String, String>): Map<String, String> {
        // Remove PII and sensitive data
        return properties.filterKeys { key ->
            !key.contains("email", ignoreCase = true) &&
            !key.contains("phone", ignoreCase = true) &&
            !key.contains("name", ignoreCase = true) &&
            !key.contains("address", ignoreCase = true)
        }
    }
    
    /**
     * Sanitize error message for privacy
     */
    private fun sanitizeErrorMessage(message: String): String {
        // Remove potential PII from error messages
        return message
            .replace(Regex("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}"), "[EMAIL]")
            .replace(Regex("\\d{3}-\\d{3}-\\d{4}"), "[PHONE]")
            .replace(Regex("/users/[^/]+"), "/users/[USER]")
    }
    
    /**
     * Calculate error rate
     */
    private fun calculateErrorRate(): Double {
        val recentPeriod = System.currentTimeMillis() - 3600000  // Last hour
        val recentErrors = errorLog.count { it.timestamp >= recentPeriod }
        val recentEvents = eventLog.count { it.timestamp >= recentPeriod }
        
        return if (recentEvents > 0) {
            recentErrors.toDouble() / recentEvents
        } else {
            0.0
        }
    }
    
    /**
     * Calculate average response time
     */
    private fun calculateAverageResponseTime(): Long {
        val recentPeriod = System.currentTimeMillis() - 3600000  // Last hour
        val recentMetrics = performanceLog.filter { it.timestamp >= recentPeriod }
        
        return if (recentMetrics.isNotEmpty()) {
            recentMetrics.map { it.durationMs }.average().toLong()
        } else {
            0
        }
    }
    
    /**
     * Calculate average session duration
     */
    private fun calculateAvgSessionDuration(): Long {
        // Simplified calculation
        return 1800000  // 30 minutes average
    }
    
    /**
     * Find most used feature
     */
    private fun findMostUsedFeature(): String {
        val featureUsage = eventLog
            .filter { it.eventType == EventType.FEATURE_USAGE }
            .groupBy { it.eventName }
            .mapValues { it.value.size }
        
        return featureUsage.maxByOrNull { it.value }?.key ?: "none"
    }
    
    /**
     * Determine system status
     */
    private fun determineSystemStatus(): SystemStatus {
        val errorRate = calculateErrorRate()
        val avgResponseTime = calculateAverageResponseTime()
        
        return when {
            errorRate > 0.1 || avgResponseTime > 5000 -> SystemStatus.CRITICAL
            errorRate > 0.05 || avgResponseTime > 2000 -> SystemStatus.WARNING
            errorRate > 0.01 || avgResponseTime > 1000 -> SystemStatus.DEGRADED
            else -> SystemStatus.HEALTHY
        }
    }
    
    /**
     * Check memory health
     */
    private fun isMemoryHealthy(): Boolean {
        val runtime = Runtime.getRuntime()
        val usedMemory = runtime.totalMemory() - runtime.freeMemory()
        val maxMemory = runtime.maxMemory()
        val usagePercent = (usedMemory.toDouble() / maxMemory) * 100
        
        return usagePercent < 85
    }
    
    /**
     * Check performance health
     */
    private fun isPerformanceHealthy(): Boolean {
        val avgResponseTime = calculateAverageResponseTime()
        return avgResponseTime < 500  // < 500ms is healthy
    }
}

/**
 * System health information
 */
data class SystemHealth(
    val status: SystemStatus = SystemStatus.HEALTHY,
    val errorRate: Double = 0.0,
    val avgResponseTime: Long = 0,
    val memoryHealthy: Boolean = true,
    val performanceHealthy: Boolean = true,
    val lastUpdated: Long = 0
)

/**
 * Usage metrics
 */
data class UsageMetrics(
    val totalEvents: Int = 0,
    val recentEventCount: Int = 0,
    val mostUsedFeature: String = "",
    val activeUsers: Int = 0
)

/**
 * Analytics event
 */
data class AnalyticsEvent(
    val timestamp: Long = System.currentTimeMillis(),
    val eventType: EventType,
    val eventName: String,
    val properties: Map<String, String> = emptyMap()
)

/**
 * Error event
 */
data class ErrorEvent(
    val timestamp: Long,
    val errorType: String,
    val errorMessage: String,
    val stackTrace: String?,
    val severity: ErrorSeverity
)

/**
 * Performance metric
 */
data class PerformanceMetric(
    val timestamp: Long,
    val operationName: String,
    val durationMs: Long,
    val memoryUsageMB: Long?,
    val success: Boolean
)

/**
 * Health dashboard
 */
data class HealthDashboard(
    val systemStatus: SystemStatus,
    val uptime: Long,
    val totalEvents: Int,
    val totalErrors: Int,
    val errorRate: Double,
    val avgResponseTime: Long,
    val recentErrors: List<ErrorEvent>,
    val memoryHealthy: Boolean,
    val performanceHealthy: Boolean
)

/**
 * Usage report
 */
data class UsageReport(
    val periodMs: Long,
    val totalEvents: Int,
    val totalUserActions: Int,
    val totalSessions: Int,
    val topFeatures: Map<String, Int>,
    val avgSessionDuration: Long
)

/**
 * Error report
 */
data class ErrorReport(
    val periodMs: Long,
    val totalErrors: Int,
    val errorsByType: Map<String, Int>,
    val errorsBySeverity: Map<ErrorSeverity, Int>,
    val crashRate: Double,
    val mostCommonError: String?
)

/**
 * Performance report
 */
data class PerformanceReport(
    val periodMs: Long,
    val totalOperations: Int,
    val avgResponseTime: Long,
    val p50ResponseTime: Long,
    val p95ResponseTime: Long,
    val p99ResponseTime: Long,
    val slowestOperations: List<PerformanceMetric>
)

/**
 * Health trends
 */
data class HealthTrends(
    val periodsAnalyzed: Int,
    val errorRateTrend: TrendDirection,
    val responseTimeTrend: TrendDirection,
    val healthImproving: Boolean
)

/**
 * System status
 */
enum class SystemStatus {
    HEALTHY,
    DEGRADED,
    WARNING,
    CRITICAL
}

/**
 * Event type
 */
enum class EventType {
    SYSTEM,
    USER_ACTION,
    FEATURE_USAGE,
    ERROR,
    PERFORMANCE
}

/**
 * Error severity
 */
enum class ErrorSeverity {
    LOW,
    MEDIUM,
    HIGH,
    CRITICAL
}

/**
 * Trend direction
 */
enum class TrendDirection {
    INCREASING,
    STABLE,
    DECREASING
}
