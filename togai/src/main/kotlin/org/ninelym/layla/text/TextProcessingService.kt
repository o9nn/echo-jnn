package org.ninelym.layla.text

import org.ninelym.layla.chat.ChatService
import org.ninelym.layla.inference.LaylaInferenceService
import kotlinx.coroutines.*
import java.util.UUID

/**
 * Text Processing Service
 * 
 * Handles Android PROCESS_TEXT intents for system-wide text selection integration.
 * Provides "Layla, remember this!" and "Chat with Layla" functionality from any app.
 * 
 * Features:
 * - Remember text (knowledge storage)
 * - Quick AI chat with selected text
 * - Context-aware responses
 * - Cross-app text processing
 */
class TextProcessingService(
    private val inferenceService: LaylaInferenceService,
    private val chatService: ChatService
) {
    
    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    private val memoryStore = mutableMapOf<String, MemoryEntry>()
    
    /**
     * Process PROCESS_TEXT intent - "Layla, remember this!"
     * Store text as a memory entry for later recall
     */
    suspend fun rememberText(
        text: String,
        source: String? = null,
        tags: List<String> = emptyList()
    ): Result<MemoryEntry> {
        return withContext(Dispatchers.IO) {
            try {
                // Create memory entry
                val entry = MemoryEntry(
                    id = UUID.randomUUID().toString(),
                    content = text,
                    source = source,
                    tags = tags,
                    createdAt = System.currentTimeMillis(),
                    accessCount = 0
                )
                
                // Store in memory
                memoryStore[entry.id] = entry
                
                // Optionally: Generate embeddings for semantic search (future enhancement)
                // val embedding = generateEmbedding(text)
                // entry.embedding = embedding
                
                Result.success(entry)
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Process PROCESS_TEXT intent - "Chat with Layla"
     * Start a new conversation with the selected text as context
     */
    suspend fun chatWithText(
        text: String,
        source: String? = null
    ): Result<ChatContext> {
        return withContext(Dispatchers.Default) {
            try {
                // Create a new conversation with the selected text
                val conversationId = chatService.createConversation(
                    title = "Chat about: ${text.take(30)}..."
                )
                
                // Build initial prompt with context
                val prompt = buildContextPrompt(text, source)
                
                // Send the message
                val messageResult = chatService.sendMessage(conversationId, prompt)
                
                if (messageResult.isSuccess) {
                    val context = ChatContext(
                        conversationId = conversationId,
                        originalText = text,
                        source = source,
                        startedAt = System.currentTimeMillis()
                    )
                    
                    Result.success(context)
                } else {
                    Result.failure(messageResult.exceptionOrNull() ?: Exception("Failed to start chat"))
                }
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Search memory entries
     */
    fun searchMemories(
        query: String,
        limit: Int = 10
    ): List<MemoryEntry> {
        // Simple text search (would be enhanced with semantic search)
        return memoryStore.values
            .filter { it.content.contains(query, ignoreCase = true) }
            .sortedByDescending { it.accessCount }
            .take(limit)
    }
    
    /**
     * Get a specific memory entry
     */
    fun getMemory(id: String): MemoryEntry? {
        val entry = memoryStore[id] ?: return null
        
        // Increment access count
        val updated = entry.copy(
            accessCount = entry.accessCount + 1,
            lastAccessedAt = System.currentTimeMillis()
        )
        memoryStore[id] = updated
        
        return updated
    }
    
    /**
     * Get all memories
     */
    fun getAllMemories(): List<MemoryEntry> {
        return memoryStore.values
            .sortedByDescending { it.createdAt }
    }
    
    /**
     * Delete a memory entry
     */
    fun deleteMemory(id: String): Boolean {
        return memoryStore.remove(id) != null
    }
    
    /**
     * Clear all memories
     */
    fun clearMemories() {
        memoryStore.clear()
    }
    
    /**
     * Tag a memory entry
     */
    fun tagMemory(id: String, tags: List<String>): Boolean {
        val entry = memoryStore[id] ?: return false
        memoryStore[id] = entry.copy(tags = tags)
        return true
    }
    
    /**
     * Get memories by tag
     */
    fun getMemoriesByTag(tag: String): List<MemoryEntry> {
        return memoryStore.values
            .filter { it.tags.contains(tag) }
            .sortedByDescending { it.createdAt }
    }
    
    /**
     * Shutdown the service
     */
    fun shutdown() {
        scope.cancel()
    }
    
    // Private helper methods
    
    private fun buildContextPrompt(text: String, source: String?): String {
        val builder = StringBuilder()
        
        if (source != null) {
            builder.append("From $source:\n\n")
        }
        
        builder.append("\"$text\"\n\n")
        builder.append("What can you tell me about this text?")
        
        return builder.toString()
    }
}

/**
 * Memory entry for remembered text
 */
data class MemoryEntry(
    val id: String,
    val content: String,
    val source: String?,
    val tags: List<String>,
    val createdAt: Long,
    val lastAccessedAt: Long? = null,
    val accessCount: Int
)

/**
 * Chat context for text-initiated conversations
 */
data class ChatContext(
    val conversationId: String,
    val originalText: String,
    val source: String?,
    val startedAt: Long
)

/**
 * RememberActivity logic
 * 
 * Handles the "Layla, remember this!" functionality.
 * Called when user selects text in any app and chooses "Layla, remember this!"
 */
class RememberActivity {
    
    suspend fun processIntent(
        selectedText: String,
        textProcessingService: TextProcessingService
    ): ProcessResult {
        return try {
            // Extract source if available (app name, URL, etc.)
            val source = extractSource()
            
            // Auto-categorize with simple tags
            val tags = autoGenerateTags(selectedText)
            
            // Remember the text
            val result = textProcessingService.rememberText(selectedText, source, tags)
            
            if (result.isSuccess) {
                ProcessResult.Success("Text remembered successfully!")
            } else {
                ProcessResult.Error("Failed to remember text: ${result.exceptionOrNull()?.message}")
            }
        } catch (e: Exception) {
            ProcessResult.Error("Error: ${e.message}")
        }
    }
    
    private fun extractSource(): String {
        // Would extract from intent extras in actual Android implementation
        return "Unknown Source"
    }
    
    private fun autoGenerateTags(text: String): List<String> {
        val tags = mutableListOf<String>()
        
        // Simple heuristics for auto-tagging
        if (text.contains("http://") || text.contains("https://")) {
            tags.add("url")
        }
        if (text.contains("@")) {
            tags.add("email")
        }
        if (text.split(" ").size > 50) {
            tags.add("long-form")
        } else {
            tags.add("short-form")
        }
        
        return tags
    }
}

/**
 * ChatActivity logic
 * 
 * Handles the "Chat with Layla" functionality.
 * Called when user selects text in any app and chooses "Chat with Layla"
 */
class ChatActivity {
    
    suspend fun processIntent(
        selectedText: String,
        textProcessingService: TextProcessingService
    ): ProcessResult {
        return try {
            // Extract source if available
            val source = extractSource()
            
            // Start chat with the selected text
            val result = textProcessingService.chatWithText(selectedText, source)
            
            if (result.isSuccess) {
                val context = result.getOrThrow()
                ProcessResult.Success(
                    "Chat started! Conversation ID: ${context.conversationId}"
                )
            } else {
                ProcessResult.Error("Failed to start chat: ${result.exceptionOrNull()?.message}")
            }
        } catch (e: Exception) {
            ProcessResult.Error("Error: ${e.message}")
        }
    }
    
    private fun extractSource(): String {
        // Would extract from intent extras in actual Android implementation
        return "Unknown Source"
    }
}

/**
 * Process result for text processing operations
 */
sealed class ProcessResult {
    data class Success(val message: String) : ProcessResult()
    data class Error(val message: String) : ProcessResult()
}
