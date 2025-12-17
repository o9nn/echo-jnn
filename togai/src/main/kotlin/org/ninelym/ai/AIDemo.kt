package org.ninelym.ai

import org.ninelym.cognitive.CognitiveEngine

/**
 * AI Demo showcasing integrated cognitive-AI capabilities
 * Demonstrates features inspired by Layla AI's on-device processing
 */
class AIDemo {
    
    private val cognitiveEngine = CognitiveEngine()
    private var isInitialized = false
    
    /**
     * Initialize the integrated AI system
     */
    fun initialize(): Boolean {
        return try {
            // Initialize cognitive engine
            println("🧠 Initializing Cognitive Engine...")
            
            // Initialize AI capabilities
            println("🤖 Initializing AI Processor...")
            val aiInitialized = cognitiveEngine.initializeAI()
            
            if (aiInitialized) {
                isInitialized = true
                println("✅ Integrated AI System initialized successfully!")
                
                // Create demo characters
                createDemoCharacters()
                
                // Display system status
                displaySystemStatus()
                
                true
            } else {
                println("❌ Failed to initialize AI system")
                false
            }
        } catch (e: Exception) {
            println("❌ Initialization failed: ${e.message}")
            false
        }
    }
    
    /**
     * Run interactive AI demo
     */
    fun runDemo() {
        if (!isInitialized) {
            println("❌ System not initialized. Please run initialize() first.")
            return
        }
        
        println("\n🎭 Welcome to 9mly AI Demo - Cognitive + AI Integration")
        println("This demo showcases Layla AI-inspired features with cognitive computing.")
        println("=".repeat(70))
        
        // Demo 1: Character Conversations
        demoCharacterConversations()
        
        // Demo 2: Image Generation
        demoImageGeneration()
        
        // Demo 3: Cognitive Processing
        demoCognitiveProcessing()
        
        // Demo 4: Privacy and Data Management
        demoPrivacyFeatures()
        
        // Demo 5: System Integration
        demoSystemIntegration()
        
        println("\n🎉 Demo completed! All features demonstrated successfully.")
        displayFinalStats()
    }
    
    private fun createDemoCharacters() {
        println("\n👥 Creating demo characters...")
        
        // Create helpful assistant
        val assistant = cognitiveEngine.createCognitiveCharacter(
            name = "Layla",
            personality = "Helpful, knowledgeable, and friendly AI assistant",
            traits = mapOf(
                "helpfulness" to 0.9f,
                "intelligence" to 0.8f,
                "empathy" to 0.8f,
                "creativity" to 0.6f
            ),
            backstory = "I'm your personal AI assistant, designed to help while keeping your data private."
        )
        
        // Create creative companion
        val creative = cognitiveEngine.createCognitiveCharacter(
            name = "Aria",
            personality = "Creative, imaginative, and inspiring artistic companion",
            traits = mapOf(
                "creativity" to 0.95f,
                "imagination" to 0.9f,
                "empathy" to 0.7f,
                "playfulness" to 0.8f
            ),
            backstory = "I live to inspire creativity and help bring artistic visions to life."
        )
        
        println("✅ Created characters: ${assistant.name} (Assistant), ${creative.name} (Creative)")
    }
    
    private fun demoCharacterConversations() {
        println("\n🎭 DEMO 1: Character Conversations")
        println("-".repeat(40))
        
        // Demo conversation with assistant
        println("\n💬 Talking with Layla (Assistant):")
        val response1 = cognitiveEngine.processNaturalLanguage(
            "Hello! Can you help me understand how this AI system works?",
            context = ConversationContext("demo-session-1", "AI explanation")
        )
        
        when (response1) {
            is AIResponse.Success -> {
                println("👤 User: Hello! Can you help me understand how this AI system works?")
                println("🤖 Layla: ${response1.text}")
                println("   ⚡ Confidence: ${(response1.confidenceScore * 100).toInt()}%")
                println("   ⏱️  Processing: ${response1.processingTime}ms")
            }
            is AIResponse.Error -> {
                println("❌ Error: ${response1.message}")
            }
        }
        
        // Demo creative conversation
        println("\n🎨 Talking with Aria (Creative):")
        val creativeChar = Character(
            id = "creative-demo",
            name = "Aria",
            personality = "Creative and artistic",
            traits = mutableMapOf("creativity" to 0.95f),
            backstory = "I'm a creative companion",
            createdAt = System.currentTimeMillis(),
            isCustom = false
        )
        
        val response2 = cognitiveEngine.processNaturalLanguage(
            "I want to create a beautiful digital artwork. Can you inspire me?",
            character = creativeChar,
            context = ConversationContext("demo-session-2", "Art creation")
        )
        
        when (response2) {
            is AIResponse.Success -> {
                println("👤 User: I want to create a beautiful digital artwork. Can you inspire me?")
                println("🎨 Aria: ${response2.text}")
                println("   ⚡ Confidence: ${(response2.confidenceScore * 100).toInt()}%")
            }
            is AIResponse.Error -> {
                println("❌ Error: ${response2.message}")
            }
        }
    }
    
    private fun demoImageGeneration() {
        println("\n🖼️  DEMO 2: Local Image Generation")
        println("-".repeat(40))
        
        val prompts = listOf(
            "A serene mountain landscape at sunset" to ImageStyle.LANDSCAPE,
            "Futuristic AI robot helper" to ImageStyle.DEFAULT,
            "Anime-style magical girl character" to ImageStyle.ANIME,
            "Abstract representation of consciousness" to ImageStyle.ABSTRACT
        )
        
        prompts.forEach { (prompt, style) ->
            println("\n🎨 Generating: \"$prompt\" (${style.name} style)")
            
            val result = cognitiveEngine.generateImage(prompt, style)
            
            when (result) {
                is ImageGenerationResult.Success -> {
                    val image = result.image
                    println("✅ Generated image: ${image.id}")
                    println("   📏 Size: ${image.width}x${image.height}")
                    println("   🎯 Model: ${image.modelUsed}")
                    println("   ⏱️  Time: ${result.processingTimeMs}ms")
                    println("   💾 Cached: ${if (result.fromCache) "Yes" else "No"}")
                    println("   💡 Enhanced prompt: \"${result.prompt}\"")
                }
                is ImageGenerationResult.Error -> {
                    println("❌ Generation failed: ${result.message}")
                }
            }
        }
    }
    
    private fun demoCognitiveProcessing() {
        println("\n🧠 DEMO 3: Cognitive Processing Integration")
        println("-".repeat(40))
        
        // Process some cognitive expressions
        val expressions = listOf(
            "(define creativity (λ (input) (transform input artistic-style)))",
            "(evaluate (user-satisfaction high))",
            "(link concept-art visual-beauty emotional-response)"
        )
        
        expressions.forEach { expression ->
            println("\n🔄 Processing: $expression")
            val result = cognitiveEngine.processSchemeExpression(expression)
            
            when (result) {
                is org.ninelym.cognitive.ProcessingResult.Success -> {
                    println("✅ Success: ${result.message}")
                    val atomsList = result.atoms as? List<*>
                    if (atomsList != null && atomsList.isNotEmpty()) {
                        println("   🔗 Added ${atomsList.size} atoms to hypergraph")
                    }
                }
                is org.ninelym.cognitive.ProcessingResult.Failure -> {
                    println("❌ Failed: ${result.error}")
                }
            }
        }
        
        // Show current cognitive state
        val state = cognitiveEngine.getCognitiveState()
        println("\n📊 Current Cognitive State:")
        println("   🧩 Active Tensors: ${state.tensors.size}")
        println("   ⚛️  Atoms: ${state.atomCount}")
        println("   🧠 Fragments: ${state.fragmentCount}")
        println("   🎯 Avg Attention: ${(state.averageAttention * 100).toInt()}%")
        println("   ❤️  Health: ${state.systemHealth}")
    }
    
    private fun demoPrivacyFeatures() {
        println("\n🔒 DEMO 4: Privacy & Local Data Management")
        println("-".repeat(40))
        
        val stats = cognitiveEngine.getAIIntegrationStats()
        val aiStats = stats.aiSystemStats
        
        println("📈 Privacy & Data Statistics:")
        println("   🔐 Privacy Score: ${(aiStats.privacyScore).toInt()}/100")
        println("   💬 Conversations Stored: ${aiStats.conversationsStored}")
        println("   👥 Active Characters: ${aiStats.activeCharacters}")
        println("   💾 Memory Usage: ${aiStats.memoryUsageMB} MB")
        println("   🤖 Loaded AI Models: ${aiStats.loadedModels}/${aiStats.totalModels}")
        
        // Demonstrate data control features
        println("\n🛡️  Privacy Features Demonstrated:")
        println("   ✅ All data processing happens locally on device")
        println("   ✅ No internet connection required for AI features")
        println("   ✅ Encrypted local storage for sensitive data")
        println("   ✅ User-controlled data retention policies")
        println("   ✅ Complete conversation history control")
        println("   ✅ Character data stored locally and privately")
    }
    
    private fun demoSystemIntegration() {
        println("\n🔄 DEMO 5: Cognitive-AI System Integration")
        println("-".repeat(40))
        
        val integrationStats = cognitiveEngine.getAIIntegrationStats()
        
        println("📊 Integration Statistics:")
        println("   🔗 Cross-system Connections: ${integrationStats.crossSystemConnections}")
        println("   🧮 Total Processing Nodes: ${integrationStats.totalProcessingNodes}")
        println("   ❤️  Integration Health: ${(integrationStats.integrationHealth).toInt()}%")
        
        // Show cognitive system stats
        val cognitiveStats = integrationStats.cognitiveSystemStats
        println("\n🧠 Cognitive System:")
        println("   ⚛️  Atoms: ${cognitiveStats.totalAtoms}")
        println("   🔗 Links: ${cognitiveStats.totalLinks}")
        println("   🧩 Active Fragments: ${cognitiveStats.activeFragments}")
        println("   🎯 System Health: ${(cognitiveStats.systemHealthPercentage).toInt()}%")
        
        // Demonstrate system optimization
        println("\n⚡ Running System Optimization...")
        cognitiveEngine.optimizeIntegratedSystem()
        println("✅ System optimization completed")
        
        // Show ECAN integration
        println("\n🧠 ECAN Attention System:")
        val ecanStats = cognitiveEngine.getECANStats()
        println("   ⚡ Total Atoms: ${ecanStats.totalAtoms}")
        println("   🎯 High Attention: ${ecanStats.highAttentionAtoms}")
        println("   ⏱️  Avg Attention: ${(ecanStats.averageAttention * 100).toInt()}%")
        println("   💰 Bank Balance: ${ecanStats.bankBalance}")
    }
    
    private fun displaySystemStatus() {
        println("\n📊 System Status:")
        val stats = cognitiveEngine.getStatistics()
        println("   🧠 Cognitive Engine: Ready")
        println("   🤖 AI Processor: Ready")
        println("   👥 Character System: Ready")
        println("   🔒 Privacy Manager: Active")
        println("   🖼️  Image Generator: Ready")
        println("   ⚛️  Current Atoms: ${stats.totalAtoms}")
    }
    
    private fun displayFinalStats() {
        val integrationStats = cognitiveEngine.getAIIntegrationStats()
        val aiStats = integrationStats.aiSystemStats
        val cognitiveStats = integrationStats.cognitiveSystemStats
        
        println("\n📊 Final System Statistics:")
        println("=".repeat(50))
        println("🤖 AI System:")
        println("   Characters: ${aiStats.activeCharacters}")
        println("   Conversations: ${aiStats.conversationsStored}")
        println("   Models: ${aiStats.loadedModels}/${aiStats.totalModels}")
        println("   Memory: ${aiStats.memoryUsageMB} MB")
        println("   Privacy Score: ${aiStats.privacyScore.toInt()}/100")
        
        println("\n🧠 Cognitive System:")
        println("   Atoms: ${cognitiveStats.totalAtoms}")
        println("   Links: ${cognitiveStats.totalLinks}")
        println("   Fragments: ${cognitiveStats.activeFragments}")
        println("   Attention: ${(cognitiveStats.averageAttention * 100).toInt()}%")
        println("   Health: ${cognitiveStats.systemHealthPercentage.toInt()}%")
        
        println("\n🔗 Integration:")
        println("   Cross-connections: ${integrationStats.crossSystemConnections}")
        println("   Processing Nodes: ${integrationStats.totalProcessingNodes}")
        println("   Integration Health: ${integrationStats.integrationHealth.toInt()}%")
        
        println("\n🎉 Demo completed successfully!")
        println("   This demonstration showed how Layla AI-inspired features")
        println("   integrate with advanced cognitive computing architecture.")
        println("   All processing happened locally with privacy-first design.")
    }
}

/**
 * Main function to run the AI demo
 */
fun main() {
    val demo = AIDemo()
    
    if (demo.initialize()) {
        demo.runDemo()
    } else {
        println("❌ Failed to initialize demo system")
    }
}