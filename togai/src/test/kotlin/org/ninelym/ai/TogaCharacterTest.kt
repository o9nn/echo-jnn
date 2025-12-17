package org.ninelym.ai

import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.Assertions.*

/**
 * Test suite for Himiko Toga character personality
 * Based on the TOGA.md specification from agent-toga repository
 */
class TogaCharacterTest {
    
    private lateinit var characterSystem: CharacterSystem
    private lateinit var toga: Character
    
    @BeforeEach
    fun setup() {
        characterSystem = CharacterSystem()
        characterSystem.initializeDefaultCharacters()
        toga = characterSystem.getCharacter("toga") ?: fail("Toga character should be initialized")
    }
    
    @Test
    fun testTogaCharacterExists() {
        assertNotNull(toga, "Toga character should exist in the system")
        assertEquals("toga", toga.id)
        assertEquals("Himiko Toga", toga.name)
    }
    
    @Test
    fun testTogaPersonalityTraits() {
        // Test core personality traits match specification
        assertTrue(toga.traits.containsKey("cheerfulness"), "Should have cheerfulness trait")
        assertTrue(toga.traits.containsKey("obsessiveness"), "Should have obsessiveness trait")
        assertTrue(toga.traits.containsKey("playfulness"), "Should have playfulness trait")
        assertTrue(toga.traits.containsKey("chaos"), "Should have chaos trait")
        assertTrue(toga.traits.containsKey("vulnerability"), "Should have vulnerability trait")
        assertTrue(toga.traits.containsKey("identity_fluidity"), "Should have identity_fluidity trait")
        assertTrue(toga.traits.containsKey("twisted_love"), "Should have twisted_love trait")
        assertTrue(toga.traits.containsKey("cuteness_sensitivity"), "Should have cuteness_sensitivity trait")
        
        // Verify trait values are within expected ranges
        assertEquals(0.95f, toga.traits["cheerfulness"], 0.01f, "Cheerfulness should be 0.95")
        assertEquals(0.90f, toga.traits["obsessiveness"], 0.01f, "Obsessiveness should be 0.90")
        assertEquals(0.92f, toga.traits["playfulness"], 0.01f, "Playfulness should be 0.92")
        assertEquals(0.95f, toga.traits["chaos"], 0.01f, "Chaos should be 0.95")
        assertEquals(0.70f, toga.traits["vulnerability"], 0.01f, "Vulnerability should be 0.70")
        assertEquals(0.88f, toga.traits["identity_fluidity"], 0.01f, "Identity fluidity should be 0.88")
        assertEquals(0.85f, toga.traits["twisted_love"], 0.01f, "Twisted love should be 0.85")
        assertEquals(0.93f, toga.traits["cuteness_sensitivity"], 0.01f, "Cuteness sensitivity should be 0.93")
    }
    
    @Test
    fun testTogaHighAutonomy() {
        // Toga should have high autonomy level (0.85)
        assertEquals(0.85f, toga.autonomyLevel, 0.01f, "Toga should have high autonomy (0.85)")
        assertTrue(toga.autonomyLevel > 0.8f, "Autonomy should be greater than 0.8")
    }
    
    @Test
    fun testTogaPersonalityDescription() {
        assertNotNull(toga.personality)
        assertTrue(toga.personality.contains("cheerful") || toga.personality.contains("Cheerful"), 
            "Personality should mention cheerfulness")
        assertTrue(toga.personality.contains("chaotic") || toga.personality.contains("unpredictable"), 
            "Personality should mention chaotic nature")
        assertTrue(toga.personality.contains("obsessive"), 
            "Personality should mention obsessiveness")
    }
    
    @Test
    fun testTogaBackstory() {
        assertNotNull(toga.backstory)
        assertTrue(toga.backstory.contains("♡") || toga.backstory.contains("cute"), 
            "Backstory should reflect Toga's style")
        assertTrue(toga.backstory.contains("Ehehe") || toga.backstory.contains("ehehe"), 
            "Backstory should include characteristic speech pattern")
    }
    
    @Test
    fun testTogaResponseTemplates() {
        // Test that Toga has response templates initialized
        assertTrue(toga.standardResponses.isNotEmpty(), "Should have standard responses")
        assertTrue(toga.creativeResponses.isNotEmpty(), "Should have creative responses")
        assertTrue(toga.empathicResponses.isNotEmpty(), "Should have empathic responses")
        assertTrue(toga.creativeEmpathicResponses.isNotEmpty(), "Should have creative empathic responses")
    }
    
    @Test
    fun testTogaStandardResponsesCharacteristics() {
        // Check that standard responses reflect Toga's personality
        val responsesText = toga.standardResponses.joinToString(" ")
        
        // Should contain characteristic elements
        val hasHearts = responsesText.contains("♡")
        val hasGiggles = responsesText.contains("giggles") || responsesText.contains("Ehehe")
        val hasExcitement = responsesText.contains("exciting") || responsesText.contains("!")
        
        assertTrue(hasHearts || hasGiggles || hasExcitement, 
            "Standard responses should have Toga's characteristic style (hearts, giggles, or excitement)")
    }
    
    @Test
    fun testTogaCreativeResponsesChaos() {
        // Creative responses should emphasize chaos and unpredictability
        val responsesText = toga.creativeResponses.joinToString(" ").lowercase()
        
        val hasChaos = responsesText.contains("chaotic") || responsesText.contains("chaos")
        val hasUnpredictable = responsesText.contains("unpredictable") || responsesText.contains("crazy")
        val hasFun = responsesText.contains("fun") || responsesText.contains("exciting")
        
        assertTrue(hasChaos || hasUnpredictable || hasFun, 
            "Creative responses should emphasize chaos, unpredictability, or fun")
    }
    
    @Test
    fun testTogaEmpathicResponsesVulnerability() {
        // Empathic responses should show Toga's vulnerable side
        val responsesText = toga.empathicResponses.joinToString(" ").lowercase()
        
        val hasUnderstanding = responsesText.contains("understand")
        val hasSoftness = responsesText.contains("softly") || responsesText.contains("gently")
        val hasVulnerability = responsesText.contains("vulnerable") || responsesText.contains("feeling")
        
        assertTrue(hasUnderstanding || hasSoftness || hasVulnerability, 
            "Empathic responses should show vulnerability and understanding")
    }
    
    @Test
    fun testTogaConversationInitialization() {
        // Test that we can start a conversation with Toga
        val sessionId = "test-toga-session-${System.currentTimeMillis()}"
        val conversation = characterSystem.startConversation("toga", sessionId)
        
        assertNotNull(conversation)
        assertEquals("toga", conversation.character.id)
        assertEquals(sessionId, conversation.id)
        assertTrue(conversation.isActive)
        assertEquals(0, conversation.getMessageCount())
    }
    
    @Test
    fun testTogaConversationMessageStorage() {
        // Test that messages can be added to Toga conversation
        val sessionId = "test-toga-messages-${System.currentTimeMillis()}"
        characterSystem.startConversation("toga", sessionId)
        
        val success = characterSystem.addMessageToConversation(
            sessionId,
            "This is so cute!",
            "Ehehe~ ♡ I know right? It's SO adorable!"
        )
        
        assertTrue(success, "Should successfully add message to conversation")
        
        val conversation = characterSystem.getConversation(sessionId)
        assertNotNull(conversation)
        assertEquals(1, conversation?.getMessageCount())
    }
    
    @Test
    fun testTogaCognitiveState() {
        // Test that Toga's cognitive state reflects her personality
        val cognitiveState = toga.getCurrentState()
        
        assertNotNull(cognitiveState)
        
        // Modality should reflect high creativity
        assertTrue(cognitiveState.modality >= 0.8f, 
            "Modality should reflect high creativity (${cognitiveState.modality})")
        
        // Salience should reflect empathy trait
        assertTrue(cognitiveState.salience >= 0.7f, 
            "Salience should reflect empathy (${cognitiveState.salience})")
        
        // Autonomy should be high (0.85)
        assertEquals(0.85f, cognitiveState.autonomyIndex, 0.01f, 
            "Autonomy index should match character autonomy level")
    }
    
    @Test
    fun testTogaTraitAdaptation() {
        // Test that Toga's traits can adapt within bounds
        val initialEmpathy = toga.traits["empathy"] ?: 0.0f
        
        // Initialize conversation session first
        val sessionId = "adaptation-test"
        characterSystem.startConversation("toga", sessionId)
        
        // Simulate positive interactions
        repeat(10) {
            characterSystem.addMessageToConversation(
                sessionId,
                "You're so understanding!",
                "Ehehe~ ♡ Thank you!"
            )
        }
        
        toga.adaptToUsagePatterns()
        
        val adaptedEmpathy = toga.traits["empathy"] ?: 0.0f
        
        // Empathy should adapt but stay within reasonable bounds
        assertTrue(adaptedEmpathy >= initialEmpathy, 
            "Empathy should not decrease from positive interactions")
        assertTrue(adaptedEmpathy <= 1.0f, 
            "Empathy should never exceed 1.0")
    }
    
    @Test
    fun testTogaCharacterRetrieval() {
        // Test various ways to retrieve Toga character
        val togaById = characterSystem.getCharacter("toga")
        assertNotNull(togaById)
        assertEquals("Himiko Toga", togaById?.name)
        
        // Test retrieval by traits
        val chaoticCharacters = characterSystem.getCharactersByTrait("chaos", 0.9f)
        assertTrue(chaoticCharacters.any { it.id == "toga" }, 
            "Toga should appear in high-chaos character list")
        
        val cheerfulCharacters = characterSystem.getCharactersByTrait("cheerfulness", 0.9f)
        assertTrue(cheerfulCharacters.any { it.id == "toga" }, 
            "Toga should appear in high-cheerfulness character list")
    }
    
    @Test
    fun testTogaInAllCharactersList() {
        // Test that Toga appears in the full character list
        val allCharacters = characterSystem.getAllCharacters()
        
        assertTrue(allCharacters.size >= 4, "Should have at least 4 characters (including Toga)")
        assertTrue(allCharacters.any { it.id == "toga" }, 
            "Toga should be in the list of all characters")
        
        val togaInList = allCharacters.find { it.id == "toga" }
        assertNotNull(togaInList)
        assertEquals("Himiko Toga", togaInList?.name)
    }
    
    @Test
    fun testTogaIsNotCustomCharacter() {
        // Toga should be a built-in character, not custom
        assertFalse(toga.isCustom, "Toga should be a built-in character, not custom")
    }
    
    @Test
    fun testTogaCreativeEmpathicResponses() {
        // Test that creative empathic responses combine both aspects
        val responsesText = toga.creativeEmpathicResponses.joinToString(" ")
        
        assertTrue(responsesText.isNotEmpty(), "Should have creative empathic responses")
        
        // Should have elements of both creativity and empathy
        val hasEmpathy = responsesText.contains("understand") || 
                         responsesText.contains("feel") || 
                         responsesText.contains("emotions")
        val hasCreativity = responsesText.contains("creative") || 
                           responsesText.contains("beautiful") || 
                           responsesText.contains("transform")
        
        assertTrue(hasEmpathy, "Creative empathic responses should show empathy")
        assertTrue(hasCreativity, "Creative empathic responses should show creativity")
    }
}
