package org.ninelym.layla.text

import org.ninelym.layla.inference.LaylaInferenceService
import org.ninelym.layla.chat.ChatService
import kotlinx.coroutines.runBlocking
import org.junit.Test
import org.junit.Before
import org.junit.After
import kotlin.test.*

/**
 * Tests for TextProcessingService
 */
class TextProcessingServiceTest {
    
    private lateinit var inferenceService: LaylaInferenceService
    private lateinit var chatService: ChatService
    private lateinit var textProcessingService: TextProcessingService
    
    @Before
    fun setup() = runBlocking {
        inferenceService = LaylaInferenceService()
        inferenceService.initialize()
        chatService = ChatService(inferenceService)
        textProcessingService = TextProcessingService(inferenceService, chatService)
    }
    
    @After
    fun teardown() {
        textProcessingService.shutdown()
        chatService.shutdown()
        inferenceService.shutdown()
    }
    
    @Test
    fun `test remember text`() = runBlocking {
        val text = "This is important information to remember"
        val result = textProcessingService.rememberText(text, "Test Source")
        
        assertTrue(result.isSuccess)
        val entry = result.getOrThrow()
        
        assertEquals(text, entry.content)
        assertEquals("Test Source", entry.source)
    }
    
    @Test
    fun `test search memories`() = runBlocking {
        textProcessingService.rememberText("Quantum computing is fascinating", "Article")
        textProcessingService.rememberText("Machine learning algorithms", "Book")
        textProcessingService.rememberText("Quantum mechanics principles", "Paper")
        
        val results = textProcessingService.searchMemories("quantum")
        assertEquals(2, results.size)
    }
    
    @Test
    fun `test get all memories`() = runBlocking {
        textProcessingService.rememberText("Text 1", "Source 1")
        textProcessingService.rememberText("Text 2", "Source 2")
        
        val memories = textProcessingService.getAllMemories()
        assertEquals(2, memories.size)
    }
    
    @Test
    fun `test delete memory`() = runBlocking {
        val result = textProcessingService.rememberText("Test text", "Source")
        val entry = result.getOrThrow()
        
        val deleted = textProcessingService.deleteMemory(entry.id)
        assertTrue(deleted)
        
        val memory = textProcessingService.getMemory(entry.id)
        assertNull(memory)
    }
    
    @Test
    fun `test tag memory`() = runBlocking {
        val result = textProcessingService.rememberText("Test text", "Source")
        val entry = result.getOrThrow()
        
        val tagged = textProcessingService.tagMemory(entry.id, listOf("important", "urgent"))
        assertTrue(tagged)
        
        val memories = textProcessingService.getMemoriesByTag("important")
        assertEquals(1, memories.size)
    }
    
    @Test
    fun `test chat with text`() = runBlocking {
        val text = "Machine learning is transforming technology"
        val result = textProcessingService.chatWithText(text, "Article")
        
        assertTrue(result.isSuccess)
        val context = result.getOrThrow()
        
        assertNotNull(context.conversationId)
        assertEquals(text, context.originalText)
        assertEquals("Article", context.source)
    }
    
    @Test
    fun `test memory access count increment`() = runBlocking {
        val result = textProcessingService.rememberText("Test text", "Source")
        val entry = result.getOrThrow()
        
        assertEquals(0, entry.accessCount)
        
        // Access the memory
        val accessed = textProcessingService.getMemory(entry.id)
        assertNotNull(accessed)
        assertEquals(1, accessed.accessCount)
    }
}
