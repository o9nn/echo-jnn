package org.ninelym.ai

import org.ninelym.cognitive.CognitiveEngine
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.Assertions.*

/**
 * Test suite for AI integration with cognitive system
 */
class AIIntegrationTest {
    
    private lateinit var cognitiveEngine: CognitiveEngine
    
    @BeforeEach
    fun setup() {
        cognitiveEngine = CognitiveEngine()
        assertTrue(cognitiveEngine.initializeAI(), "AI system should initialize successfully")
    }
    
    @Test
    fun testAIProcessorInitialization() {
        val stats = cognitiveEngine.getAIIntegrationStats()
        assertNotNull(stats.aiSystemStats)
        assertTrue(stats.aiSystemStats.loadedModels > 0, "Should have at least one loaded model")
        assertTrue(stats.aiSystemStats.privacyScore > 0, "Should have a positive privacy score")
    }
    
    @Test
    fun testCharacterCreation() {
        val character = cognitiveEngine.createCognitiveCharacter(
            name = "TestBot",
            personality = "Helpful test assistant",
            traits = mapOf(
                "helpfulness" to 0.9f,
                "creativity" to 0.6f,
                "empathy" to 0.8f
            ),
            backstory = "Created for testing purposes"
        )
        
        assertNotNull(character)
        assertEquals("TestBot", character.name)
        assertEquals("Helpful test assistant", character.personality)
        assertTrue(character.traits.containsKey("helpfulness"))
        assertEquals(0.9f, character.traits["helpfulness"], 0.01f)
    }
    
    @Test
    fun testNaturalLanguageProcessing() {
        val response = cognitiveEngine.processNaturalLanguage(
            "Hello, how are you today?",
            context = ConversationContext("test-session")
        )
        
        when (response) {
            is AIResponse.Success -> {
                assertNotNull(response.text)
                assertTrue(response.text.isNotEmpty())
                assertNotNull(response.character)
                assertTrue(response.confidenceScore >= 0.0f)
                assertTrue(response.confidenceScore <= 1.0f)
            }
            is AIResponse.Error -> {
                fail("Natural language processing should not fail: ${response.message}")
            }
        }
    }
    
    @Test
    fun testImageGeneration() {
        val result = cognitiveEngine.generateImage(
            "A simple test image",
            ImageStyle.DEFAULT
        )
        
        when (result) {
            is ImageGenerationResult.Success -> {
                assertNotNull(result.image)
                assertTrue(result.image.width > 0)
                assertTrue(result.image.height > 0)
                assertTrue(result.image.imageData.isNotEmpty())
                assertNotNull(result.prompt)
            }
            is ImageGenerationResult.Error -> {
                fail("Image generation should not fail: ${result.message}")
            }
        }
    }
    
    @Test
    fun testImageGenerationWithCharacter() {
        val character = cognitiveEngine.createCognitiveCharacter(
            name = "ArtistBot",
            personality = "Creative artistic companion",
            traits = mapOf("creativity" to 0.95f, "artistic_vision" to 0.9f)
        )
        
        val result = cognitiveEngine.generateImage(
            "Beautiful landscape painting",
            ImageStyle.ARTISTIC,
            character
        )
        
        when (result) {
            is ImageGenerationResult.Success -> {
                assertNotNull(result.image)
                assertTrue(result.prompt.contains("creative") || result.prompt.contains("artistic"))
            }
            is ImageGenerationResult.Error -> {
                fail("Character-enhanced image generation should not fail: ${result.message}")
            }
        }
    }
    
    @Test
    fun testCognitiveAIIntegration() {
        // Create a character and have a conversation
        val character = cognitiveEngine.createCognitiveCharacter(
            name = "IntegrationTest",
            personality = "Test character for integration",
            traits = mapOf("intelligence" to 0.8f)
        )
        
        // Process natural language which should create cognitive primitives
        val response = cognitiveEngine.processNaturalLanguage(
            "This is a test of cognitive-AI integration",
            character,
            ConversationContext("integration-test")
        )
        
        // Check that cognitive system was affected
        val stats = cognitiveEngine.getStatistics()
        assertTrue(stats.totalAtoms > 0, "Should have atoms in cognitive system")
        
        // Check integration stats
        val integrationStats = cognitiveEngine.getAIIntegrationStats()
        assertTrue(integrationStats.crossSystemConnections > 0, "Should have cross-system connections")
        assertTrue(integrationStats.integrationHealth > 0, "Should have positive integration health")
    }
    
    @Test
    fun testPrivacyScoring() {
        val stats = cognitiveEngine.getAIIntegrationStats()
        val privacyScore = stats.aiSystemStats.privacyScore
        
        assertTrue(privacyScore >= 0f, "Privacy score should be non-negative")
        assertTrue(privacyScore <= 100f, "Privacy score should not exceed 100")
        
        // Privacy score should be high due to local processing
        assertTrue(privacyScore > 50f, "Privacy score should be high for local processing system")
    }
    
    @Test
    fun testSystemOptimization() {
        // Create some data first
        repeat(5) { i ->
            cognitiveEngine.processNaturalLanguage("Test message $i")
            cognitiveEngine.generateImage("Test image $i")
        }
        
        val statsBefore = cognitiveEngine.getStatistics()
        
        // Run optimization
        cognitiveEngine.optimizeIntegratedSystem()
        
        val statsAfter = cognitiveEngine.getStatistics()
        
        // System should still be functional after optimization
        assertTrue(statsAfter.systemHealthPercentage > 0, "System should remain healthy after optimization")
    }
    
    @Test
    fun testConversationContext() {
        val context1 = ConversationContext("session1", "greeting", EmotionalState.HAPPY)
        val context2 = ConversationContext("session2", "technical", EmotionalState.CURIOUS)
        
        val response1 = cognitiveEngine.processNaturalLanguage("Hello there!", context = context1)
        val response2 = cognitiveEngine.processNaturalLanguage("How does this work?", context = context2)
        
        // Both should succeed
        assertTrue(response1 is AIResponse.Success, "First response should succeed")
        assertTrue(response2 is AIResponse.Success, "Second response should succeed")
        
        // Responses should be different due to different contexts
        when {
            response1 is AIResponse.Success && response2 is AIResponse.Success -> {
                assertNotEquals(response1.text, response2.text, "Responses should differ with different contexts")
            }
        }
    }
    
    @Test
    fun testMultipleCharacterInteractions() {
        val assistant = cognitiveEngine.createCognitiveCharacter(
            name = "Assistant",
            personality = "Helpful and formal",
            traits = mapOf("formality" to 0.9f, "helpfulness" to 0.9f)
        )
        
        val friend = cognitiveEngine.createCognitiveCharacter(
            name = "Friend",
            personality = "Casual and friendly",
            traits = mapOf("friendliness" to 0.9f, "casualness" to 0.8f)
        )
        
        val response1 = cognitiveEngine.processNaturalLanguage("Good morning", character = assistant)
        val response2 = cognitiveEngine.processNaturalLanguage("Good morning", character = friend)
        
        assertTrue(response1 is AIResponse.Success, "Assistant response should succeed")
        assertTrue(response2 is AIResponse.Success, "Friend response should succeed")
        
        val stats = cognitiveEngine.getAIIntegrationStats()
        assertTrue(stats.aiSystemStats.activeCharacters >= 2, "Should track multiple characters")
    }
    
    @Test
    fun testImageStyleVariations() {
        val prompt = "A colorful sunset"
        val styles = listOf(ImageStyle.REALISTIC, ImageStyle.ARTISTIC, ImageStyle.ABSTRACT)
        
        styles.forEach { style ->
            val result = cognitiveEngine.generateImage(prompt, style)
            when (result) {
                is ImageGenerationResult.Success -> {
                    assertNotNull(result.image)
                    assertTrue(result.prompt.contains(prompt))
                }
                is ImageGenerationResult.Error -> {
                    fail("Image generation with style $style should not fail: ${result.message}")
                }
            }
        }
    }
}