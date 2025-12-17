package org.ninelym.cognitive.planetary

import kotlin.math.sqrt
import kotlin.math.exp

/**
 * Represents a city as an attention head in the planetary transformer network.
 * Each city has specialized knowledge and can attend to other cities for solutions.
 * 
 * Tensor Signature: [query_relevance, knowledge_depth, access_cost, reputation, autonomy]
 */
class CityAttentionHead(
    val cityName: String,
    val specialization: String,
    var budget: Double = 1000.0,
    var reputation: Double = 1.0
) {
    // Districts/neighborhoods as local neurons
    private val localNeurons = mutableListOf<DistrictNeuron>()
    
    // Historical patterns and knowledge
    private val memoryBank = mutableMapOf<String, CityKnowledge>()
    
    // Economic parameters
    var basePricePerQuery: Double = 10.0
    var premiumMultiplier: Double = 5.0
    
    /**
     * Self-attention: Districts within the city attend to each other
     */
    fun selfAttention(urbanQuery: UrbanQuery): LocalSolution {
        val Q = generateDistrictQueries(urbanQuery)
        val K = getDistrictKnowledge()
        val V = getDistrictValues()
        
        // Economic pressure as attention weights
        val weights = softmax(divideScores(dotProduct(Q, K), sqrt(budget)))
        
        // Generate local solution
        val localOutput = weightedSum(weights, V)
        
        return LocalSolution(
            cityName = cityName,
            query = urbanQuery,
            solution = localOutput,
            cost = calculateLocalCost(weights),
            timestamp = System.currentTimeMillis()
        )
    }
    
    /**
     * Cross-attention: This city attends to other cities for knowledge
     */
    fun crossAttention(
        query: UrbanQuery,
        otherCities: List<CityAttentionHead>
    ): CrossCitySolution {
        val myQuery = generateQuery(query)
        val responses = mutableListOf<WeightedKnowledgeResponse>()
        var totalCost = 0.0
        
        // Query other cities that we can afford
        for (city in otherCities) {
            val accessCost = city.calculateAccessCost(myQuery)
            
            if (canAfford(accessCost)) {
                val response = city.provideKnowledge(myQuery)
                val relevanceScore = calculateRelevance(city, query)
                
                // Pay the city
                pay(city, accessCost)
                totalCost += accessCost
                
                responses.add(
                    WeightedKnowledgeResponse(
                        city = city.cityName,
                        knowledge = response,
                        weight = relevanceScore * city.reputation,
                        cost = accessCost
                    )
                )
            }
        }
        
        // Synthesize responses
        val synthesizedSolution = synthesize(responses)
        
        return CrossCitySolution(
            queryCity = cityName,
            query = query,
            contributingCities = responses.map { it.city },
            solution = synthesizedSolution,
            totalCost = totalCost,
            timestamp = System.currentTimeMillis()
        )
    }
    
    /**
     * Provide knowledge to other cities (when they query us)
     */
    fun provideKnowledge(query: UrbanQuery): KnowledgeResponse {
        // Search our memory bank for relevant patterns
        val relevantKnowledge = searchMemoryBank(query)
        
        return KnowledgeResponse(
            provider = cityName,
            query = query,
            knowledge = relevantKnowledge,
            confidence = calculateConfidence(query),
            specialization = specialization
        )
    }
    
    /**
     * Calculate access cost for a query based on relevance and reputation
     */
    fun calculateAccessCost(query: UrbanQuery): Double {
        val relevanceScore = calculateRelevance(this, query)
        val isPremium = query.priority == QueryPriority.URGENT
        
        val baseCost = basePricePerQuery * reputation
        return if (isPremium) baseCost * premiumMultiplier else baseCost
    }
    
    /**
     * Add a district/neighborhood to this city
     */
    fun addDistrict(name: String, function: String) {
        localNeurons.add(DistrictNeuron(name, function))
    }
    
    /**
     * Store knowledge in memory bank
     */
    fun storeKnowledge(topic: String, knowledge: CityKnowledge) {
        memoryBank[topic] = knowledge
    }
    
    /**
     * Receive payment from another city
     */
    fun receivePayment(amount: Double) {
        budget += amount
    }
    
    /**
     * Pay another city
     */
    private fun pay(city: CityAttentionHead, amount: Double) {
        if (budget >= amount) {
            budget -= amount
            city.receivePayment(amount)
        }
    }
    
    /**
     * Check if we can afford a transaction
     */
    private fun canAfford(cost: Double): Boolean = budget >= cost
    
    // Helper functions
    
    private fun generateDistrictQueries(query: UrbanQuery): List<QueryVector> {
        return localNeurons.map { district ->
            QueryVector(
                district = district.name,
                embedding = query.toVector(),
                priority = query.priority.value
            )
        }
    }
    
    private fun getDistrictKnowledge(): List<KeyVector> {
        return localNeurons.map { district ->
            KeyVector(
                district = district.name,
                knowledgeEmbedding = district.getKnowledgeVector()
            )
        }
    }
    
    private fun getDistrictValues(): List<ValueVector> {
        return localNeurons.map { district ->
            ValueVector(
                district = district.name,
                solutionEmbedding = district.getSolutionVector()
            )
        }
    }
    
    private fun generateQuery(urbanQuery: UrbanQuery): UrbanQuery {
        return urbanQuery.copy(
            sourceCity = cityName,
            budget = budget
        )
    }
    
    private fun calculateRelevance(city: CityAttentionHead, query: UrbanQuery): Double {
        // Calculate relevance based on specialization match
        val specializationMatch = if (city.specialization.contains(query.topic, ignoreCase = true)) 0.9 else 0.3
        val reputationFactor = city.reputation.coerceIn(0.1, 2.0)
        
        return specializationMatch * reputationFactor
    }
    
    private fun searchMemoryBank(query: UrbanQuery): String {
        // Simple keyword matching for now
        val relevantEntries = memoryBank.filter { (topic, _) ->
            query.topic.contains(topic, ignoreCase = true) || topic.contains(query.topic, ignoreCase = true)
        }
        
        return if (relevantEntries.isNotEmpty()) {
            relevantEntries.values.joinToString("; ") { it.content }
        } else {
            "No specific knowledge available, but willing to collaborate on: ${query.topic}"
        }
    }
    
    private fun calculateConfidence(query: UrbanQuery): Double {
        val hasRelevantKnowledge = memoryBank.keys.any { 
            query.topic.contains(it, ignoreCase = true) 
        }
        return if (hasRelevantKnowledge) 0.9 else 0.5
    }
    
    private fun synthesize(responses: List<WeightedKnowledgeResponse>): String {
        if (responses.isEmpty()) return "No solutions available"
        
        val totalWeight = responses.sumOf { it.weight }
        val weightedSolutions = responses.map { response ->
            val weight = response.weight / totalWeight
            "- ${response.city} (${(weight * 100).toInt()}%): ${response.knowledge.knowledge}"
        }
        
        return "Synthesized solution from ${responses.size} cities:\n" + weightedSolutions.joinToString("\n")
    }
    
    private fun calculateLocalCost(weights: List<Double>): Double {
        // Local computation cost is proportional to complexity
        return weights.sum() * 5.0
    }
    
    // Mathematical helpers
    
    private fun divideScores(scores: List<Double>, divisor: Double): List<Double> {
        return scores.map { it / divisor }
    }
    
    private fun dotProduct(queries: List<QueryVector>, keys: List<KeyVector>): List<Double> {
        return queries.zip(keys).map { (q, k) ->
            q.embedding.zip(k.knowledgeEmbedding).sumOf { (a, b) -> a * b }
        }
    }
    
    private fun softmax(scores: List<Double>): List<Double> {
        val maxScore = scores.maxOrNull() ?: 0.0
        val expScores = scores.map { exp(it - maxScore) }
        val sumExp = expScores.sum()
        return expScores.map { it / sumExp }
    }
    
    private fun weightedSum(weights: List<Double>, values: List<ValueVector>): String {
        // Combine solutions based on weights
        return values.zip(weights).joinToString("; ") { (v, w) ->
            "${v.district}: ${(w * 100).toInt()}%"
        }
    }
    
    override fun toString(): String {
        return "CityAttentionHead(name=$cityName, spec=$specialization, budget=${budget.toInt()}, reputation=${"%.2f".format(reputation)})"
    }
}

/**
 * Represents a district/neighborhood within a city
 */
data class DistrictNeuron(
    val name: String,
    val function: String
) {
    fun getKnowledgeVector(): List<Double> {
        // Simple embedding based on function
        return List(8) { Math.random() }
    }
    
    fun getSolutionVector(): List<Double> {
        return List(8) { Math.random() }
    }
}

/**
 * Urban query/challenge that needs solving
 */
data class UrbanQuery(
    val topic: String,
    val description: String,
    val priority: QueryPriority = QueryPriority.NORMAL,
    val sourceCity: String = "",
    val budget: Double = 100.0,
    val timestamp: Long = System.currentTimeMillis()
) {
    fun toVector(): List<Double> {
        // Convert query to embedding vector
        return List(8) { Math.random() }
    }
}

enum class QueryPriority(val value: Double) {
    LOW(0.3),
    NORMAL(0.6),
    HIGH(0.8),
    URGENT(1.0)
}

/**
 * Query vector for attention mechanism
 */
data class QueryVector(
    val district: String,
    val embedding: List<Double>,
    val priority: Double
)

/**
 * Key vector for attention mechanism
 */
data class KeyVector(
    val district: String,
    val knowledgeEmbedding: List<Double>
)

/**
 * Value vector for attention mechanism
 */
data class ValueVector(
    val district: String,
    val solutionEmbedding: List<Double>
)

/**
 * Local solution from self-attention
 */
data class LocalSolution(
    val cityName: String,
    val query: UrbanQuery,
    val solution: String,
    val cost: Double,
    val timestamp: Long
)

/**
 * Cross-city solution from cross-attention
 */
data class CrossCitySolution(
    val queryCity: String,
    val query: UrbanQuery,
    val contributingCities: List<String>,
    val solution: String,
    val totalCost: Double,
    val timestamp: Long
)

/**
 * Knowledge response from a city
 */
data class KnowledgeResponse(
    val provider: String,
    val query: UrbanQuery,
    val knowledge: String,
    val confidence: Double,
    val specialization: String
)

/**
 * Weighted knowledge response
 */
data class WeightedKnowledgeResponse(
    val city: String,
    val knowledge: KnowledgeResponse,
    val weight: Double,
    val cost: Double
)

/**
 * City knowledge stored in memory bank
 */
data class CityKnowledge(
    val topic: String,
    val content: String,
    val successRate: Double = 0.8,
    val timesUsed: Int = 0
)
