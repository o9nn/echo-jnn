package org.ninelym.layla.phase2

import org.ninelym.layla.sd.StableDiffusionService
import org.ninelym.ai.ImageStyle
import kotlinx.coroutines.runBlocking
import org.junit.Test
import org.junit.Before
import org.junit.Assert.*

/**
 * Test suite for Stable Diffusion Service
 * Phase 2: Enhancement - Image Generation Tests
 */
class StableDiffusionServiceTest {
    
    private lateinit var service: StableDiffusionService
    
    @Before
    fun setup() {
        service = StableDiffusionService()
    }
    
    @Test
    fun `test service initialization`() = runBlocking {
        val result = service.initialize()
        assertTrue("Service should initialize successfully", result.isSuccess)
    }
    
    @Test
    fun `test image generation with default style`() = runBlocking {
        service.initialize()
        
        val result = service.generateImage(
            prompt = "A beautiful sunset over mountains"
        )
        
        assertTrue("Image generation should succeed", result.isSuccess)
        val image = result.getOrNull()
        assertNotNull("Generated image should not be null", image)
        assertEquals("Prompt should match", "A beautiful sunset over mountains", image?.prompt)
    }
    
    @Test
    fun `test image generation with custom style`() = runBlocking {
        service.initialize()
        
        val result = service.generateImage(
            prompt = "A futuristic city",
            style = ImageStyle.CYBERPUNK
        )
        
        assertTrue("Image generation should succeed", result.isSuccess)
        val image = result.getOrNull()
        assertEquals("Style should match", ImageStyle.CYBERPUNK, image?.style)
    }
    
    @Test
    fun `test generation with parameters`() = runBlocking {
        service.initialize()
        
        val result = service.generateImage(
            prompt = "Abstract art",
            negativePrompt = "realistic, photographic",
            steps = 30,
            guidanceScale = 8.5f,
            seed = 12345L
        )
        
        assertTrue("Image generation with parameters should succeed", result.isSuccess)
    }
    
    @Test
    fun `test generation history tracking`() = runBlocking {
        service.initialize()
        
        // Generate multiple images
        service.generateImage("Image 1")
        service.generateImage("Image 2")
        service.generateImage("Image 3")
        
        val history = service.getHistory()
        assertEquals("History should contain 3 entries", 3, history.size)
    }
    
    @Test
    fun `test clear history`() = runBlocking {
        service.initialize()
        
        service.generateImage("Test image")
        val historyBefore = service.getHistory()
        assertTrue("History should have entries", historyBefore.isNotEmpty())
        
        service.clearHistory()
        val historyAfter = service.getHistory()
        assertTrue("History should be empty after clear", historyAfter.isEmpty())
    }
    
    @Test
    fun `test active task tracking`() = runBlocking {
        service.initialize()
        
        // Start generation (in real implementation this would be async)
        val activeBefore = service.getActiveTasks()
        
        service.generateImage("Test")
        
        val activeAfter = service.getActiveTasks()
        // In production, we'd check that tasks are tracked during generation
    }
    
    @Test
    fun `test model loading`() = runBlocking {
        service.initialize()
        
        val result = service.loadModel("stable-diffusion-xl")
        assertTrue("Model loading should succeed", result.isSuccess)
        
        val currentModel = service.getCurrentModel()
        assertNotNull("Current model should be set", currentModel)
        assertEquals("Model name should match", "stable-diffusion-xl", currentModel?.name)
    }
    
    @Test
    fun `test generation without initialization fails`() = runBlocking {
        val result = service.generateImage("Test prompt")
        assertTrue("Generation without initialization should fail", result.isFailure)
    }
    
    @Test
    fun `test task cancellation`() = runBlocking {
        service.initialize()
        
        val taskId = "test_task_123"
        val result = service.cancelTask(taskId)
        assertTrue("Task cancellation should succeed", result.isSuccess)
    }
}
