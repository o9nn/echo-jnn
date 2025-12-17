package org.ninelym.layla.chat

import org.ninelym.layla.inference.LaylaInferenceService
import org.ninelym.layla.inference.InferenceParameters
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import java.util.UUID

/**
 * Chat Service
 * 
 * Manages chat conversations with Layla AI assistant.
 * Integrates with LaylaInferenceService for AI responses.
 * 
 * Features:
 * - Multi-turn conversations
 * - Message history persistence
 * - Real-time typing indicators
 * - Message state management
 */
class ChatService(
    private val inferenceService: LaylaInferenceService
) {
    
    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    
    private val _conversations = MutableStateFlow<Map<String, Conversation>>(emptyMap())
    val conversations: StateFlow<Map<String, Conversation>> = _conversations
    
    private val _activeConversationId = MutableStateFlow<String?>(null)
    val activeConversationId: StateFlow<String?> = _activeConversationId
    
    /**
     * Create a new conversation
     */
    fun createConversation(title: String = "New Chat"): String {
        val conversationId = UUID.randomUUID().toString()
        val conversation = Conversation(
            id = conversationId,
            title = title,
            createdAt = System.currentTimeMillis(),
            messages = emptyList()
        )
        
        _conversations.value = _conversations.value + (conversationId to conversation)
        _activeConversationId.value = conversationId
        
        return conversationId
    }
    
    /**
     * Get a specific conversation
     */
    fun getConversation(conversationId: String): Conversation? {
        return _conversations.value[conversationId]
    }
    
    /**
     * Set active conversation
     */
    fun setActiveConversation(conversationId: String) {
        if (_conversations.value.containsKey(conversationId)) {
            _activeConversationId.value = conversationId
        }
    }
    
    /**
     * Send a message in the active conversation
     */
    suspend fun sendMessage(
        text: String,
        parameters: InferenceParameters = InferenceParameters.default()
    ): Result<Message> {
        val conversationId = _activeConversationId.value 
            ?: return Result.failure(IllegalStateException("No active conversation"))
        
        return sendMessage(conversationId, text, parameters)
    }
    
    /**
     * Send a message in a specific conversation
     */
    suspend fun sendMessage(
        conversationId: String,
        text: String,
        parameters: InferenceParameters = InferenceParameters.default()
    ): Result<Message> {
        return withContext(Dispatchers.Default) {
            try {
                val conversation = _conversations.value[conversationId]
                    ?: return@withContext Result.failure(IllegalArgumentException("Conversation not found"))
                
                // Create user message
                val userMessage = Message(
                    id = UUID.randomUUID().toString(),
                    conversationId = conversationId,
                    role = MessageRole.USER,
                    content = text,
                    timestamp = System.currentTimeMillis(),
                    state = MessageState.SENT
                )
                
                // Add user message to conversation
                updateConversation(conversationId) { conv ->
                    conv.copy(
                        messages = conv.messages + userMessage,
                        updatedAt = System.currentTimeMillis()
                    )
                }
                
                // Create assistant message (initially empty)
                val assistantMessageId = UUID.randomUUID().toString()
                val assistantMessage = Message(
                    id = assistantMessageId,
                    conversationId = conversationId,
                    role = MessageRole.ASSISTANT,
                    content = "",
                    timestamp = System.currentTimeMillis(),
                    state = MessageState.GENERATING
                )
                
                // Add assistant message to conversation
                updateConversation(conversationId) { conv ->
                    conv.copy(messages = conv.messages + assistantMessage)
                }
                
                // Get AI response with streaming
                val responseBuilder = StringBuilder()
                val inferenceResult = inferenceService.infer(
                    prompt = text,
                    parameters = parameters,
                    onToken = { token ->
                        responseBuilder.append(token)
                        // Update message with new token
                        updateMessage(conversationId, assistantMessageId) { msg ->
                            msg.copy(content = responseBuilder.toString())
                        }
                    }
                )
                
                if (inferenceResult.isSuccess) {
                    val response = inferenceResult.getOrThrow()
                    
                    // Update final message state
                    updateMessage(conversationId, assistantMessageId) { msg ->
                        msg.copy(
                            content = response.text,
                            state = MessageState.SENT,
                            inferenceTimeMs = response.inferenceTimeMs
                        )
                    }
                    
                    Result.success(userMessage)
                } else {
                    // Update message state to error
                    updateMessage(conversationId, assistantMessageId) { msg ->
                        msg.copy(
                            state = MessageState.ERROR,
                            error = inferenceResult.exceptionOrNull()?.message
                        )
                    }
                    
                    Result.failure(inferenceResult.exceptionOrNull() ?: Exception("Inference failed"))
                }
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Delete a message
     */
    fun deleteMessage(conversationId: String, messageId: String): Boolean {
        val conversation = _conversations.value[conversationId] ?: return false
        
        val updatedMessages = conversation.messages.filter { it.id != messageId }
        if (updatedMessages.size == conversation.messages.size) {
            return false // Message not found
        }
        
        updateConversation(conversationId) { conv ->
            conv.copy(
                messages = updatedMessages,
                updatedAt = System.currentTimeMillis()
            )
        }
        
        return true
    }
    
    /**
     * Clear conversation history
     */
    fun clearConversation(conversationId: String): Boolean {
        return updateConversation(conversationId) { conv ->
            conv.copy(
                messages = emptyList(),
                updatedAt = System.currentTimeMillis()
            )
        }
    }
    
    /**
     * Delete a conversation
     */
    fun deleteConversation(conversationId: String): Boolean {
        if (!_conversations.value.containsKey(conversationId)) {
            return false
        }
        
        _conversations.value = _conversations.value - conversationId
        
        // Clear active conversation if it was deleted
        if (_activeConversationId.value == conversationId) {
            _activeConversationId.value = null
        }
        
        return true
    }
    
    /**
     * Get all conversations sorted by update time
     */
    fun getAllConversations(): List<Conversation> {
        return _conversations.value.values
            .sortedByDescending { it.updatedAt ?: it.createdAt }
    }
    
    /**
     * Shutdown the service
     */
    fun shutdown() {
        scope.cancel()
    }
    
    // Private helper methods
    
    private fun updateConversation(
        conversationId: String,
        update: (Conversation) -> Conversation
    ): Boolean {
        val conversation = _conversations.value[conversationId] ?: return false
        val updated = update(conversation)
        _conversations.value = _conversations.value + (conversationId to updated)
        return true
    }
    
    private fun updateMessage(
        conversationId: String,
        messageId: String,
        update: (Message) -> Message
    ) {
        updateConversation(conversationId) { conv ->
            val updatedMessages = conv.messages.map { msg ->
                if (msg.id == messageId) update(msg) else msg
            }
            conv.copy(messages = updatedMessages)
        }
    }
}

/**
 * Conversation model
 */
data class Conversation(
    val id: String,
    val title: String,
    val createdAt: Long,
    val updatedAt: Long? = null,
    val messages: List<Message>
)

/**
 * Message model
 */
data class Message(
    val id: String,
    val conversationId: String,
    val role: MessageRole,
    val content: String,
    val timestamp: Long,
    val state: MessageState = MessageState.SENT,
    val error: String? = null,
    val inferenceTimeMs: Long? = null
)

/**
 * Message role
 */
enum class MessageRole {
    USER,
    ASSISTANT,
    SYSTEM
}

/**
 * Message state
 */
enum class MessageState {
    SENDING,
    SENT,
    GENERATING,
    ERROR
}
