package org.ninelym.layla.inference

import kotlinx.coroutines.runBlocking
import org.junit.Test
import org.junit.Before
import org.junit.After
import kotlin.test.*

/**
 * Tests for LaylaInferenceService
 */
class LaylaInferenceServiceTest {
    
    private lateinit var service: LaylaInferenceService
    
    @Before
    fun setup() {
        service = LaylaInferenceService()
    }
    
    @After
    fun teardown() {
        service.shutdown()
    }
    
    @Test
    fun `test service initialization`() = runBlocking {
        val result = service.initialize()
        assertTrue(result.isSuccess, "Service should initialize successfully")
    }
    
    @Test
    fun `test model state transitions`() = runBlocking {
        service.initialize()
        
        // Initial state should be Ready after initialization
        val state = service.modelState.value
        assertTrue(state is ModelState.Ready || state is ModelState.Unloaded)
    }
    
    @Test
    fun `test conversation history management`() = runBlocking {
        service.initialize()
        
        // History should be empty initially
        assertTrue(service.getHistory().isEmpty())
        
        // Perform inference
        service.infer("Test prompt")
        
        // History should contain user prompt and assistant response
        val history = service.getHistory()
        assertTrue(history.size >= 2, "History should contain at least 2 turns")
        assertEquals("user", history.first().role)
    }
    
    @Test
    fun `test clear history`() = runBlocking {
        service.initialize()
        service.infer("Test prompt")
        
        service.clearHistory()
        
        assertTrue(service.getHistory().isEmpty())
    }
    
    @Test
    fun `test inference without initialization should fail`() = runBlocking {
        val result = service.infer("Test prompt")
        assertTrue(result.isFailure, "Inference should fail without initialization")
    }
}
