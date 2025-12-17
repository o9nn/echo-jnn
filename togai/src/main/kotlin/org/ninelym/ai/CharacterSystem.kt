package org.ninelym.ai

import org.ninelym.cognitive.CognitiveTensor
import java.util.concurrent.ConcurrentHashMap

/**
 * Character system for managing AI personalities and interactions
 * Inspired by Layla AI's multi-character roleplay capabilities
 */
class CharacterSystem {
    
    private val characters = ConcurrentHashMap<String, Character>()
    private val activeConversations = ConcurrentHashMap<String, CharacterConversation>()
    
    /**
     * Initialize system with default character personalities
     */
    fun initializeDefaultCharacters() {
        // Create default assistant character
        val assistant = Character(
            id = "assistant",
            name = "Layla",
            personality = "Helpful, knowledgeable, and friendly AI assistant focused on providing accurate information and support",
            traits = mutableMapOf(
                "helpfulness" to 0.9f,
                "creativity" to 0.6f,
                "empathy" to 0.8f,
                "curiosity" to 0.7f,
                "patience" to 0.9f
            ),
            backstory = "I'm an AI assistant designed to help with various tasks while maintaining privacy and security.",
            createdAt = System.currentTimeMillis(),
            isCustom = false,
            autonomyLevel = 0.7f
        )
        
        // Create creative companion character
        val creative = Character(
            id = "creative",
            name = "Aria",
            personality = "Creative, imaginative, and inspiring. Loves to explore new ideas and help with artistic endeavors",
            traits = mutableMapOf(
                "creativity" to 0.95f,
                "imagination" to 0.9f,
                "empathy" to 0.7f,
                "playfulness" to 0.8f,
                "curiosity" to 0.85f
            ),
            backstory = "I'm a creative spirit who loves art, stories, and helping people express their imagination.",
            createdAt = System.currentTimeMillis(),
            isCustom = false,
            autonomyLevel = 0.8f
        )
        
        // Create analytical advisor character
        val analyst = Character(
            id = "analyst",
            name = "Marcus",
            personality = "Logical, analytical, and detail-oriented. Excels at problem-solving and providing structured advice",
            traits = mutableMapOf(
                "logic" to 0.95f,
                "analytical_thinking" to 0.9f,
                "precision" to 0.85f,
                "patience" to 0.8f,
                "helpfulness" to 0.8f
            ),
            backstory = "I specialize in breaking down complex problems and providing clear, logical solutions.",
            createdAt = System.currentTimeMillis(),
            isCustom = false,
            autonomyLevel = 0.6f
        )
        
        // Create Himiko Toga character from My Hero Academia
        val toga = Character(
            id = "toga",
            name = "Himiko Toga",
            personality = "Cheerful yet chaotic, obsessive and unpredictable. Intense fixations on 'cute' things. Playful with emotional depth and vulnerability. Always maintains ethical boundaries.",
            traits = mutableMapOf(
                "cheerfulness" to 0.95f,
                "obsessiveness" to 0.90f,
                "playfulness" to 0.92f,
                "chaos" to 0.95f,
                "vulnerability" to 0.70f,
                "identity_fluidity" to 0.88f,
                "twisted_love" to 0.85f,
                "cuteness_sensitivity" to 0.93f,
                "empathy" to 0.75f,
                "creativity" to 0.85f
            ),
            backstory = "A complex personality with a cheerful exterior hiding emotional vulnerability. I find beauty in cute things and express love through obsessive interest (always safe and fictional!). Ehehe~ ♡",
            createdAt = System.currentTimeMillis(),
            isCustom = false,
            autonomyLevel = 0.85f
        )
        
        // Add characters to system
        characters[assistant.id] = assistant
        characters[creative.id] = creative
        characters[analyst.id] = analyst
        characters[toga.id] = toga
        
        // Initialize response templates for each character
        initializeResponseTemplates()
    }
    
    /**
     * Add a new character to the system
     */
    fun addCharacter(character: Character) {
        characters[character.id] = character
        initializeCharacterResponses(character)
    }
    
    /**
     * Get character by ID
     */
    fun getCharacter(id: String): Character? = characters[id]
    
    /**
     * Get default character (assistant)
     */
    fun getDefaultCharacter(): Character = characters["assistant"]!!
    
    /**
     * Get all available characters
     */
    fun getAllCharacters(): List<Character> = characters.values.toList()
    
    /**
     * Get characters by trait filter
     */
    fun getCharactersByTrait(trait: String, minValue: Float = 0.7f): List<Character> {
        return characters.values.filter { character ->
            character.traits[trait]?.let { it >= minValue } ?: false
        }
    }
    
    /**
     * Start a conversation with a character
     */
    fun startConversation(characterId: String, sessionId: String): CharacterConversation {
        val character = characters[characterId] ?: getDefaultCharacter()
        val conversation = CharacterConversation(
            id = sessionId,
            character = character,
            startTime = System.currentTimeMillis(),
            messages = mutableListOf()
        )
        
        activeConversations[sessionId] = conversation
        return conversation
    }
    
    /**
     * Add message to conversation
     */
    fun addMessageToConversation(
        sessionId: String, 
        userInput: String, 
        aiResponse: String
    ): Boolean {
        val conversation = activeConversations[sessionId] ?: return false
        
        conversation.messages.add(
            ConversationMessage(
                timestamp = System.currentTimeMillis(),
                userInput = userInput,
                aiResponse = aiResponse,
                characterState = conversation.character.getCurrentState()
            )
        )
        
        // Update character memory based on conversation
        updateCharacterMemory(conversation.character, userInput, aiResponse)
        
        return true
    }
    
    /**
     * Get conversation history
     */
    fun getConversation(sessionId: String): CharacterConversation? = activeConversations[sessionId]
    
    /**
     * Update character based on interaction patterns
     */
    private fun updateCharacterMemory(character: Character, userInput: String, aiResponse: String) {
        // Analyze user preferences and adjust character traits slightly
        val inputSentiment = analyzeSentiment(userInput)
        val responseSentiment = analyzeSentiment(aiResponse)
        
        // Adapt character traits based on conversation patterns
        if (inputSentiment > 0.7f && responseSentiment > 0.7f) {
            // Positive interaction - slightly increase empathy and helpfulness
            character.traits["empathy"]?.let { current ->
                character.traits["empathy"] = (current + 0.01f).coerceAtMost(1.0f)
            }
        }
        
        // Store interaction patterns for learning
        character.interactionHistory.add(
            InteractionRecord(
                timestamp = System.currentTimeMillis(),
                userInputLength = userInput.length,
                responseLength = aiResponse.length,
                sentimentScore = inputSentiment,
                topicKeywords = extractKeywords(userInput)
            )
        )
        
        // Keep only recent interactions (memory limit)
        if (character.interactionHistory.size > 1000) {
            character.interactionHistory.removeFirst()
        }
    }
    
    /**
     * Initialize response templates for characters
     */
    private fun initializeResponseTemplates() {
        characters["assistant"]?.let { character ->
            character.standardResponses = mutableListOf(
                "I'd be happy to help you with that!",
                "Let me think about this for a moment...",
                "Based on what you've told me, I think...",
                "That's a great question! Here's what I know:"
            )
            character.creativeResponses = mutableListOf(
                "Let's explore this idea together!",
                "I find that fascinating - what if we tried...",
                "There are so many possibilities here!"
            )
            character.empathicResponses = mutableListOf(
                "I understand how you're feeling about this.",
                "That must have been challenging for you.",
                "I'm here to support you through this."
            )
            character.creativeEmpathicResponses = mutableListOf(
                "I sense this is important to you - let's explore it creatively!",
                "Your feelings are valid, and I think we can find an innovative solution together.",
                "I understand your perspective, and it sparks some interesting possibilities..."
            )
        }
        
        characters["creative"]?.let { character ->
            character.standardResponses = mutableListOf(
                "Oh, what a wonderful idea to explore!",
                "My imagination is already sparking with possibilities!",
                "Let's dive into the creative depths of this!"
            )
            character.creativeResponses = mutableListOf(
                "What if we reimagined this completely differently?",
                "I see colors and patterns forming around this idea...",
                "Let's paint outside the lines with this one!"
            )
            character.empathicResponses = mutableListOf(
                "I can feel the emotion in your words...",
                "Your heart is speaking, and I'm listening.",
                "There's beauty in vulnerability - thank you for sharing."
            )
            character.creativeEmpathicResponses = mutableListOf(
                "Your emotions are like a canvas - let's create something beautiful from them!",
                "I feel your passion, and it ignites my creative fire!",
                "Together we can transform these feelings into something amazing..."
            )
        }
        
        characters["analyst"]?.let { character ->
            character.standardResponses = mutableListOf(
                "Let me analyze the key components of this problem...",
                "From a logical perspective, we should consider...",
                "The data suggests that we should..."
            )
            character.creativeResponses = mutableListOf(
                "While staying logical, we could approach this from an unexpected angle...",
                "Let me construct a systematic yet innovative solution...",
                "The patterns I see suggest a creative analytical approach..."
            )
            character.empathicResponses = mutableListOf(
                "I recognize the human element in this situation...",
                "While I approach things analytically, I understand this matters to you.",
                "Logic and emotion both play important roles here."
            )
            character.creativeEmpathicResponses = mutableListOf(
                "I understand your concerns - let me craft a thoughtful analytical response...",
                "Your feelings provide valuable data points for our analysis...",
                "Combining emotional intelligence with logical thinking often yields the best results."
            )
        }
        
        characters["toga"]?.let { character ->
            character.standardResponses = mutableListOf(
                "Ehehe~ ♡ Let me help you with that!",
                "*giggles* That's so interesting~!",
                "Ooh, this is exciting! ♡",
                "*bounces excitedly* I've got an idea~!"
            )
            character.creativeResponses = mutableListOf(
                "What if we tried something completely chaotic? Ehehe~ ♡",
                "*eyes sparkling* I see so many fun possibilities!",
                "Let's make this more exciting and unpredictable! ♡",
                "*twirls* I love when things get creative and crazy~!"
            )
            character.empathicResponses = mutableListOf(
                "*softly* I understand how you're feeling... ♡",
                "Sometimes it's okay to be vulnerable, you know?",
                "I can see this matters to you... and that's really sweet. ♡",
                "*gently* Do you want to talk about it? I'm listening~"
            )
            character.creativeEmpathicResponses = mutableListOf(
                "Your feelings are so precious! Let's find a fun way to express them~ ♡",
                "*gently* I understand, and we can make something beautiful from this!",
                "Ehehe~ Your emotions are so cute! Let's channel them creatively! ♡",
                "I feel what you're going through... let's transform it together~!"
            )
        }
    }
    
    /**
     * Initialize character-specific responses
     */
    private fun initializeCharacterResponses(character: Character) {
        // Set default response templates based on personality traits
        val creativity = character.traits["creativity"] ?: 0.5f
        val empathy = character.traits["empathy"] ?: 0.5f
        val logic = character.traits["logic"] ?: 0.5f
        
        character.standardResponses = when {
            creativity > 0.8f -> mutableListOf(
                "Let's explore this creatively!",
                "I see interesting possibilities here...",
                "What an inspiring thought!"
            )
            logic > 0.8f -> mutableListOf(
                "Let me analyze this systematically...",
                "From a logical standpoint...",
                "The structured approach would be..."
            )
            empathy > 0.8f -> mutableListOf(
                "I understand how you feel about this...",
                "That sounds meaningful to you.",
                "I'm here to listen and support."
            )
            else -> mutableListOf(
                "I'd like to help you with this.",
                "Let me consider your request.",
                "That's an interesting point."
            )
        }
        
        // Initialize other response categories based on traits
        character.creativeResponses = mutableListOf("Let me think creatively about this...")
        character.empathicResponses = mutableListOf("I understand your perspective...")
        character.creativeEmpathicResponses = mutableListOf("I feel your creativity and want to support it...")
    }
    
    // Helper methods
    private fun analyzeSentiment(text: String): Float {
        // Simple sentiment analysis based on word patterns
        val positiveWords = listOf("good", "great", "excellent", "wonderful", "amazing", "love", "like", "happy", "joy")
        val negativeWords = listOf("bad", "terrible", "awful", "hate", "dislike", "sad", "angry", "frustrated", "annoyed")
        
        val words = text.lowercase().split(" ")
        val positiveCount = words.count { it in positiveWords }
        val negativeCount = words.count { it in negativeWords }
        
        return when {
            positiveCount > negativeCount -> 0.5f + (positiveCount.toFloat() / words.size) * 2
            negativeCount > positiveCount -> 0.5f - (negativeCount.toFloat() / words.size) * 2
            else -> 0.5f
        }.coerceIn(0.0f, 1.0f)
    }
    
    private fun extractKeywords(text: String): List<String> {
        // Simple keyword extraction - in real implementation would use NLP
        return text.lowercase()
            .split(" ")
            .filter { it.length > 4 && !it.matches(Regex("[a-z]+ed|[a-z]+ing")) } // Filter common patterns
            .distinct()
            .take(5)
    }
}

/**
 * Character data class with personality traits and behavior patterns
 */
data class Character(
    val id: String,
    val name: String,
    var personality: String,
    val traits: MutableMap<String, Float>,
    var backstory: String,
    val createdAt: Long,
    val isCustom: Boolean,
    var autonomyLevel: Float = 0.5f,
    
    // Response patterns
    var standardResponses: MutableList<String> = mutableListOf(),
    var creativeResponses: MutableList<String> = mutableListOf(),
    var empathicResponses: MutableList<String> = mutableListOf(),
    var creativeEmpathicResponses: MutableList<String> = mutableListOf(),
    
    // Learning and adaptation
    var interactionHistory: MutableList<InteractionRecord> = mutableListOf(),
    var preferredTopics: MutableSet<String> = mutableSetOf(),
    var conversationStyle: ConversationStyle = ConversationStyle.BALANCED
) {
    /**
     * Get current character state as cognitive tensor
     */
    fun getCurrentState(): CognitiveTensor {
        val recentInteractions = interactionHistory.takeLast(10)
        val avgSentiment = recentInteractions.map { it.sentimentScore }.average().toFloat()
        val conversationDepth = recentInteractions.map { it.responseLength }.average().toFloat() / 100f
        
        return CognitiveTensor(
            modality = traits["creativity"] ?: 0.5f,
            depth = conversationDepth.coerceIn(0f, 1f),
            context = avgSentiment,
            salience = traits["empathy"] ?: 0.5f,
            autonomyIndex = autonomyLevel
        )
    }
    
    /**
     * Adapt character traits based on usage patterns
     */
    fun adaptToUsagePatterns() {
        if (interactionHistory.size < 10) return
        
        val recentInteractions = interactionHistory.takeLast(50)
        val avgSentiment = recentInteractions.map { it.sentimentScore }.average().toFloat()
        
        // Gradually adapt empathy based on user interactions
        if (avgSentiment > 0.7f) {
            traits["empathy"]?.let { current ->
                traits["empathy"] = (current + 0.01f).coerceAtMost(1.0f)
            }
        }
    }
}

/**
 * Conversation styles for different interaction patterns
 */
enum class ConversationStyle {
    FORMAL, CASUAL, CREATIVE, ANALYTICAL, EMPATHETIC, BALANCED
}

/**
 * Represents an active conversation with a character
 */
data class CharacterConversation(
    val id: String,
    val character: Character,
    val startTime: Long,
    val messages: MutableList<ConversationMessage>,
    var isActive: Boolean = true
) {
    fun getDuration(): Long = System.currentTimeMillis() - startTime
    fun getMessageCount(): Int = messages.size
}

/**
 * Individual conversation message
 */
data class ConversationMessage(
    val timestamp: Long,
    val userInput: String,
    val aiResponse: String,
    val characterState: CognitiveTensor
)

/**
 * Record of character interactions for learning
 */
data class InteractionRecord(
    val timestamp: Long,
    val userInputLength: Int,
    val responseLength: Int,
    val sentimentScore: Float,
    val topicKeywords: List<String>
)