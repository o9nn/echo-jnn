package org.ninelym.layla.phase2

import org.ninelym.layla.character.EnhancedCharacterService
import org.ninelym.layla.character.Expression
import org.ninelym.layla.character.Sentiment
import kotlinx.coroutines.runBlocking
import org.junit.Test
import org.junit.Before
import org.junit.Assert.*

/**
 * Test suite for Enhanced Character Service
 * Phase 2: Enhancement - Character System Tests
 */
class EnhancedCharacterServiceTest {
    
    private lateinit var service: EnhancedCharacterService
    
    @Before
    fun setup() {
        service = EnhancedCharacterService()
    }
    
    @Test
    fun `test service initialization`() = runBlocking {
        val result = service.initialize()
        assertTrue("Service should initialize successfully", result.isSuccess)
    }
    
    @Test
    fun `test set active character`() = runBlocking {
        service.initialize()
        
        val result = service.setActiveCharacter("creative")
        assertTrue("Setting active character should succeed", result.isSuccess)
        
        val activeCharacter = service.getActiveCharacter()
        assertEquals("Active character should be 'creative'", "creative", activeCharacter)
    }
    
    @Test
    fun `test set character expression`() = runBlocking {
        service.initialize()
        service.setActiveCharacter("assistant")
        
        val result = service.setExpression("assistant", Expression.HAPPY)
        assertTrue("Setting expression should succeed", result.isSuccess)
    }
    
    @Test
    fun `test generate expression from sentiment`() = runBlocking {
        service.initialize()
        
        val expression = service.generateExpression(
            characterId = "assistant",
            messageContext = "Great job on completing the task!",
            sentiment = Sentiment.POSITIVE
        )
        
        assertNotNull("Expression should be generated", expression)
        // Expression should be positive (HAPPY or NEUTRAL)
        assertTrue(
            "Expression should be positive",
            expression == Expression.HAPPY || expression == Expression.NEUTRAL
        )
    }
    
    @Test
    fun `test sync expression with speech`() = runBlocking {
        service.initialize()
        service.setActiveCharacter("creative")
        
        val result = service.syncWithSpeech(
            characterId = "creative",
            text = "Hello! How are you today?"
        )
        
        assertTrue("Syncing with speech should succeed", result.isSuccess)
    }
    
    @Test
    fun `test get personality traits`() = runBlocking {
        service.initialize()
        
        val traits = service.getPersonalityTraits("assistant")
        assertNotNull("Traits should not be null", traits)
        assertTrue("Should have helpfulness trait", traits?.containsKey("helpfulness") == true)
        assertTrue("Should have empathy trait", traits?.containsKey("empathy") == true)
    }
    
    @Test
    fun `test update personality trait`() = runBlocking {
        service.initialize()
        
        val result = service.updatePersonalityTrait(
            characterId = "assistant",
            trait = "helpfulness",
            value = 0.95f
        )
        
        assertTrue("Updating trait should succeed", result.isSuccess)
        
        val traits = service.getPersonalityTraits("assistant")
        assertEquals("Trait value should be updated", 0.95f, traits?.get("helpfulness"))
    }
    
    @Test
    fun `test get available characters`() = runBlocking {
        service.initialize()
        
        val characters = service.getAvailableCharacters()
        assertTrue("Should have multiple characters", characters.size >= 5)
        
        val characterIds = characters.map { it.id }
        assertTrue("Should have assistant", characterIds.contains("assistant"))
        assertTrue("Should have creative", characterIds.contains("creative"))
        assertTrue("Should have analyst", characterIds.contains("analyst"))
    }
    
    @Test
    fun `test expression generation for different sentiments`() = runBlocking {
        service.initialize()
        
        val positiveExpr = service.generateExpression(
            "creative",
            "This is wonderful!",
            Sentiment.POSITIVE
        )
        
        val negativeExpr = service.generateExpression(
            "creative",
            "This is unfortunate",
            Sentiment.NEGATIVE
        )
        
        val neutralExpr = service.generateExpression(
            "analyst",
            "Let me analyze this",
            Sentiment.NEUTRAL
        )
        
        assertNotNull("Positive expression should be generated", positiveExpr)
        assertNotNull("Negative expression should be generated", negativeExpr)
        assertNotNull("Neutral expression should be generated", neutralExpr)
    }
    
    @Test
    fun `test character-specific personality traits`() = runBlocking {
        service.initialize()
        
        val creativeTraits = service.getPersonalityTraits("creative")
        val analystTraits = service.getPersonalityTraits("analyst")
        
        // Creative should have high creativity
        assertTrue(
            "Creative character should have high creativity",
            (creativeTraits?.get("creativity") ?: 0f) > 0.9f
        )
        
        // Analyst should have high logic
        assertTrue(
            "Analyst character should have high logic",
            (analystTraits?.get("logic") ?: 0f) > 0.9f
        )
    }
    
    @Test
    fun `test expression without initialization fails`() = runBlocking {
        val result = service.setExpression("assistant", Expression.HAPPY)
        assertTrue("Setting expression without initialization should fail", result.isFailure)
    }
}
