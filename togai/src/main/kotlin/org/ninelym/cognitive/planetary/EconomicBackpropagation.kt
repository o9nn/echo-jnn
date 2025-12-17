package org.ninelym.cognitive.planetary

/**
 * Economic Backpropagation System
 * 
 * Money flows backward through the network like gradients,
 * training the global transformer to optimize value creation.
 * 
 * Tensor Signature: [value_created, contribution_gradient, budget_flow, reputation_delta, survival_probability]
 */
class EconomicBackpropagation(
    val learningRate: Double = 0.1,
    val reputationRate: Double = 0.05,
    val decayRate: Double = 0.95,
    val survivalThreshold: Double = 100.0
) {
    
    private val evolutionHistory = mutableListOf<EvolutionaryEvent>()
    
    /**
     * Backward pass: distribute value back to contributing cities
     */
    fun backwardPass(
        solution: CrossCitySolution,
        valueCreated: Double,
        allCities: MutableList<CityAttentionHead>
    ): BackpropagationResult {
        val contributingCities = allCities.filter { 
            it.cityName in solution.contributingCities 
        }
        
        val nonContributingCities = allCities.filter {
            it.cityName !in solution.contributingCities && it.cityName != solution.queryCity
        }
        
        // Calculate gradients for each contributing city
        val gradients = mutableMapOf<String, Double>()
        
        contributingCities.forEach { city ->
            val contribution = calculateContribution(city, solution, valueCreated)
            val gradient = contribution * learningRate
            
            // Update city budget (like updating neuron weights)
            city.budget += gradient
            city.reputation += gradient * reputationRate
            
            gradients[city.cityName] = gradient
        }
        
        // Apply decay to non-contributing cities
        nonContributingCities.forEach { city ->
            city.budget *= decayRate
            city.reputation *= decayRate
        }
        
        // Record evolutionary event
        val event = EvolutionaryEvent(
            timestamp = System.currentTimeMillis(),
            valueCreated = valueCreated,
            contributingCities = contributingCities.map { it.cityName },
            gradients = gradients,
            decayedCities = nonContributingCities.map { it.cityName }
        )
        evolutionHistory.add(event)
        
        return BackpropagationResult(
            valueDistributed = valueCreated,
            cityGradients = gradients,
            citiesRewarded = contributingCities.size,
            citiesDecayed = nonContributingCities.size
        )
    }
    
    /**
     * Apply evolutionary pressure: cities that don't contribute eventually die
     * New cities are born with different strategies
     */
    fun applyEvolutionaryPressure(cities: MutableList<CityAttentionHead>): EvolutionaryPressureResult {
        val dyingCities = mutableListOf<CityAttentionHead>()
        val newCities = mutableListOf<CityAttentionHead>()
        
        // Identify cities below survival threshold
        cities.forEach { city ->
            if (city.budget < survivalThreshold) {
                dyingCities.add(city)
                
                // Spawn a variant with different strategy
                val variant = spawnVariant(city)
                newCities.add(variant)
            }
        }
        
        // Replace dying cities with new variants
        cities.removeAll(dyingCities)
        cities.addAll(newCities)
        
        return EvolutionaryPressureResult(
            citiesDied = dyingCities.size,
            citiesBorn = newCities.size,
            dyingCityNames = dyingCities.map { it.cityName },
            newCityNames = newCities.map { it.cityName }
        )
    }
    
    /**
     * Calculate a city's contribution to the solution value
     */
    private fun calculateContribution(
        city: CityAttentionHead,
        solution: CrossCitySolution,
        valueCreated: Double
    ): Double {
        // Contribution proportional to participation and reputation
        val participationWeight = 1.0 / solution.contributingCities.size
        val reputationBonus = city.reputation * 0.2
        
        return valueCreated * participationWeight * (1.0 + reputationBonus)
    }
    
    /**
     * Spawn a variant city with mutated strategy
     */
    private fun spawnVariant(deadCity: CityAttentionHead): CityAttentionHead {
        // Create a variant with slightly different parameters
        val variantName = "${deadCity.cityName}_v${System.currentTimeMillis() % 1000}"
        
        // Mutate specialization slightly
        val specializations = listOf(
            "traffic", "housing", "environment", "economy", 
            "healthcare", "education", "transportation", "energy"
        )
        val newSpecialization = specializations.random()
        
        return CityAttentionHead(
            cityName = variantName,
            specialization = newSpecialization,
            budget = survivalThreshold * 1.5, // Give it a fresh start
            reputation = 0.8 // Slightly lower reputation as it's new
        ).also {
            // Inherit some knowledge from parent
            it.basePricePerQuery = deadCity.basePricePerQuery * (0.8 + Math.random() * 0.4)
            it.premiumMultiplier = deadCity.premiumMultiplier * (0.8 + Math.random() * 0.4)
        }
    }
    
    /**
     * Get evolution statistics
     */
    fun getEvolutionStatistics(): EvolutionStatistics {
        val totalEvents = evolutionHistory.size
        val totalValueCreated = evolutionHistory.sumOf { it.valueCreated }
        val averageContributors = if (totalEvents > 0) {
            evolutionHistory.sumOf { it.contributingCities.size }.toDouble() / totalEvents
        } else 0.0
        
        return EvolutionStatistics(
            totalEvolutionaryEvents = totalEvents,
            totalValueCreated = totalValueCreated,
            averageContributorsPerEvent = averageContributors,
            evolutionHistory = evolutionHistory.takeLast(10) // Last 10 events
        )
    }
    
    /**
     * Analyze gradient flow patterns
     */
    fun analyzeGradientFlow(): GradientFlowAnalysis {
        val recentEvents = evolutionHistory.takeLast(20)
        
        val cityGradientSums = mutableMapOf<String, Double>()
        recentEvents.forEach { event ->
            event.gradients.forEach { (city, gradient) ->
                cityGradientSums[city] = (cityGradientSums[city] ?: 0.0) + gradient
            }
        }
        
        val topPerformers = cityGradientSums.entries
            .sortedByDescending { it.value }
            .take(5)
            .associate { it.toPair() }
        
        val bottomPerformers = cityGradientSums.entries
            .sortedBy { it.value }
            .take(5)
            .associate { it.toPair() }
        
        return GradientFlowAnalysis(
            totalGradientFlow = cityGradientSums.values.sum(),
            topPerformingCities = topPerformers,
            bottomPerformingCities = bottomPerformers,
            averageGradientPerCity = if (cityGradientSums.isNotEmpty()) {
                cityGradientSums.values.average()
            } else 0.0
        )
    }
}

/**
 * Result of a backpropagation pass
 */
data class BackpropagationResult(
    val valueDistributed: Double,
    val cityGradients: Map<String, Double>,
    val citiesRewarded: Int,
    val citiesDecayed: Int
)

/**
 * Result of evolutionary pressure application
 */
data class EvolutionaryPressureResult(
    val citiesDied: Int,
    val citiesBorn: Int,
    val dyingCityNames: List<String>,
    val newCityNames: List<String>
)

/**
 * Record of an evolutionary event
 */
data class EvolutionaryEvent(
    val timestamp: Long,
    val valueCreated: Double,
    val contributingCities: List<String>,
    val gradients: Map<String, Double>,
    val decayedCities: List<String>
)

/**
 * Evolution statistics
 */
data class EvolutionStatistics(
    val totalEvolutionaryEvents: Int,
    val totalValueCreated: Double,
    val averageContributorsPerEvent: Double,
    val evolutionHistory: List<EvolutionaryEvent>
)

/**
 * Gradient flow analysis
 */
data class GradientFlowAnalysis(
    val totalGradientFlow: Double,
    val topPerformingCities: Map<String, Double>,
    val bottomPerformingCities: Map<String, Double>,
    val averageGradientPerCity: Double
)
