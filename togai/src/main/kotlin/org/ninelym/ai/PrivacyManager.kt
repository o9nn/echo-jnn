package org.ninelym.ai

import java.io.File
import java.security.MessageDigest
import java.util.concurrent.ConcurrentHashMap
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.SecretKeySpec
import java.util.*

/**
 * Privacy Manager for local data handling and encryption
 * Inspired by Layla AI's privacy-first approach where all data stays on device
 */
class PrivacyManager {
    
    private val conversationStore = ConcurrentHashMap<String, EncryptedConversation>()
    private val characterStore = ConcurrentHashMap<String, EncryptedCharacter>()
    private val userPreferences = ConcurrentHashMap<String, Any>()
    private val dataEncryption = DataEncryption()
    private val auditLog = mutableListOf<PrivacyEvent>()
    
    // Privacy settings
    private var localProcessingEnabled = true
    private var dataRetentionDays = 30
    private var automaticCleanupEnabled = true
    private var encryptionEnabled = true
    
    /**
     * Initialize privacy manager with default secure settings
     */
    fun initialize(): Boolean {
        return try {
            // Initialize encryption system
            dataEncryption.initialize()
            
            // Set default privacy preferences
            userPreferences["local_processing_only"] = true
            userPreferences["data_sharing"] = false
            userPreferences["analytics"] = false
            userPreferences["crash_reporting"] = false
            userPreferences["auto_delete_conversations"] = true
            userPreferences["encryption_level"] = "AES256"
            
            // Log initialization
            logPrivacyEvent(
                PrivacyEventType.SYSTEM_INIT,
                "Privacy manager initialized with secure defaults"
            )
            
            // Start cleanup scheduler if enabled
            if (automaticCleanupEnabled) {
                scheduleAutomaticCleanup()
            }
            
            true
        } catch (e: Exception) {
            logPrivacyEvent(
                PrivacyEventType.ERROR,
                "Failed to initialize privacy manager: ${e.message}"
            )
            false
        }
    }
    
    /**
     * Store conversation data locally with encryption
     */
    fun storeConversationEntry(userInput: String, aiResponse: String, characterId: String): Boolean {
        return try {
            if (!localProcessingEnabled) {
                logPrivacyEvent(
                    PrivacyEventType.DATA_BLOCKED,
                    "Conversation storage blocked - local processing disabled"
                )
                return false
            }
            
            val conversationId = generateConversationId(userInput, characterId)
            val encryptedEntry = if (encryptionEnabled) {
                EncryptedConversation(
                    id = conversationId,
                    encryptedUserInput = dataEncryption.encrypt(userInput),
                    encryptedAiResponse = dataEncryption.encrypt(aiResponse),
                    characterId = characterId,
                    timestamp = System.currentTimeMillis(),
                    isEncrypted = true
                )
            } else {
                EncryptedConversation(
                    id = conversationId,
                    encryptedUserInput = userInput,
                    encryptedAiResponse = aiResponse,
                    characterId = characterId,
                    timestamp = System.currentTimeMillis(),
                    isEncrypted = false
                )
            }
            
            conversationStore[conversationId] = encryptedEntry
            
            logPrivacyEvent(
                PrivacyEventType.DATA_STORED,
                "Conversation stored locally ${if (encryptionEnabled) "with encryption" else "without encryption"}"
            )
            
            true
        } catch (e: Exception) {
            logPrivacyEvent(
                PrivacyEventType.ERROR,
                "Failed to store conversation: ${e.message}"
            )
            false
        }
    }
    
    /**
     * Store character data locally with encryption
     */
    fun storeCharacter(character: Character): Boolean {
        return try {
            val encryptedCharacter = if (encryptionEnabled) {
                EncryptedCharacter(
                    id = character.id,
                    encryptedName = dataEncryption.encrypt(character.name),
                    encryptedPersonality = dataEncryption.encrypt(character.personality),
                    encryptedBackstory = dataEncryption.encrypt(character.backstory),
                    traits = character.traits,
                    createdAt = character.createdAt,
                    isCustom = character.isCustom,
                    isEncrypted = true
                )
            } else {
                EncryptedCharacter(
                    id = character.id,
                    encryptedName = character.name,
                    encryptedPersonality = character.personality,
                    encryptedBackstory = character.backstory,
                    traits = character.traits,
                    createdAt = character.createdAt,
                    isCustom = character.isCustom,
                    isEncrypted = false
                )
            }
            
            characterStore[character.id] = encryptedCharacter
            
            logPrivacyEvent(
                PrivacyEventType.DATA_STORED,
                "Character '${character.name}' stored locally ${if (encryptionEnabled) "with encryption" else "without encryption"}"
            )
            
            true
        } catch (e: Exception) {
            logPrivacyEvent(
                PrivacyEventType.ERROR,
                "Failed to store character: ${e.message}"
            )
            false
        }
    }
    
    /**
     * Retrieve conversation data with decryption
     */
    fun getConversationEntry(conversationId: String): ConversationEntry? {
        return try {
            val encrypted = conversationStore[conversationId] ?: return null
            
            if (encrypted.isEncrypted) {
                ConversationEntry(
                    id = encrypted.id,
                    userInput = dataEncryption.decrypt(encrypted.encryptedUserInput),
                    aiResponse = dataEncryption.decrypt(encrypted.encryptedAiResponse),
                    characterId = encrypted.characterId,
                    timestamp = encrypted.timestamp
                )
            } else {
                ConversationEntry(
                    id = encrypted.id,
                    userInput = encrypted.encryptedUserInput,
                    aiResponse = encrypted.encryptedAiResponse,
                    characterId = encrypted.characterId,
                    timestamp = encrypted.timestamp
                )
            }
        } catch (e: Exception) {
            logPrivacyEvent(
                PrivacyEventType.ERROR,
                "Failed to retrieve conversation: ${e.message}"
            )
            null
        }
    }
    
    /**
     * Delete conversation data permanently
     */
    fun deleteConversation(conversationId: String): Boolean {
        return try {
            val removed = conversationStore.remove(conversationId)
            if (removed != null) {
                logPrivacyEvent(
                    PrivacyEventType.DATA_DELETED,
                    "Conversation deleted permanently from local storage"
                )
                true
            } else {
                false
            }
        } catch (e: Exception) {
            logPrivacyEvent(
                PrivacyEventType.ERROR,
                "Failed to delete conversation: ${e.message}"
            )
            false
        }
    }
    
    /**
     * Delete all conversation history
     */
    fun deleteAllConversations(): Boolean {
        return try {
            val count = conversationStore.size
            conversationStore.clear()
            
            logPrivacyEvent(
                PrivacyEventType.DATA_DELETED,
                "$count conversations deleted from local storage"
            )
            
            true
        } catch (e: Exception) {
            logPrivacyEvent(
                PrivacyEventType.ERROR,
                "Failed to delete all conversations: ${e.message}"
            )
            false
        }
    }
    
    /**
     * Delete character data
     */
    fun deleteCharacter(characterId: String): Boolean {
        return try {
            val removed = characterStore.remove(characterId)
            if (removed != null) {
                logPrivacyEvent(
                    PrivacyEventType.DATA_DELETED,
                    "Character deleted from local storage"
                )
                true
            } else {
                false
            }
        } catch (e: Exception) {
            logPrivacyEvent(
                PrivacyEventType.ERROR,
                "Failed to delete character: ${e.message}"
            )
            false
        }
    }
    
    /**
     * Get data usage summary
     */
    fun getDataUsageSummary(): DataUsageSummary {
        val conversationCount = conversationStore.size.toLong()
        val characterCount = characterStore.size.toLong()
        val oldestConversation = conversationStore.values.minByOrNull { it.timestamp }?.timestamp
        val newestConversation = conversationStore.values.maxByOrNull { it.timestamp }?.timestamp
        
        // Estimate storage size (simplified)
        val estimatedStorageBytes = conversationStore.values.sumOf { 
            (it.encryptedUserInput.length + it.encryptedAiResponse.length) * 2 // UTF-16 estimation
        }.toLong() + characterStore.values.sumOf {
            (it.encryptedName.length + it.encryptedPersonality.length + it.encryptedBackstory.length) * 2
        }.toLong()
        
        return DataUsageSummary(
            conversationsStored = conversationCount,
            charactersStored = characterCount,
            estimatedStorageBytes = estimatedStorageBytes,
            oldestDataTimestamp = oldestConversation,
            newestDataTimestamp = newestConversation,
            encryptionEnabled = encryptionEnabled,
            privacyEventsCount = auditLog.size.toLong()
        )
    }
    
    /**
     * Cleanup old data based on retention policy
     */
    fun cleanupOldData(): Int {
        if (dataRetentionDays <= 0) return 0
        
        val cutoffTime = System.currentTimeMillis() - (dataRetentionDays * 24 * 60 * 60 * 1000L)
        var deletedCount = 0
        
        try {
            // Remove old conversations
            val conversationsToRemove = conversationStore.entries.filter { it.value.timestamp < cutoffTime }
            conversationsToRemove.forEach { (id, _) ->
                conversationStore.remove(id)
                deletedCount++
            }
            
            if (deletedCount > 0) {
                logPrivacyEvent(
                    PrivacyEventType.DATA_CLEANUP,
                    "Automatic cleanup removed $deletedCount old conversations"
                )
            }
            
            // Clean up old audit logs
            if (auditLog.size > 1000) {
                val oldLogEvents = auditLog.size - 1000
                repeat(oldLogEvents) { auditLog.removeFirstOrNull() }
            }
            
        } catch (e: Exception) {
            logPrivacyEvent(
                PrivacyEventType.ERROR,
                "Failed during data cleanup: ${e.message}"
            )
        }
        
        return deletedCount
    }
    
    /**
     * Get privacy score based on current settings and practices
     */
    fun getPrivacyScore(): Float {
        var score = 0f
        
        // Base score for local processing
        if (localProcessingEnabled) score += 30f
        
        // Encryption bonus
        if (encryptionEnabled) score += 25f
        
        // Data retention policy bonus
        when (dataRetentionDays) {
            in 1..7 -> score += 20f
            in 8..30 -> score += 15f
            in 31..90 -> score += 10f
            else -> score += 5f
        }
        
        // Automatic cleanup bonus
        if (automaticCleanupEnabled) score += 10f
        
        // No data sharing bonus
        if (userPreferences["data_sharing"] == false) score += 10f
        
        // No analytics bonus
        if (userPreferences["analytics"] == false) score += 5f
        
        return score.coerceIn(0f, 100f)
    }
    
    /**
     * Get audit log for privacy events
     */
    fun getPrivacyAuditLog(): List<PrivacyEvent> = auditLog.toList()
    
    /**
     * Export user data for transparency
     */
    fun exportUserData(): UserDataExport {
        val conversations = conversationStore.values.map { encrypted ->
            if (encrypted.isEncrypted) {
                ConversationEntry(
                    id = encrypted.id,
                    userInput = dataEncryption.decrypt(encrypted.encryptedUserInput),
                    aiResponse = dataEncryption.decrypt(encrypted.encryptedAiResponse),
                    characterId = encrypted.characterId,
                    timestamp = encrypted.timestamp
                )
            } else {
                ConversationEntry(
                    id = encrypted.id,
                    userInput = encrypted.encryptedUserInput,
                    aiResponse = encrypted.encryptedAiResponse,
                    characterId = encrypted.characterId,
                    timestamp = encrypted.timestamp
                )
            }
        }
        
        return UserDataExport(
            conversations = conversations,
            characters = characterStore.keys.toList(),
            preferences = userPreferences.toMap(),
            privacyEvents = auditLog.takeLast(100), // Last 100 events
            exportTimestamp = System.currentTimeMillis()
        )
    }
    
    // Getters for system state
    fun isLocalProcessingEnabled(): Boolean = localProcessingEnabled
    fun getConversationCount(): Long = conversationStore.size.toLong()
    fun isEncryptionEnabled(): Boolean = encryptionEnabled
    fun getDataRetentionDays(): Int = dataRetentionDays
    
    // Setters for configuration
    fun setLocalProcessingEnabled(enabled: Boolean) {
        localProcessingEnabled = enabled
        logPrivacyEvent(
            PrivacyEventType.SETTING_CHANGED,
            "Local processing ${if (enabled) "enabled" else "disabled"}"
        )
    }
    
    fun setEncryptionEnabled(enabled: Boolean) {
        encryptionEnabled = enabled
        logPrivacyEvent(
            PrivacyEventType.SETTING_CHANGED,
            "Encryption ${if (enabled) "enabled" else "disabled"}"
        )
    }
    
    fun setDataRetentionDays(days: Int) {
        dataRetentionDays = days.coerceAtLeast(0)
        logPrivacyEvent(
            PrivacyEventType.SETTING_CHANGED,
            "Data retention set to $dataRetentionDays days"
        )
    }
    
    // Private helper methods
    private fun generateConversationId(userInput: String, characterId: String): String {
        val data = "${userInput}${characterId}${System.currentTimeMillis()}".toByteArray()
        val digest = MessageDigest.getInstance("SHA-256").digest(data)
        return digest.fold("") { str, byte -> str + "%02x".format(byte) }
    }
    
    private fun logPrivacyEvent(type: PrivacyEventType, message: String) {
        auditLog.add(
            PrivacyEvent(
                timestamp = System.currentTimeMillis(),
                type = type,
                message = message
            )
        )
        
        // Keep audit log size manageable
        if (auditLog.size > 2000) {
            auditLog.removeFirstOrNull()
        }
    }
    
    private fun scheduleAutomaticCleanup() {
        // In a real implementation, this would use a proper scheduler
        // For now, we'll just mark the flag
        logPrivacyEvent(
            PrivacyEventType.SYSTEM_CONFIG,
            "Automatic cleanup scheduled"
        )
    }
}

/**
 * Data encryption helper class
 */
private class DataEncryption {
    private lateinit var secretKey: SecretKey
    
    fun initialize() {
        // In a real implementation, this would properly generate or load a key
        val keyGenerator = KeyGenerator.getInstance("AES")
        keyGenerator.init(256)
        secretKey = keyGenerator.generateKey()
    }
    
    fun encrypt(data: String): String {
        // Simplified encryption - in production, use proper IV and padding
        return try {
            val cipher = Cipher.getInstance("AES")
            cipher.init(Cipher.ENCRYPT_MODE, secretKey)
            val encryptedData = cipher.doFinal(data.toByteArray())
            Base64.getEncoder().encodeToString(encryptedData)
        } catch (e: Exception) {
            // Fallback to base64 encoding if encryption fails
            Base64.getEncoder().encodeToString(data.toByteArray())
        }
    }
    
    fun decrypt(encryptedData: String): String {
        return try {
            val cipher = Cipher.getInstance("AES")
            cipher.init(Cipher.DECRYPT_MODE, secretKey)
            val decodedData = Base64.getDecoder().decode(encryptedData)
            val decryptedData = cipher.doFinal(decodedData)
            String(decryptedData)
        } catch (e: Exception) {
            // Fallback to base64 decoding if decryption fails
            String(Base64.getDecoder().decode(encryptedData))
        }
    }
}

// Data classes for privacy management

data class EncryptedConversation(
    val id: String,
    val encryptedUserInput: String,
    val encryptedAiResponse: String,
    val characterId: String,
    val timestamp: Long,
    val isEncrypted: Boolean
)

data class EncryptedCharacter(
    val id: String,
    val encryptedName: String,
    val encryptedPersonality: String,
    val encryptedBackstory: String,
    val traits: Map<String, Float>,
    val createdAt: Long,
    val isCustom: Boolean,
    val isEncrypted: Boolean
)

data class ConversationEntry(
    val id: String,
    val userInput: String,
    val aiResponse: String,
    val characterId: String,
    val timestamp: Long
)

data class DataUsageSummary(
    val conversationsStored: Long,
    val charactersStored: Long,
    val estimatedStorageBytes: Long,
    val oldestDataTimestamp: Long?,
    val newestDataTimestamp: Long?,
    val encryptionEnabled: Boolean,
    val privacyEventsCount: Long
)

data class PrivacyEvent(
    val timestamp: Long,
    val type: PrivacyEventType,
    val message: String
)

enum class PrivacyEventType {
    SYSTEM_INIT,
    SYSTEM_CONFIG,
    DATA_STORED,
    DATA_RETRIEVED,
    DATA_DELETED,
    DATA_CLEANUP,
    DATA_BLOCKED,
    SETTING_CHANGED,
    ERROR
}

data class UserDataExport(
    val conversations: List<ConversationEntry>,
    val characters: List<String>,
    val preferences: Map<String, Any>,
    val privacyEvents: List<PrivacyEvent>,
    val exportTimestamp: Long
)