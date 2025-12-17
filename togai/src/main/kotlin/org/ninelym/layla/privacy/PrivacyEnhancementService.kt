package org.ninelym.layla.privacy

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.security.MessageDigest
import kotlin.random.Random

/**
 * Privacy Enhancement Service providing advanced privacy features including
 * privacy dashboard, data export/deletion, differential privacy, and audit system.
 */
class PrivacyEnhancementService {
    
    private val _privacyStatus = MutableStateFlow(PrivacyStatus())
    val privacyStatus: StateFlow<PrivacyStatus> = _privacyStatus.asStateFlow()
    
    private val _auditLog = mutableListOf<PrivacyAuditEntry>()
    private val dataRegistry = mutableMapOf<DataCategory, MutableList<DataEntry>>()
    
    /**
     * Initialize privacy enhancement service
     */
    fun initialize() {
        updatePrivacyStatus()
        recordAudit(
            action = PrivacyAction.SYSTEM_INIT,
            category = DataCategory.SYSTEM,
            description = "Privacy Enhancement Service initialized"
        )
    }
    
    /**
     * Get comprehensive privacy dashboard data
     */
    fun getPrivacyDashboard(): PrivacyDashboard {
        val dataBreakdown = dataRegistry.mapValues { it.value.size }
        val recentActivity = _auditLog.takeLast(10)
        
        return PrivacyDashboard(
            totalDataPoints = dataRegistry.values.sumOf { it.size },
            dataByCategory = dataBreakdown,
            lastDataAccess = _auditLog.lastOrNull { it.action == PrivacyAction.DATA_ACCESS }?.timestamp,
            lastDataDeletion = _auditLog.lastOrNull { it.action == PrivacyAction.DATA_DELETED }?.timestamp,
            recentActivity = recentActivity,
            privacyScore = calculatePrivacyScore()
        )
    }
    
    /**
     * Calculate overall privacy score (0-100)
     */
    private fun calculatePrivacyScore(): Int {
        val status = _privacyStatus.value
        var score = 100
        
        // Deductions
        if (!status.localProcessingOnly) score -= 20
        if (!status.dataEncryptionEnabled) score -= 30
        if (!status.analyticsDisabled) score -= 15
        if (status.thirdPartyServicesCount > 0) score -= (status.thirdPartyServicesCount * 5)
        if (dataRegistry.values.sumOf { it.size } > 10000) score -= 10
        
        return maxOf(0, score)
    }
    
    /**
     * Register data collection
     */
    fun registerDataCollection(
        category: DataCategory,
        dataId: String,
        description: String,
        purpose: String
    ) {
        val entry = DataEntry(
            id = dataId,
            category = category,
            description = description,
            purpose = purpose,
            timestamp = System.currentTimeMillis(),
            sensitive = category in listOf(DataCategory.BIOMETRIC, DataCategory.LOCATION, DataCategory.HEALTH)
        )
        
        dataRegistry.getOrPut(category) { mutableListOf() }.add(entry)
        
        recordAudit(
            action = PrivacyAction.DATA_COLLECTED,
            category = category,
            description = "Data collected: $description for $purpose"
        )
        
        updatePrivacyStatus()
    }
    
    /**
     * Access data with audit logging
     */
    fun accessData(category: DataCategory, dataId: String, reason: String): DataEntry? {
        val entry = dataRegistry[category]?.find { it.id == dataId }
        
        if (entry != null) {
            recordAudit(
                action = PrivacyAction.DATA_ACCESS,
                category = category,
                description = "Data accessed: ${entry.description}. Reason: $reason"
            )
        }
        
        return entry
    }
    
    /**
     * Delete specific data entry
     */
    fun deleteData(category: DataCategory, dataId: String): Boolean {
        val list = dataRegistry[category] ?: return false
        val removed = list.removeIf { it.id == dataId }
        
        if (removed) {
            recordAudit(
                action = PrivacyAction.DATA_DELETED,
                category = category,
                description = "Data deleted: $dataId"
            )
            updatePrivacyStatus()
        }
        
        return removed
    }
    
    /**
     * Delete all data in a category
     */
    fun deleteCategory(category: DataCategory): Int {
        val count = dataRegistry[category]?.size ?: 0
        dataRegistry[category]?.clear()
        
        if (count > 0) {
            recordAudit(
                action = PrivacyAction.DATA_DELETED,
                category = category,
                description = "All data deleted from category: $category ($count entries)"
            )
            updatePrivacyStatus()
        }
        
        return count
    }
    
    /**
     * Delete all user data
     */
    fun deleteAllData(): DataDeletionResult {
        val totalBefore = dataRegistry.values.sumOf { it.size }
        val categoriesAffected = dataRegistry.keys.toList()
        
        dataRegistry.clear()
        
        recordAudit(
            action = PrivacyAction.DATA_DELETED,
            category = DataCategory.SYSTEM,
            description = "All user data deleted: $totalBefore entries across ${categoriesAffected.size} categories"
        )
        
        updatePrivacyStatus()
        
        return DataDeletionResult(
            deletedCount = totalBefore,
            categoriesAffected = categoriesAffected,
            success = true
        )
    }
    
    /**
     * Export all user data
     */
    fun exportData(format: ExportFormat = ExportFormat.JSON): DataExport {
        val exportData = dataRegistry.mapValues { (_, entries) ->
            entries.map { entry ->
                mapOf(
                    "id" to entry.id,
                    "description" to entry.description,
                    "purpose" to entry.purpose,
                    "timestamp" to entry.timestamp,
                    "sensitive" to entry.sensitive
                )
            }
        }
        
        val exportContent = when (format) {
            ExportFormat.JSON -> exportToJSON(exportData)
            ExportFormat.CSV -> exportToCSV(exportData)
            ExportFormat.XML -> exportToXML(exportData)
        }
        
        recordAudit(
            action = PrivacyAction.DATA_EXPORTED,
            category = DataCategory.SYSTEM,
            description = "Data exported in $format format"
        )
        
        return DataExport(
            format = format,
            content = exportContent,
            timestamp = System.currentTimeMillis(),
            entryCount = dataRegistry.values.sumOf { it.size }
        )
    }
    
    /**
     * Apply differential privacy to numeric data
     */
    fun applyDifferentialPrivacy(value: Double, epsilon: Double = 1.0): Double {
        // Laplace mechanism for differential privacy
        val scale = 1.0 / epsilon
        val noise = generateLaplaceNoise(scale)
        return value + noise
    }
    
    /**
     * Apply differential privacy to count data
     */
    fun applyDifferentialPrivacyToCount(count: Int, epsilon: Double = 1.0): Int {
        val noise = applyDifferentialPrivacy(count.toDouble(), epsilon)
        return maxOf(0, noise.toInt())
    }
    
    /**
     * Generate Laplace noise for differential privacy
     */
    private fun generateLaplaceNoise(scale: Double): Double {
        val u = Random.nextDouble() - 0.5
        return -scale * Math.signum(u) * Math.log(1 - 2 * Math.abs(u))
    }
    
    /**
     * Get privacy audit log
     */
    fun getAuditLog(
        category: DataCategory? = null,
        action: PrivacyAction? = null,
        limit: Int = 100
    ): List<PrivacyAuditEntry> {
        var filtered = _auditLog.asSequence()
        
        if (category != null) {
            filtered = filtered.filter { it.category == category }
        }
        
        if (action != null) {
            filtered = filtered.filter { it.action == action }
        }
        
        return filtered.takeLast(limit).toList()
    }
    
    /**
     * Analyze privacy compliance
     */
    fun analyzePrivacyCompliance(): PrivacyComplianceReport {
        val status = _privacyStatus.value
        val issues = mutableListOf<ComplianceIssue>()
        val recommendations = mutableListOf<String>()
        
        // Check for sensitive data retention
        val sensitiveCount = dataRegistry.values.flatten().count { it.sensitive }
        if (sensitiveCount > 100) {
            issues.add(ComplianceIssue(
                severity = Severity.MEDIUM,
                category = "Data Retention",
                description = "Large amount of sensitive data stored ($sensitiveCount entries)",
                recommendation = "Consider implementing data retention policies"
            ))
        }
        
        // Check encryption
        if (!status.dataEncryptionEnabled) {
            issues.add(ComplianceIssue(
                severity = Severity.HIGH,
                category = "Encryption",
                description = "Data encryption is not enabled",
                recommendation = "Enable encryption for sensitive data storage"
            ))
        }
        
        // Check local processing
        if (!status.localProcessingOnly) {
            recommendations.add("Enable local-only processing for enhanced privacy")
        }
        
        // Check analytics
        if (!status.analyticsDisabled) {
            recommendations.add("Disable analytics for maximum privacy")
        }
        
        val complianceScore = maxOf(0, 100 - (issues.sumOf { 
            when (it.severity) {
                Severity.HIGH -> 30
                Severity.MEDIUM -> 15
                Severity.LOW -> 5
            }
        }))
        
        return PrivacyComplianceReport(
            complianceScore = complianceScore,
            issues = issues,
            recommendations = recommendations,
            auditDate = System.currentTimeMillis()
        )
    }
    
    /**
     * Update privacy status
     */
    private fun updatePrivacyStatus() {
        _privacyStatus.value = PrivacyStatus(
            localProcessingOnly = true,  // 9mly uses on-device AI
            dataEncryptionEnabled = true,
            analyticsDisabled = true,
            thirdPartyServicesCount = 0,
            totalDataPoints = dataRegistry.values.sumOf { it.size },
            lastAuditTimestamp = _auditLog.lastOrNull()?.timestamp ?: System.currentTimeMillis()
        )
    }
    
    /**
     * Record privacy audit entry
     */
    private fun recordAudit(action: PrivacyAction, category: DataCategory, description: String) {
        _auditLog.add(PrivacyAuditEntry(
            id = generateAuditId(),
            timestamp = System.currentTimeMillis(),
            action = action,
            category = category,
            description = description
        ))
        
        // Keep only last 1000 entries
        if (_auditLog.size > 1000) {
            _auditLog.removeAt(0)
        }
    }
    
    /**
     * Generate unique audit ID
     */
    private fun generateAuditId(): String {
        val timestamp = System.currentTimeMillis()
        val random = Random.nextInt(10000)
        return "audit_${timestamp}_$random"
    }
    
    /**
     * Export to JSON format
     */
    private fun exportToJSON(data: Map<DataCategory, List<Map<String, Any>>>): String {
        return buildString {
            append("{\n")
            data.entries.forEachIndexed { index, (category, entries) ->
                append("  \"$category\": [\n")
                entries.forEachIndexed { entryIndex, entry ->
                    append("    {\n")
                    entry.entries.forEachIndexed { fieldIndex, (key, value) ->
                        append("      \"$key\": \"$value\"")
                        if (fieldIndex < entry.size - 1) append(",")
                        append("\n")
                    }
                    append("    }")
                    if (entryIndex < entries.size - 1) append(",")
                    append("\n")
                }
                append("  ]")
                if (index < data.size - 1) append(",")
                append("\n")
            }
            append("}\n")
        }
    }
    
    /**
     * Export to CSV format
     */
    private fun exportToCSV(data: Map<DataCategory, List<Map<String, Any>>>): String {
        return buildString {
            append("category,id,description,purpose,timestamp,sensitive\n")
            data.forEach { (category, entries) ->
                entries.forEach { entry ->
                    append("$category,")
                    append("${entry["id"]},")
                    append("\"${entry["description"]}\",")
                    append("\"${entry["purpose"]}\",")
                    append("${entry["timestamp"]},")
                    append("${entry["sensitive"]}\n")
                }
            }
        }
    }
    
    /**
     * Export to XML format
     */
    private fun exportToXML(data: Map<DataCategory, List<Map<String, Any>>>): String {
        return buildString {
            append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
            append("<data>\n")
            data.forEach { (category, entries) ->
                append("  <category name=\"$category\">\n")
                entries.forEach { entry ->
                    append("    <entry>\n")
                    entry.forEach { (key, value) ->
                        append("      <$key>$value</$key>\n")
                    }
                    append("    </entry>\n")
                }
                append("  </category>\n")
            }
            append("</data>\n")
        }
    }
}

/**
 * Privacy status information
 */
data class PrivacyStatus(
    val localProcessingOnly: Boolean = true,
    val dataEncryptionEnabled: Boolean = true,
    val analyticsDisabled: Boolean = true,
    val thirdPartyServicesCount: Int = 0,
    val totalDataPoints: Int = 0,
    val lastAuditTimestamp: Long = 0
)

/**
 * Privacy dashboard data
 */
data class PrivacyDashboard(
    val totalDataPoints: Int,
    val dataByCategory: Map<DataCategory, Int>,
    val lastDataAccess: Long?,
    val lastDataDeletion: Long?,
    val recentActivity: List<PrivacyAuditEntry>,
    val privacyScore: Int
)

/**
 * Data entry
 */
data class DataEntry(
    val id: String,
    val category: DataCategory,
    val description: String,
    val purpose: String,
    val timestamp: Long,
    val sensitive: Boolean
)

/**
 * Privacy audit entry
 */
data class PrivacyAuditEntry(
    val id: String,
    val timestamp: Long,
    val action: PrivacyAction,
    val category: DataCategory,
    val description: String
)

/**
 * Data deletion result
 */
data class DataDeletionResult(
    val deletedCount: Int,
    val categoriesAffected: List<DataCategory>,
    val success: Boolean
)

/**
 * Data export
 */
data class DataExport(
    val format: ExportFormat,
    val content: String,
    val timestamp: Long,
    val entryCount: Int
)

/**
 * Privacy compliance report
 */
data class PrivacyComplianceReport(
    val complianceScore: Int,
    val issues: List<ComplianceIssue>,
    val recommendations: List<String>,
    val auditDate: Long
)

/**
 * Compliance issue
 */
data class ComplianceIssue(
    val severity: Severity,
    val category: String,
    val description: String,
    val recommendation: String
)

/**
 * Data category
 */
enum class DataCategory {
    CHAT_HISTORY,
    USER_PREFERENCES,
    AI_INTERACTIONS,
    DOCUMENTS,
    IMAGES,
    VOICE_RECORDINGS,
    LOCATION,
    BIOMETRIC,
    HEALTH,
    SYSTEM
}

/**
 * Privacy action
 */
enum class PrivacyAction {
    SYSTEM_INIT,
    DATA_COLLECTED,
    DATA_ACCESS,
    DATA_MODIFIED,
    DATA_DELETED,
    DATA_EXPORTED,
    SETTINGS_CHANGED
}

/**
 * Export format
 */
enum class ExportFormat {
    JSON,
    CSV,
    XML
}

/**
 * Severity level
 */
enum class Severity {
    LOW,
    MEDIUM,
    HIGH
}
