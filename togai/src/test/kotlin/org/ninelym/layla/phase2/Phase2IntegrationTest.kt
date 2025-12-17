package org.ninelym.layla.phase2

import org.ninelym.layla.LaylaAssistant
import kotlinx.coroutines.runBlocking
import org.junit.Test
import org.junit.Before
import org.junit.After
import org.junit.Assert.*

/**
 * Phase 2 Integration Test
 * Tests integration of all Phase 2 enhancement services
 */
class Phase2IntegrationTest {
    
    private lateinit var layla: LaylaAssistant
    
    @Before
    fun setup() {
        layla = LaylaAssistant()
    }
    
    @After
    fun teardown() {
        layla.shutdown()
    }
    
    @Test
    fun `test Phase 1 initialization`() = runBlocking {
        val result = layla.initializePhase1()
        assertTrue("Phase 1 should initialize successfully", result.isSuccess)
    }
    
    @Test
    fun `test Phase 2 initialization`() = runBlocking {
        layla.initializePhase1()
        val result = layla.initializePhase2()
        assertTrue("Phase 2 should initialize successfully", result.isSuccess)
    }
    
    @Test
    fun `test full initialization`() = runBlocking {
        val result = layla.initialize()
        assertTrue("Full initialization should succeed", result.isSuccess)
    }
    
    @Test
    fun `test Stable Diffusion service access`() = runBlocking {
        layla.initialize()
        
        val sdService = layla.getStableDiffusionService()
        assertNotNull("Stable Diffusion service should be accessible", sdService)
        
        val result = sdService.generateImage("Test image")
        assertTrue("Image generation should work", result.isSuccess)
    }
    
    @Test
    fun `test Voice services access`() = runBlocking {
        layla.initialize()
        
        val voiceInput = layla.getVoiceInputService()
        val voiceOutput = layla.getVoiceOutputService()
        
        assertNotNull("Voice input service should be accessible", voiceInput)
        assertNotNull("Voice output service should be accessible", voiceOutput)
    }
    
    @Test
    fun `test Character service access`() = runBlocking {
        layla.initialize()
        
        val characterService = layla.getCharacterService()
        assertNotNull("Character service should be accessible", characterService)
        
        val characters = characterService.getAvailableCharacters()
        assertTrue("Should have available characters", characters.isNotEmpty())
    }
    
    @Test
    fun `test Tasker service access`() = runBlocking {
        layla.initialize()
        
        val taskerService = layla.getTaskerService()
        assertNotNull("Tasker service should be accessible", taskerService)
        
        val actions = taskerService.getAvailableActions()
        assertTrue("Should have available actions", actions.isNotEmpty())
    }
    
    @Test
    fun `test Calendar service access`() = runBlocking {
        layla.initialize()
        
        val calendarService = layla.getCalendarService()
        assertNotNull("Calendar service should be accessible", calendarService)
        
        val calendars = calendarService.getCalendars()
        assertTrue("Should have available calendars", calendars.isNotEmpty())
    }
    
    @Test
    fun `test Task Manager service access`() = runBlocking {
        layla.initialize()
        
        val taskManager = layla.getTaskManagerService()
        assertNotNull("Task manager should be accessible", taskManager)
        
        val stats = taskManager.getQueueStatistics()
        assertNotNull("Queue statistics should be available", stats)
    }
    
    @Test
    fun `test multi-modal workflow - text to image`() = runBlocking {
        layla.initialize()
        
        // Start a chat conversation
        val conversationId = layla.startChat("I'd like to generate an image")
        assertTrue("Chat should start successfully", conversationId != null)
        
        // Generate image based on prompt
        val sdService = layla.getStableDiffusionService()
        val imageResult = sdService.generateImage("A serene landscape")
        
        assertTrue("Image generation should succeed", imageResult.isSuccess)
    }
    
    @Test
    fun `test multi-modal workflow - voice to character response`() = runBlocking {
        layla.initialize()
        
        // Set active character
        val characterService = layla.getCharacterService()
        characterService.setActiveCharacter("creative")
        
        // Simulate voice input
        val voiceInput = layla.getVoiceInputService()
        val recordSession = voiceInput.startRecording()
        
        if (recordSession.isSuccess) {
            val transcript = voiceInput.stopRecording(recordSession.getOrThrow())
            
            if (transcript.isSuccess) {
                // Generate character response with TTS
                val voiceOutput = layla.getVoiceOutputService()
                val speakResult = voiceOutput.speak(
                    "I understood your message",
                    characterId = "creative"
                )
                
                assertTrue("Voice output should succeed", speakResult.isSuccess)
            }
        }
    }
    
    @Test
    fun `test automation workflow - calendar to task`() = runBlocking {
        layla.initialize()
        
        // Create calendar event
        val calendarService = layla.getCalendarService()
        val eventResult = calendarService.createEventFromNaturalLanguage(
            "Team meeting tomorrow at 2pm"
        )
        
        assertTrue("Event creation should succeed", eventResult.isSuccess)
        
        // Schedule reminder task
        val taskManager = layla.getTaskManagerService()
        val taskResult = taskManager.scheduleTask(
            name = "Meeting reminder",
            executeAfter = 3600000L // 1 hour before
        ) {
            org.ninelym.layla.taskmgr.TaskResult(true, "Reminder sent")
        }
        
        assertTrue("Task scheduling should succeed", taskResult.isSuccess)
    }
    
    @Test
    fun `test Tasker automation workflow`() = runBlocking {
        layla.initialize()
        
        val taskerService = layla.getTaskerService()
        
        // Execute AI inference action
        val inferenceResult = taskerService.executeAction(
            "ai_inference",
            mapOf("prompt" to "Analyze sentiment of this text")
        )
        
        assertTrue("Action execution should succeed", inferenceResult.isSuccess)
        
        // Execute image generation action
        val imageResult = taskerService.executeAction(
            "generate_image",
            mapOf("prompt" to "Mountain landscape")
        )
        
        assertTrue("Image generation action should succeed", imageResult.isSuccess)
    }
    
    @Test
    fun `test Phase 2 without Phase 1 initializes Phase 1 automatically`() = runBlocking {
        val result = layla.initializePhase2()
        assertTrue("Phase 2 should auto-initialize Phase 1", result.isSuccess)
    }
    
    @Test
    fun `test all Phase 2 services integrated properly`() = runBlocking {
        layla.initialize()
        
        // Verify all Phase 2 services are accessible
        assertNotNull(layla.getStableDiffusionService())
        assertNotNull(layla.getVoiceInputService())
        assertNotNull(layla.getVoiceOutputService())
        assertNotNull(layla.getCharacterService())
        assertNotNull(layla.getTaskerService())
        assertNotNull(layla.getCalendarService())
        assertNotNull(layla.getTaskManagerService())
    }
}
