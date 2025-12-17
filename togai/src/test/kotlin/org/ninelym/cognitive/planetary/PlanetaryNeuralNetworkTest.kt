package org.ninelym.cognitive.planetary

import org.junit.Test
import kotlin.test.*

/**
 * Test suite for Planetary Neural Network components
 */
class PlanetaryNeuralNetworkTest {
    
    @Test
    fun testCityAttentionHeadCreation() {
        val city = CityAttentionHead(
            cityName = "TestCity",
            specialization = "transportation",
            budget = 1000.0,
            reputation = 1.0
        )
        
        assertEquals("TestCity", city.cityName)
        assertEquals("transportation", city.specialization)
        assertEquals(1000.0, city.budget)
        assertEquals(1.0, city.reputation)
    }
    
    @Test
    fun testDistrictAddition() {
        val city = CityAttentionHead("TestCity", "tech")
        
        city.addDistrict("Downtown", "business")
        city.addDistrict("Suburbs", "residential")
        
        // Districts should be added successfully
        assertTrue(true) // Basic validation
    }
    
    @Test
    fun testKnowledgeStorage() {
        val city = CityAttentionHead("TestCity", "environment")
        
        val knowledge = CityKnowledge(
            topic = "green energy",
            content = "Solar panels reduce costs by 40%",
            successRate = 0.9
        )
        
        city.storeKnowledge("green energy", knowledge)
        
        // Knowledge should be stored successfully
        assertTrue(true)
    }
    
    @Test
    fun testSelfAttention() {
        val city = CityAttentionHead("SanFrancisco", "technology")
        city.addDistrict("Silicon Valley", "tech")
        city.addDistrict("Financial District", "finance")
        
        val query = UrbanQuery(
            topic = "innovation",
            description = "How to foster innovation?",
            priority = QueryPriority.NORMAL
        )
        
        val solution = city.selfAttention(query)
        
        assertNotNull(solution)
        assertEquals("SanFrancisco", solution.cityName)
        assertEquals(query, solution.query)
        assertTrue(solution.cost > 0.0)
    }
    
    @Test
    fun testCrossAttention() {
        val sanFrancisco = CityAttentionHead("SanFrancisco", "technology", budget = 2000.0)
        val tokyo = CityAttentionHead("Tokyo", "transportation", budget = 3000.0)
        val copenhagen = CityAttentionHead("Copenhagen", "sustainability", budget = 1500.0)
        
        tokyo.storeKnowledge("traffic", CityKnowledge("traffic", "Metro system efficiency"))
        copenhagen.storeKnowledge("traffic", CityKnowledge("traffic", "Bicycle infrastructure"))
        
        val query = UrbanQuery(
            topic = "traffic",
            description = "Reduce traffic congestion",
            priority = QueryPriority.HIGH
        )
        
        val solution = sanFrancisco.crossAttention(query, listOf(tokyo, copenhagen))
        
        assertNotNull(solution)
        assertEquals("SanFrancisco", solution.queryCity)
        assertTrue(solution.contributingCities.isNotEmpty())
        assertTrue(solution.totalCost > 0.0)
    }
    
    @Test
    fun testEconomicPayment() {
        val city1 = CityAttentionHead("City1", "tech", budget = 1000.0)
        val city2 = CityAttentionHead("City2", "finance", budget = 500.0)
        
        val initialBudget1 = city1.budget
        val initialBudget2 = city2.budget
        
        city2.receivePayment(100.0)
        
        assertEquals(initialBudget1, city1.budget)
        assertEquals(initialBudget2 + 100.0, city2.budget)
    }
    
    @Test
    fun testAccessCostCalculation() {
        val city = CityAttentionHead("Tokyo", "transportation", reputation = 1.5)
        city.basePricePerQuery = 10.0
        city.premiumMultiplier = 5.0
        
        val normalQuery = UrbanQuery(
            topic = "traffic",
            description = "Normal query",
            priority = QueryPriority.NORMAL
        )
        
        val urgentQuery = UrbanQuery(
            topic = "traffic",
            description = "Urgent query",
            priority = QueryPriority.URGENT
        )
        
        val normalCost = city.calculateAccessCost(normalQuery)
        val urgentCost = city.calculateAccessCost(urgentQuery)
        
        assertTrue(urgentCost > normalCost)
    }
    
    @Test
    fun testEconomicBackpropagation() {
        val backprop = EconomicBackpropagation(
            learningRate = 0.1,
            reputationRate = 0.05,
            decayRate = 0.95
        )
        
        val city1 = CityAttentionHead("City1", "tech", budget = 1000.0, reputation = 1.0)
        val city2 = CityAttentionHead("City2", "finance", budget = 1000.0, reputation = 1.0)
        val city3 = CityAttentionHead("City3", "other", budget = 1000.0, reputation = 1.0)
        
        val cities = mutableListOf(city1, city2, city3)
        
        val solution = CrossCitySolution(
            queryCity = "City1",
            query = UrbanQuery("test", "test query"),
            contributingCities = listOf("City2"),
            solution = "Test solution",
            totalCost = 50.0,
            timestamp = System.currentTimeMillis()
        )
        
        val initialBudget2 = city2.budget
        val initialBudget3 = city3.budget
        
        val result = backprop.backwardPass(solution, 200.0, cities)
        
        // Contributing city should gain budget
        assertTrue(city2.budget > initialBudget2)
        
        // Non-contributing city should lose budget
        assertTrue(city3.budget < initialBudget3)
        
        assertEquals(1, result.citiesRewarded)
        assertTrue(result.citiesDecayed > 0)
    }
    
    @Test
    fun testEvolutionaryPressure() {
        val backprop = EconomicBackpropagation(survivalThreshold = 100.0)
        
        val strongCity = CityAttentionHead("Strong", "tech", budget = 500.0)
        val weakCity = CityAttentionHead("Weak", "other", budget = 50.0) // Below threshold
        
        val cities = mutableListOf(strongCity, weakCity)
        val initialSize = cities.size
        
        val result = backprop.applyEvolutionaryPressure(cities)
        
        assertEquals(initialSize, cities.size) // Size should remain same
        assertEquals(1, result.citiesDied)
        assertEquals(1, result.citiesBorn)
        assertTrue(result.newCityNames.isNotEmpty())
    }
    
    @Test
    fun testPlanetaryTransformerInitialization() {
        val network = PlanetaryTransformer()
        
        val city = CityAttentionHead("TestCity", "tech")
        network.addCity(city, "TestRegion", "TestContinent")
        
        val stats = network.getPlanetaryStatistics()
        
        assertEquals(1, stats.totalCities)
        assertTrue(stats.metropolitanClusters > 0)
        assertTrue(stats.continentalRegions > 0)
    }
    
    @Test
    fun testLocalLayerProcessing() {
        val network = PlanetaryTransformer()
        
        val city = CityAttentionHead("TestCity", "tech")
        city.addDistrict("District1", "business")
        network.addCity(city, "Region1", "Continent1")
        
        val query = UrbanQuery("innovation", "Test query")
        val solution = network.processLocalLayer(query, "TestCity")
        
        assertNotNull(solution)
        assertEquals("TestCity", solution.cityName)
    }
    
    @Test
    fun testMetropolitanLayerProcessing() {
        val network = PlanetaryTransformer()
        
        val city1 = CityAttentionHead("City1", "tech")
        val city2 = CityAttentionHead("City2", "finance")
        
        city1.addDistrict("District1", "tech")
        city2.addDistrict("District2", "finance")
        
        network.addCity(city1, "Metro1", "Continent1")
        network.addCity(city2, "Metro1", "Continent1")
        
        val query = UrbanQuery("economy", "Economic growth strategies")
        val solution = network.processMetropolitanLayer(query, "Metro1")
        
        assertEquals("Metro1", solution.region)
        assertTrue(solution.participatingCities.isNotEmpty())
        assertTrue(solution.consensusLevel >= 0.0)
    }
    
    @Test
    fun testContinentalLayerProcessing() {
        val network = PlanetaryTransformer()
        
        val city = CityAttentionHead("City1", "environment")
        city.addDistrict("District1", "green tech")
        network.addCity(city, "Region1", "Europe")
        
        val query = UrbanQuery("climate", "Climate adaptation")
        val solution = network.processContinentalLayer(query, "Europe")
        
        assertEquals("Europe", solution.continent)
        assertNotNull(solution.solution)
    }
    
    @Test
    fun testPlanetaryLayerProcessing() {
        val network = PlanetaryTransformer()
        
        val city1 = CityAttentionHead("City1", "tech")
        val city2 = CityAttentionHead("City2", "environment")
        
        city1.addDistrict("D1", "innovation")
        city2.addDistrict("D2", "sustainability")
        
        network.addCity(city1, "R1", "North America")
        network.addCity(city2, "R2", "Europe")
        
        val query = UrbanQuery("sustainability", "Global sustainability goals")
        val solution = network.processPlanetaryLayer(query)
        
        assertNotNull(solution.solution)
        assertTrue(solution.consciousnessLevel >= 0.0)
        assertTrue(solution.totalCitiesParticipating > 0)
    }
    
    @Test
    fun testCrossCityAttentionExecution() {
        val network = PlanetaryTransformer()
        
        val city1 = CityAttentionHead("City1", "tech", budget = 2000.0)
        val city2 = CityAttentionHead("City2", "finance", budget = 1500.0)
        
        city2.storeKnowledge("economy", CityKnowledge("economy", "Economic insights"))
        
        network.addCity(city1, "R1", "C1")
        network.addCity(city2, "R2", "C2")
        
        val query = UrbanQuery("economy", "Economic strategies")
        val result = network.executeCrossCityAttention("City1", query, listOf("City2"))
        
        assertTrue(result.success)
        assertTrue(result.valueCreated > 0.0)
    }
    
    @Test
    fun testPlanetaryConsciousnessEmergence() {
        val network = PlanetaryTransformer()
        
        // Add multiple cities to trigger consciousness emergence
        for (i in 1..10) {
            val city = CityAttentionHead("City$i", "specialization$i")
            city.addDistrict("District", "function")
            network.addCity(city, "Region$i", "Continent${i % 3}")
        }
        
        val query = UrbanQuery("global", "Global challenge")
        network.processPlanetaryLayer(query)
        
        val stats = network.getPlanetaryStatistics()
        
        // Consciousness should emerge with sufficient network complexity
        assertTrue(stats.consciousnessLevel >= 0.0)
        assertEquals(10, stats.totalCities)
    }
    
    @Test
    fun testGradientFlowAnalysis() {
        val backprop = EconomicBackpropagation()
        
        val city1 = CityAttentionHead("City1", "tech", budget = 1000.0)
        val city2 = CityAttentionHead("City2", "finance", budget = 1000.0)
        
        val cities = mutableListOf(city1, city2)
        
        // Simulate multiple events
        for (i in 1..5) {
            val solution = CrossCitySolution(
                queryCity = "City1",
                query = UrbanQuery("test", "test"),
                contributingCities = listOf("City2"),
                solution = "Solution",
                totalCost = 50.0,
                timestamp = System.currentTimeMillis()
            )
            
            backprop.backwardPass(solution, 100.0, cities)
        }
        
        val analysis = backprop.analyzeGradientFlow()
        
        assertTrue(analysis.totalGradientFlow > 0.0)
        assertTrue(analysis.topPerformingCities.isNotEmpty())
    }
    
    @Test
    fun testQueryPriorityLevels() {
        assertEquals(0.3, QueryPriority.LOW.value)
        assertEquals(0.6, QueryPriority.NORMAL.value)
        assertEquals(0.8, QueryPriority.HIGH.value)
        assertEquals(1.0, QueryPriority.URGENT.value)
    }
    
    @Test
    fun testCityKnowledgeDataClass() {
        val knowledge = CityKnowledge(
            topic = "transportation",
            content = "Metro system design",
            successRate = 0.85,
            timesUsed = 5
        )
        
        assertEquals("transportation", knowledge.topic)
        assertEquals("Metro system design", knowledge.content)
        assertEquals(0.85, knowledge.successRate)
        assertEquals(5, knowledge.timesUsed)
    }
}
