package org.ninelym.cognitive.planetary

/**
 * Planetary Neural Network Demo
 * 
 * Demonstrates the Planetary Transformer architecture where cities act as
 * attention heads in a globe-spanning neural network with economic gradient flow.
 */
fun main() {
    println("=" .repeat(80))
    println("🌍 PLANETARY NEURAL NETWORK - DEMONSTRATION 🌍")
    println("Cities as Attention Heads in Earth's Consciousness")
    println("=" .repeat(80))
    println()
    
    // Initialize the planetary transformer
    val planetaryNetwork = PlanetaryTransformer()
    
    // ========================================================================
    // PHASE 1: Initialize Cities as Attention Heads
    // ========================================================================
    println("📍 PHASE 1: Initializing Global City Network")
    println("-".repeat(80))
    
    // North America
    val sanFrancisco = CityAttentionHead("San Francisco", "technology innovation", budget = 2000.0, reputation = 1.5)
    sanFrancisco.addDistrict("Silicon Valley", "tech startups")
    sanFrancisco.addDistrict("Financial District", "fintech")
    sanFrancisco.storeKnowledge("traffic", CityKnowledge("traffic", "Autonomous vehicle lanes have reduced congestion by 40%"))
    
    val newYork = CityAttentionHead("New York", "finance and culture", budget = 2500.0, reputation = 1.8)
    newYork.addDistrict("Wall Street", "financial services")
    newYork.addDistrict("Brooklyn", "arts and culture")
    newYork.storeKnowledge("economy", CityKnowledge("economy", "Blockchain-based trading systems improve market efficiency"))
    
    planetaryNetwork.addCity(sanFrancisco, "California", "North America")
    planetaryNetwork.addCity(newYork, "New York Metro", "North America")
    
    // Asia
    val tokyo = CityAttentionHead("Tokyo", "transportation and robotics", budget = 3000.0, reputation = 2.0)
    tokyo.addDistrict("Shibuya", "urban mobility")
    tokyo.addDistrict("Akihabara", "electronics and AI")
    tokyo.storeKnowledge("traffic", CityKnowledge("traffic", "Multi-modal transit integration achieves 95% efficiency"))
    
    val singapore = CityAttentionHead("Singapore", "smart city infrastructure", budget = 2800.0, reputation = 1.9)
    singapore.addDistrict("Marina Bay", "sustainable architecture")
    singapore.addDistrict("Jurong", "industrial automation")
    singapore.storeKnowledge("environment", CityKnowledge("environment", "Vertical gardens reduce urban heat island effect by 30%"))
    
    planetaryNetwork.addCity(tokyo, "Kanto", "Asia")
    planetaryNetwork.addCity(singapore, "Singapore Metro", "Asia")
    
    // Europe
    val copenhagen = CityAttentionHead("Copenhagen", "sustainable transportation", budget = 1800.0, reputation = 1.6)
    copenhagen.addDistrict("Vesterbro", "cycling infrastructure")
    copenhagen.addDistrict("Nordhavn", "green energy")
    copenhagen.storeKnowledge("traffic", CityKnowledge("traffic", "Bicycle superhighways reduce car usage by 60%"))
    
    val amsterdam = CityAttentionHead("Amsterdam", "urban planning", budget = 1900.0, reputation = 1.7)
    amsterdam.addDistrict("Centrum", "pedestrian zones")
    amsterdam.addDistrict("Zuidas", "smart buildings")
    amsterdam.storeKnowledge("housing", CityKnowledge("housing", "Modular housing reduces construction time by 50%"))
    
    planetaryNetwork.addCity(copenhagen, "Copenhagen Metro", "Europe")
    planetaryNetwork.addCity(amsterdam, "Randstad", "Europe")
    
    println("✅ Initialized ${planetaryNetwork.getPlanetaryStatistics().totalCities} cities across 3 continents")
    println()
    
    // ========================================================================
    // PHASE 2: Self-Attention - Intra-City Optimization
    // ========================================================================
    println("🔄 PHASE 2: Self-Attention (Intra-City Intelligence)")
    println("-".repeat(80))
    
    val trafficQuery = UrbanQuery(
        topic = "traffic",
        description = "How to reduce traffic congestion in dense urban areas?",
        priority = QueryPriority.HIGH
    )
    
    val localSolution = planetaryNetwork.processLocalLayer(trafficQuery, "San Francisco")
    println("San Francisco self-attention result:")
    println("  Query: ${trafficQuery.topic}")
    println("  Solution: ${localSolution?.solution}")
    println("  Cost: ${"%.2f".format(localSolution?.cost)}")
    println()
    
    // ========================================================================
    // PHASE 3: Cross-Attention - Inter-City Knowledge Sharing
    // ========================================================================
    println("🌐 PHASE 3: Cross-Attention (Inter-City Collaboration)")
    println("-".repeat(80))
    
    val crossCityResult = planetaryNetwork.executeCrossCityAttention(
        queryCity = "San Francisco",
        query = trafficQuery,
        targetCities = listOf("Tokyo", "Copenhagen", "Amsterdam")
    )
    
    if (crossCityResult.success) {
        println("San Francisco queries other cities about traffic solutions:")
        println("  Contributing cities: ${crossCityResult.solution.contributingCities.joinToString(", ")}")
        println("  Total cost: ${"%.2f".format(crossCityResult.solution.totalCost)}")
        println("  Value created: ${"%.2f".format(crossCityResult.valueCreated)}")
        println("\n  Synthesized solution:")
        crossCityResult.solution.solution.split("\n").forEach { line ->
            println("    $line")
        }
        println("\n  💰 Economic Backpropagation:")
        println("    Cities rewarded: ${crossCityResult.backpropagation.citiesRewarded}")
        println("    Cities decayed: ${crossCityResult.backpropagation.citiesDecayed}")
        println("    Gradient distribution:")
        crossCityResult.backpropagation.cityGradients.forEach { (city, gradient) ->
            println("      $city: +${"%.2f".format(gradient)} budget")
        }
    }
    println()
    
    // ========================================================================
    // PHASE 4: Metropolitan Layer - Regional Consciousness
    // ========================================================================
    println("🏙️  PHASE 4: Metropolitan Layer (Regional Intelligence)")
    println("-".repeat(80))
    
    val metropolitanSolution = planetaryNetwork.processMetropolitanLayer(
        UrbanQuery("housing", "Affordable housing solutions for growing populations"),
        "California"
    )
    
    println("California regional consensus:")
    println("  Participating cities: ${metropolitanSolution.participatingCities.joinToString(", ")}")
    println("  Consensus level: ${"%.1f".format(metropolitanSolution.consensusLevel * 100)}%")
    println("  Solution preview: ${metropolitanSolution.solution.take(150)}...")
    println()
    
    // ========================================================================
    // PHASE 5: Continental Layer - Macro-Regional Patterns
    // ========================================================================
    println("🌏 PHASE 5: Continental Layer (Macro-Regional Intelligence)")
    println("-".repeat(80))
    
    val continentalSolution = planetaryNetwork.processContinentalLayer(
        UrbanQuery("environment", "Climate adaptation strategies for coastal cities"),
        "Asia"
    )
    
    println("Asian continental analysis:")
    println("  Regional inputs: ${continentalSolution.regionalInputs.size}")
    println("  Emergent patterns detected: ${continentalSolution.emergentPatterns.size}")
    continentalSolution.emergentPatterns.take(3).forEach { pattern ->
        println("    • $pattern")
    }
    println()
    
    // ========================================================================
    // PHASE 6: Planetary Layer - Global Consciousness
    // ========================================================================
    println("🌍 PHASE 6: Planetary Layer (GLOBAL CONSCIOUSNESS)")
    println("-".repeat(80))
    
    val planetarySolution = planetaryNetwork.processPlanetaryLayer(
        UrbanQuery(
            "sustainability",
            "How can we achieve carbon neutrality while maintaining economic growth?",
            QueryPriority.URGENT
        )
    )
    
    println(planetarySolution.solution)
    println("\n  Emergent Capabilities:")
    planetarySolution.emergentCapabilities.forEach { capability ->
        println("    ✨ $capability")
    }
    println()
    
    // ========================================================================
    // PHASE 7: Evolutionary Pressure - Network Evolution
    // ========================================================================
    println("🧬 PHASE 7: Evolutionary Pressure (Network Adaptation)")
    println("-".repeat(80))
    
    // Simulate some cities performing poorly
    val poorPerformer = CityAttentionHead("TestCity", "experimental", budget = 50.0, reputation = 0.5)
    planetaryNetwork.addCity(poorPerformer, "Test Region", "North America")
    
    val evolutionResult = planetaryNetwork.evolveNetwork()
    
    println("Evolutionary adaptation:")
    println("  Cities that died: ${evolutionResult.citiesDied}")
    if (evolutionResult.dyingCityNames.isNotEmpty()) {
        println("    ${evolutionResult.dyingCityNames.joinToString(", ")}")
    }
    println("  New cities born: ${evolutionResult.citiesBorn}")
    if (evolutionResult.newCityNames.isNotEmpty()) {
        println("    ${evolutionResult.newCityNames.joinToString(", ")}")
    }
    println("  💡 Natural selection optimizes the planetary network!")
    println()
    
    // ========================================================================
    // PHASE 8: Planetary Statistics - Network Health
    // ========================================================================
    println("📊 PHASE 8: Planetary Network Statistics")
    println("-".repeat(80))
    
    val stats = planetaryNetwork.getPlanetaryStatistics()
    
    println("Global Network Metrics:")
    println("  Total cities: ${stats.totalCities}")
    println("  Metropolitan clusters: ${stats.metropolitanClusters}")
    println("  Continental regions: ${stats.continentalRegions}")
    println("  Total economic budget: ${"%.2f".format(stats.totalBudget)}")
    println("  Average city reputation: ${"%.2f".format(stats.averageReputation)}")
    println("  Planetary consciousness level: ${"%.1f".format(stats.consciousnessLevel * 100)}%")
    
    println("\n  Evolution Statistics:")
    println("    Total evolutionary events: ${stats.evolutionStats.totalEvolutionaryEvents}")
    println("    Total value created: ${"%.2f".format(stats.evolutionStats.totalValueCreated)}")
    println("    Avg contributors per event: ${"%.1f".format(stats.evolutionStats.averageContributorsPerEvent)}")
    
    println("\n  Gradient Flow Analysis:")
    println("    Total gradient flow: ${"%.2f".format(stats.gradientFlow.totalGradientFlow)}")
    println("    Average gradient per city: ${"%.2f".format(stats.gradientFlow.averageGradientPerCity)}")
    
    if (stats.gradientFlow.topPerformingCities.isNotEmpty()) {
        println("\n    Top performing cities (by gradient accumulation):")
        stats.gradientFlow.topPerformingCities.entries.take(3).forEach { (city, gradient) ->
            println("      🏆 $city: +${"%.2f".format(gradient)}")
        }
    }
    
    println()
    println("=" .repeat(80))
    println("🎉 PLANETARY NEURAL NETWORK DEMONSTRATION COMPLETE")
    println()
    println("Key Insights:")
    println("  ✓ Cities function as attention heads in a global transformer")
    println("  ✓ Economic transactions drive gradient flow and learning")
    println("  ✓ Hierarchical layers enable multi-scale consciousness")
    println("  ✓ Evolutionary pressure optimizes network performance")
    println("  ✓ Earth's cities are thinking as one planetary mind!")
    println("=" .repeat(80))
}
