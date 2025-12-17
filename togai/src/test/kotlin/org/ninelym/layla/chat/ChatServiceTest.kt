package org.ninelym.layla.chat

import org.ninelym.layla.inference.LaylaInferenceService
import kotlinx.coroutines.runBlocking
import org.junit.Test
import org.junit.Before
import org.junit.After
import kotlin.test.*

/**
 * Tests for ChatService
 */
class ChatServiceTest {
    
    private lateinit var inferenceService: LaylaInferenceService
    private lateinit var chatService: ChatService
    
    @Before
    fun setup() = runBlocking {
        inferenceService = LaylaInferenceService()
        inferenceService.initialize()
        chatService = ChatService(inferenceService)
    }
    
    @After
    fun teardown() {
        chatService.shutdown()
        inferenceService.shutdown()
    }
    
    @Test
    fun `test create conversation`() {
        val conversationId = chatService.createConversation("Test Chat")
        assertNotNull(conversationId)
        
        val conversation = chatService.getConversation(conversationId)
        assertNotNull(conversation)
        assertEquals("Test Chat", conversation.title)
        assertTrue(conversation.messages.isEmpty())
    }
    
    @Test
    fun `test send message creates user and assistant messages`() = runBlocking {
        val conversationId = chatService.createConversation()
        
        val result = chatService.sendMessage(conversationId, "Hello")
        assertTrue(result.isSuccess)
        
        val conversation = chatService.getConversation(conversationId)
        assertNotNull(conversation)
        assertTrue(conversation.messages.size >= 2, "Should have user and assistant messages")
        
        assertEquals(MessageRole.USER, conversation.messages.first().role)
    }
    
    @Test
    fun `test delete message`() = runBlocking {
        val conversationId = chatService.createConversation()
        chatService.sendMessage(conversationId, "Test message")
        
        val conversation = chatService.getConversation(conversationId)
        val messageId = conversation?.messages?.firstOrNull()?.id
        
        if (messageId != null) {
            val deleted = chatService.deleteMessage(conversationId, messageId)
            assertTrue(deleted)
        }
    }
    
    @Test
    fun `test clear conversation`() = runBlocking {
        val conversationId = chatService.createConversation()
        chatService.sendMessage(conversationId, "Test message")
        
        val cleared = chatService.clearConversation(conversationId)
        assertTrue(cleared)
        
        val conversation = chatService.getConversation(conversationId)
        assertNotNull(conversation)
        assertTrue(conversation.messages.isEmpty())
    }
    
    @Test
    fun `test delete conversation`() {
        val conversationId = chatService.createConversation()
        
        val deleted = chatService.deleteConversation(conversationId)
        assertTrue(deleted)
        
        val conversation = chatService.getConversation(conversationId)
        assertNull(conversation)
    }
    
    @Test
    fun `test active conversation management`() {
        val conversationId = chatService.createConversation()
        assertEquals(conversationId, chatService.activeConversationId.value)
        
        chatService.setActiveConversation(conversationId)
        assertEquals(conversationId, chatService.activeConversationId.value)
    }
}
