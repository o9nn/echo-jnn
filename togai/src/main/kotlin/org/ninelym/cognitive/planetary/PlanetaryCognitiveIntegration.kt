package org.ninelym.cognitive.planetary

import org.ninelym.cognitive.CognitiveEngine

/**
 * Integration layer between the Planetary Neural Network and the existing Cognitive Engine.
 * 
 * This class demonstrates how the planetary transformer network can be integrated
 * with the existing cognitive architecture to enable planetary-scale intelligence.
 */
class PlanetaryCognitiveIntegration(
    private val cognitiveEngine: CognitiveEngine,
    private val planetaryNetwork: PlanetaryTransformer = PlanetaryTransformer()
) {
    
    /**
     * Initialize a planetary network with sample cities
     */
    fun initializeSampleNetwork() {
        // North America
        val sanFrancisco = CityAttentionHead("San Francisco", "technology", budget = 2000.0, reputation = 1.5)
        sanFrancisco.storeKnowledge("innovation", CityKnowledge("innovation", "Silicon Valley tech ecosystem"))
        planetaryNetwork.addCity(sanFrancisco, "California", "North America")
        
        val newYork = CityAttentionHead("New York", "finance", budget = 2500.0, reputation = 1.8)
        newYork.storeKnowledge("economy", CityKnowledge("economy", "Global financial markets"))
        planetaryNetwork.addCity(newYork, "New York Metro", "North America")
        
        // Asia
        val tokyo = CityAttentionHead("Tokyo", "transportation", budget = 3000.0, reputation = 2.0)
        tokyo.storeKnowledge("traffic", CityKnowledge("traffic", "Multi-modal transit systems"))
        planetaryNetwork.addCity(tokyo, "Kanto", "Asia")
        
        val singapore = CityAttentionHead("Singapore", "smart city", budget = 2800.0, reputation = 1.9)
        singapore.storeKnowledge("infrastructure", CityKnowledge("infrastructure", "Smart city technologies"))
        planetaryNetwork.addCity(singapore, "Singapore Metro", "Asia")
        
        // Europe
        val copenhagen = CityAttentionHead("Copenhagen", "sustainability", budget = 1800.0, reputation = 1.6)
        copenhagen.storeKnowledge("environment", CityKnowledge("environment", "Green urban planning"))
        planetaryNetwork.addCity(copenhagen, "Copenhagen Metro", "Europe")
    }
    
    /**
     * Process a query through the planetary network
     */
    fun processPlanetaryQuery(topic: String, description: String, priority: QueryPriority = QueryPriority.NORMAL): PlanetarySolution {
        val query = UrbanQuery(topic, description, priority)
        return planetaryNetwork.processPlanetaryLayer(query)
    }
    
    /**
     * Query a specific city for local knowledge
     */
    fun queryCityKnowledge(cityName: String, topic: String, description: String): LocalSolution? {
        val query = UrbanQuery(topic, description)
        return planetaryNetwork.processLocalLayer(query, cityName)
    }
    
    /**
     * Enable cross-city collaboration
     */
    fun facilitateCrossCityCollaboration(
        queryCity: String,
        topic: String,
        description: String,
        expertCities: List<String>
    ): CrossCityAttentionResult {
        val query = UrbanQuery(topic, description, QueryPriority.HIGH)
        return planetaryNetwork.executeCrossCityAttention(queryCity, query, expertCities)
    }
    
    /**
     * Get planetary network statistics
     */
    fun getNetworkHealth(): PlanetaryStatistics {
        return planetaryNetwork.getPlanetaryStatistics()
    }
    
    /**
     * Evolve the network based on performance
     */
    fun evolveNetwork(): EvolutionaryPressureResult {
        return planetaryNetwork.evolveNetwork()
    }
}

/**
 * Example usage demonstrating integration
 */
fun demonstratePlanetaryIntegration() {
    println("🌍 Planetary Cognitive Integration Demo")
    println("=" .repeat(60))
    
    // Create cognitive engine (would normally be injected)
    val cognitiveEngine = CognitiveEngine()
    
    // Create integration layer
    val integration = PlanetaryCognitiveIntegration(cognitiveEngine)
    
    // Initialize network
    println("\n📍 Initializing planetary network...")
    integration.initializeSampleNetwork()
    
    // Query planetary network
    println("\n🌍 Querying planetary consciousness...")
    val planetarySolution = integration.processPlanetaryQuery(
        topic = "climate change",
        description = "How can cities adapt to climate change while maintaining economic growth?",
        priority = QueryPriority.URGENT
    )
    
    println("Consciousness Level: ${planetarySolution.consciousnessLevel}")
    println("Continents Participating: ${planetarySolution.continentalInsights.size}")
    println("Cities Participating: ${planetarySolution.totalCitiesParticipating}")
    
    // Cross-city collaboration
    println("\n🤝 Facilitating cross-city collaboration...")
    val collaboration = integration.facilitateCrossCityCollaboration(
        queryCity = "San Francisco",
        topic = "transportation",
        description = "Future of urban mobility",
        expertCities = listOf("Tokyo", "Singapore", "Copenhagen")
    )
    
    if (collaboration.success) {
        println("Collaboration successful!")
        println("Value created: ${collaboration.valueCreated}")
        println("Contributing cities: ${collaboration.solution.contributingCities.joinToString(", ")}")
    }
    
    // Network health
    println("\n📊 Network Health Metrics:")
    val health = integration.getNetworkHealth()
    println("Total Cities: ${health.totalCities}")
    println("Total Budget: ${health.totalBudget}")
    println("Average Reputation: ${"%.2f".format(health.averageReputation)}")
    println("Consciousness Level: ${"%.1f".format(health.consciousnessLevel * 100)}%")
    
    println("\n✅ Integration demonstration complete!")
}
