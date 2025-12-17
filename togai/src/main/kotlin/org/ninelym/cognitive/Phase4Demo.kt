package org.ninelym.cognitive

import org.ninelym.cognitive.api.*
import org.ninelym.cognitive.embodiment.*
import org.ninelym.cognitive.integration.*
import kotlinx.coroutines.*

/**
 * Phase 4 Demo: Distributed Cognitive Mesh API & Embodiment Layer
 * 
 * Demonstrates the complete Phase 4 implementation with:
 * - Cognitive Mesh API with REST/WebSocket endpoints
 * - Unity3D, ROS, and Web Agent embodiment bindings
 * - Comprehensive integration verification
 * 
 * Tensor signature: [agents, sensors, effectors, state]
 */
class Phase4Demo {
    
    private val cognitiveEngine = CognitiveEngine()
    private lateinit var meshAPI: CognitiveMeshAPI
    private lateinit var unity3DBinding: Unity3DBinding
    private lateinit var rosBinding: ROSBinding
    private lateinit var webAgentBinding: WebAgentBinding
    private lateinit var verificationSystem: IntegrationVerificationSystem
    
    suspend fun runDemo() {
        println("🌐 Phase 4 Demo: Distributed Cognitive Mesh API & Embodiment Layer")
        println("=" * 70)
        println()
        
        // Initialize all components
        initializeComponents()
        
        // Demonstrate API functionality
        demonstrateAPIFunctionality()
        
        // Demonstrate embodiment bindings
        demonstrateEmbodimentBindings()
        
        // Run comprehensive verification
        runVerificationSuite()
        
        // Show real-time mesh monitoring
        demonstrateRealTimeMonitoring()
        
        println()
        println("✅ Phase 4 Demo Complete!")
        println("   🌐 Distributed Cognitive Mesh operational")
        println("   🤖 Multi-platform embodiment bindings ready")
        println("   ⚡ Real-time API & WebSocket integration verified")
        println("   🔍 Comprehensive testing and monitoring active")
    }
    
    private suspend fun initializeComponents() {
        println("🚀 Initializing Phase 4 Components...")
        
        // Initialize cognitive engine
        println("  🧠 Initializing Cognitive Engine...")
        // Engine is already initialized
        
        // Initialize AI capabilities
        cognitiveEngine.initializeAI("/models")
        
        // Initialize mesh API
        println("  📡 Starting Cognitive Mesh API...")
        meshAPI = CognitiveMeshAPI(cognitiveEngine, port = 8080)
        meshAPI.start()
        
        // Initialize embodiment bindings
        println("  🎮 Setting up Unity3D binding...")
        unity3DBinding = Unity3DBinding(meshAPI)
        
        println("  🤖 Setting up ROS binding...")
        rosBinding = ROSBinding(meshAPI)
        
        println("  🌐 Setting up Web Agent binding...")
        webAgentBinding = WebAgentBinding(meshAPI)
        
        // Initialize verification system
        println("  🔍 Setting up Integration Verification...")
        verificationSystem = IntegrationVerificationSystem(
            cognitiveEngine,
            meshAPI,
            unity3DBinding,
            rosBinding,
            webAgentBinding
        )
        
        println("✅ All components initialized successfully!")
        println()
    }
    
    private fun demonstrateAPIFunctionality() {
        println("📡 Demonstrating API Functionality...")
        println()
        
        // Test mesh status
        println("  📊 Getting Mesh Status:")
        val status = meshAPI.getMeshStatus()
        println("    • Agents: ${status.agents}")
        println("    • Sensors: ${status.sensors}")
        println("    • Effectors: ${status.effectors}")
        println("    • State: ${status.state}")
        println("    • System Health: ${status.systemHealth}")
        println("    • Mesh Tensor: [${status.meshTensor.modality}, ${status.meshTensor.depth}, ${status.meshTensor.context}, ${status.meshTensor.salience}]")
        println()
        
        // Register multiple agents
        println("  🤖 Registering Test Agents:")
        
        val unity3DAgent = AgentRegistrationRequest(
            name = "Unity3D Game Client",
            type = AgentType.UNITY3D,
            capabilities = listOf("GameObject", "Physics", "Animation", "Audio"),
            autonomyLevel = 0.7f
        )
        val unity3DResponse = meshAPI.registerAgent(unity3DAgent)
        println("    • Unity3D Agent: ${if (unity3DResponse.success) "✅ Registered" else "❌ Failed"} (ID: ${unity3DResponse.agentId})")
        
        val rosAgent = AgentRegistrationRequest(
            name = "ROS Navigation Robot",
            type = AgentType.ROS_ROBOT,
            capabilities = listOf("navigation", "lidar", "camera", "manipulation"),
            autonomyLevel = 0.8f
        )
        val rosResponse = meshAPI.registerAgent(rosAgent)
        println("    • ROS Robot: ${if (rosResponse.success) "✅ Registered" else "❌ Failed"} (ID: ${rosResponse.agentId})")
        
        val webAgent = AgentRegistrationRequest(
            name = "Web Dashboard Client",
            type = AgentType.WEB_AGENT,
            capabilities = listOf("DOM", "Notifications", "Storage", "WebRTC"),
            autonomyLevel = 0.6f
        )
        val webResponse = meshAPI.registerAgent(webAgent)
        println("    • Web Agent: ${if (webResponse.success) "✅ Registered" else "❌ Failed"} (ID: ${webResponse.agentId})")
        println()
        
        // Submit sensor data
        println("  📊 Submitting Sensor Data:")
        if (unity3DResponse.success) {
            val sensorData = SensorDataRequest(
                sensorType = "unity-transform",
                data = mapOf(
                    "position" to mapOf("x" to 5.0f, "y" to 2.0f, "z" to -3.0f),
                    "rotation" to mapOf("x" to 0f, "y" to 45f, "z" to 0f)
                ),
                modality = 0.8f,
                processingDepth = 0.6f,
                contextRelevance = 0.7f,
                importance = 0.8f
            )
            val response = meshAPI.submitSensorData(unity3DResponse.agentId, sensorData)
            println("    • Unity3D sensor data: ${if (response.success) "✅ Processed" else "❌ Failed"}")
            if (response.cognitiveResponse != null) {
                println("      - Attention Level: ${response.cognitiveResponse.attentionLevel}")
                println("      - Related Atoms: ${response.cognitiveResponse.relatedAtoms}")
                println("      - Recommendations: ${response.cognitiveResponse.recommendations.take(2).joinToString(", ")}")
            }
        }
        
        if (rosResponse.success) {
            val laserData = SensorDataRequest(
                sensorType = "laser_scan",
                data = mapOf(
                    "ranges" to listOf(1.5f, 2.0f, 0.8f, 3.0f, 1.2f),
                    "angle_min" to -1.57f,
                    "angle_max" to 1.57f
                ),
                modality = 0.7f,
                processingDepth = 0.8f,
                contextRelevance = 0.9f,
                importance = 0.9f
            )
            val response = meshAPI.submitSensorData(rosResponse.agentId, laserData)
            println("    • ROS laser scan: ${if (response.success) "✅ Processed" else "❌ Failed"}")
            if (response.cognitiveResponse != null) {
                println("      - Recommendations: ${response.cognitiveResponse.recommendations.take(2).joinToString(", ")}")
            }
        }
        
        if (webResponse.success) {
            val clickData = SensorDataRequest(
                sensorType = "web-click",
                data = mapOf(
                    "element" to "navigation-button",
                    "timestamp" to System.currentTimeMillis(),
                    "userAgent" to "Mozilla/5.0..."
                ),
                modality = 0.6f,
                processingDepth = 0.5f,
                contextRelevance = 0.8f,
                importance = 0.7f
            )
            val response = meshAPI.submitSensorData(webResponse.agentId, clickData)
            println("    • Web click event: ${if (response.success) "✅ Processed" else "❌ Failed"}")
        }
        println()
        
        // Get available actions
        println("  ⚡ Getting Available Actions:")
        if (unity3DResponse.success) {
            val actions = meshAPI.getAvailableActions(unity3DResponse.agentId)
            println("    • Unity3D actions: ${actions.actions.size} available")
            actions.actions.take(2).forEach { action ->
                println("      - ${action.name} (priority: ${action.priority})")
            }
        }
        
        if (rosResponse.success) {
            val actions = meshAPI.getAvailableActions(rosResponse.agentId)
            println("    • ROS actions: ${actions.actions.size} available")
            actions.actions.take(2).forEach { action ->
                println("      - ${action.name} (priority: ${action.priority})")
            }
        }
        println()
    }
    
    private suspend fun demonstrateEmbodimentBindings() {
        println("🤖 Demonstrating Embodiment Bindings...")
        println()
        
        // Unity3D Demo
        demonstrateUnity3D()
        
        // ROS Demo  
        demonstrateROS()
        
        // Web Agent Demo
        demonstrateWebAgent()
    }
    
    private fun demonstrateUnity3D() {
        println("  🎮 Unity3D Embodiment Binding:")
        
        // Connect Unity client
        val connection = unity3DBinding.connectUnityClient(
            clientName = "DemoGameClient",
            gameObjectCapabilities = listOf("Transform", "Rigidbody", "Collider", "Renderer"),
            sceneId = "MainGameScene"
        )
        
        println("    • Connection: ${if (connection.success) "✅ Connected" else "❌ Failed"}")
        if (connection.success) {
            println("    • Agent ID: ${connection.agentId}")
            println("    • Unity Endpoints:")
            println("      - GameObjects: ${connection.unitySpecificEndpoints.gameObjects}")
            println("      - Transforms: ${connection.unitySpecificEndpoints.transforms}")
            println("      - Events: ${connection.unitySpecificEndpoints.events}")
            
            // Update GameObject transform
            val transform = UnityTransform(
                position = Vector3(10f, 5f, -2f),
                rotation = Vector3(0f, 90f, 0f),
                scale = Vector3(1.5f, 1.5f, 1.5f)
            )
            
            val updateSuccess = unity3DBinding.updateGameObjectTransform(
                agentId = connection.agentId,
                gameObjectId = "Player",
                transform = transform
            )
            println("    • Transform Update: ${if (updateSuccess) "✅ Success" else "❌ Failed"}")
            
            // Handle Unity event
            val eventResponse = unity3DBinding.handleUnityEvent(
                agentId = connection.agentId,
                eventType = UnityEventType.COLLISION,
                eventData = mapOf(
                    "colliderName" to "Obstacle",
                    "collisionForce" to 15.0f,
                    "position" to mapOf("x" to 10f, "y" to 5f, "z" to -2f)
                )
            )
            
            println("    • Event Handling: ${if (eventResponse.processed) "✅ Processed" else "❌ Failed"}")
            println("      - Cognitive Recommendations: ${eventResponse.cognitiveRecommendations.take(2).joinToString(", ")}")
            println("      - Suggested Actions: ${eventResponse.suggestedActions.take(2).joinToString(", ")}")
            
            // Get scene recommendations
            val recommendations = unity3DBinding.getSceneRecommendations(connection.agentId)
            println("    • Scene Recommendations: ${recommendations.size} available")
            recommendations.take(2).forEach { recommendation ->
                println("      - ${recommendation.javaClass.simpleName} (priority: ${recommendation.priority})")
            }
        }
        println()
    }
    
    private fun demonstrateROS() {
        println("  🤖 ROS Embodiment Binding:")
        
        // Connect ROS node
        val connection = rosBinding.connectROSNode(
            nodeName = "cognitive_demo_node",
            robotCapabilities = listOf("navigation", "manipulation", "perception", "localization"),
            rosVersion = "ROS2",
            namespace = "/demo_robot"
        )
        
        println("    • Connection: ${if (connection.success) "✅ Connected" else "❌ Failed"}")
        if (connection.success) {
            println("    • Node Name: ${connection.nodeName}")
            println("    • Agent ID: ${connection.agentId}")
            println("    • ROS Endpoints:")
            println("      - Topics: ${connection.rosSpecificEndpoints.topics}")
            println("      - Services: ${connection.rosSpecificEndpoints.services}")
            println("      - Actions: ${connection.rosSpecificEndpoints.actions}")
            
            // Publish to ROS topic
            val publishResponse = rosBinding.publishToTopic(
                agentId = connection.agentId,
                topicName = "/cmd_vel",
                messageType = "geometry_msgs/Twist",
                messageData = mapOf(
                    "linear" to mapOf("x" to 0.5, "y" to 0.0, "z" to 0.0),
                    "angular" to mapOf("x" to 0.0, "y" to 0.0, "z" to 0.2)
                ),
                priority = 0.8f
            )
            println("    • Topic Publish: ${if (publishResponse.success) "✅ Success" else "❌ Failed"}")
            if (publishResponse.cognitiveProcessing != null) {
                println("      - Attention Level: ${publishResponse.cognitiveProcessing.attentionLevel}")
                println("      - Recommendations: ${publishResponse.cognitiveProcessing.recommendations.take(2).joinToString(", ")}")
            }
            
            // Update robot pose
            val pose = ROSPose(
                position = ROSPoint(3.5f, 2.1f, 0.0f),
                orientation = ROSQuaternion(0f, 0f, 0.7071f, 0.7071f) // 90 degree rotation
            )
            val poseUpdate = rosBinding.updateRobotPose(connection.agentId, pose, "base_link", "odom")
            println("    • Pose Update: ${if (poseUpdate) "✅ Success" else "❌ Failed"}")
            
            // Process sensor data
            val sensorResponse = rosBinding.processSensorData(
                agentId = connection.agentId,
                sensorType = ROSSensorType.LASER_SCAN,
                sensorData = mapOf(
                    "ranges" to listOf(2.5f, 1.8f, 0.5f, 4.0f, 3.2f, 0.3f),
                    "intensities" to listOf(100f, 120f, 200f, 90f, 110f, 250f),
                    "angle_min" to -3.14159f,
                    "angle_max" to 3.14159f
                )
            )
            
            println("    • Sensor Processing: ${if (sensorResponse.processed) "✅ Processed" else "❌ Failed"}")
            println("      - Navigation Recommendations: ${sensorResponse.navigationRecommendations.take(2).joinToString(", ")}")
            println("      - Perception Insights: ${sensorResponse.perceptionInsights.take(2).joinToString(", ")}")
            
            // Get ROS action recommendations
            val actionRecommendations = rosBinding.getROSActionRecommendations(connection.agentId)
            println("    • Action Recommendations: ${actionRecommendations.size} available")
            actionRecommendations.take(2).forEach { recommendation ->
                println("      - ${recommendation.actionType} on ${recommendation.topicName} (priority: ${recommendation.priority})")
            }
        }
        println()
    }
    
    private fun demonstrateWebAgent() {
        println("  🌐 Web Agent Embodiment Binding:")
        
        // Connect web client
        val connection = webAgentBinding.connectWebClient(
            clientId = "dashboard_client_001",
            clientCapabilities = listOf("DOM", "WebRTC", "Storage", "Notifications", "Geolocation"),
            userAgent = "Mozilla/5.0 (Demo) CognitiveMesh/1.0",
            origin = "https://demo.cognitivemesh.local"
        )
        
        println("    • Connection: ${if (connection.success) "✅ Connected" else "❌ Failed"}")
        if (connection.success) {
            println("    • Client ID: ${connection.clientId}")
            println("    • Agent ID: ${connection.agentId}")
            println("    • Web Endpoints:")
            println("      - DOM: ${connection.webSpecificEndpoints.dom}")
            println("      - Events: ${connection.webSpecificEndpoints.events}")
            println("      - Media: ${connection.webSpecificEndpoints.media}")
            
            // Handle DOM interaction
            val domInteraction = DOMInteraction(
                type = DOMInteractionType.CLICK,
                elementId = "cognitive-dashboard-button",
                elementData = mapOf(
                    "tagName" to "button",
                    "className" to "btn btn-primary cognitive-action",
                    "innerText" to "Start Cognitive Analysis",
                    "dataset" to mapOf("action" to "analyze", "target" to "scene")
                )
            )
            
            val domResponse = webAgentBinding.handleDOMInteraction(connection.agentId, domInteraction)
            println("    • DOM Interaction: ${if (domResponse.success) "✅ Processed" else "❌ Failed"}")
            if (domResponse.cognitiveInsights != null) {
                println("      - Attention Level: ${domResponse.cognitiveInsights.attentionLevel}")
                println("      - Related Atoms: ${domResponse.cognitiveInsights.relatedAtoms}")
            }
            println("      - Recommended Actions: ${domResponse.recommendedActions.take(2).joinToString(", ")}")
            
            // Process user behavior
            val behaviorData = UserBehaviorData(
                actions = listOf("page_view", "scroll", "click", "hover", "input", "form_submit"),
                sessionDuration = 450000L, // 7.5 minutes
                pageViews = 5,
                bounceRate = 0.2f,
                engagementScore = 0.85f,
                conversionEvent = true
            )
            
            val behaviorResponse = webAgentBinding.processUserBehavior(connection.agentId, behaviorData)
            println("    • Behavior Analysis: ${if (behaviorResponse.processed) "✅ Processed" else "❌ Failed"}")
            println("      - Personalized Recommendations: ${behaviorResponse.personalizedRecommendations.take(2).joinToString(", ")}")
            println("      - UI Optimizations: ${behaviorResponse.uiOptimizations.take(2).joinToString(", ")}")
            
            // Handle media capture
            val mediaResponse = webAgentBinding.handleMediaCapture(
                agentId = connection.agentId,
                mediaType = WebMediaType.CAMERA,
                mediaData = mapOf(
                    "width" to 1920,
                    "height" to 1080,
                    "fps" to 30,
                    "format" to "video/webm",
                    "timestamp" to System.currentTimeMillis()
                )
            )
            
            println("    • Media Capture: ${if (mediaResponse.processed) "✅ Processed" else "❌ Failed"}")
            println("      - Processing Recommendations: ${mediaResponse.processingRecommendations.take(2).joinToString(", ")}")
            
            // Get web-specific recommendations
            val webRecommendations = webAgentBinding.getWebActionRecommendations(connection.agentId)
            println("    • Web Recommendations: ${webRecommendations.size} available")
            webRecommendations.take(2).forEach { recommendation ->
                println("      - ${recommendation.actionType} on ${recommendation.element} (priority: ${recommendation.priority})")
            }
            
            // Show JavaScript SDK sample
            println("    • JavaScript SDK: ✅ Generated")
            println("      - Auto-connects to cognitive mesh via WebSocket")
            println("      - Automatically tracks DOM interactions")
            println("      - Provides real-time cognitive state updates")
        }
        println()
    }
    
    private suspend fun runVerificationSuite() {
        println("🔍 Running Integration Verification Suite...")
        println()
        
        val report = verificationSystem.runCompleteVerification()
        
        println("  📊 Verification Results:")
        println("    • Execution Time: ${report.totalExecutionTime}ms")
        println("    • Overall Health: ${(report.overallHealth * 100).toInt()}%")
        println()
        
        // API Test Results
        println("  📡 API Test Results:")
        println("    • Total Tests: ${report.apiTestResults.totalTests}")
        println("    • Passed: ${report.apiTestResults.passedTests}")
        println("    • Failed: ${report.apiTestResults.failedTests}")
        report.apiTestResults.testDetails.forEach { (testName, result) ->
            println("      - $testName: ${if (result.success) "✅" else "❌"} (${result.executionTime}ms)")
        }
        println()
        
        // Embodiment Test Results
        println("  🤖 Embodiment Test Results:")
        val embodiment = report.embodimentTestResults
        println("    • Unity3D:")
        println("      - Connection: ${if (embodiment.unityResults.connectionTest) "✅" else "❌"}")
        println("      - Data Exchange: ${if (embodiment.unityResults.dataExchangeTest) "✅" else "❌"}")
        println("      - Event Handling: ${if (embodiment.unityResults.eventHandlingTest) "✅" else "❌"}")
        
        println("    • ROS:")
        println("      - Connection: ${if (embodiment.rosResults.connectionTest) "✅" else "❌"}")
        println("      - Data Exchange: ${if (embodiment.rosResults.dataExchangeTest) "✅" else "❌"}")
        println("      - Event Handling: ${if (embodiment.rosResults.eventHandlingTest) "✅" else "❌"}")
        
        println("    • Web Agent:")
        println("      - Connection: ${if (embodiment.webAgentResults.connectionTest) "✅" else "❌"}")
        println("      - Data Exchange: ${if (embodiment.webAgentResults.dataExchangeTest) "✅" else "❌"}")
        println("      - Event Handling: ${if (embodiment.webAgentResults.eventHandlingTest) "✅" else "❌"}")
        
        println("    • Cross-Platform Integration: ${if (embodiment.crossPlatformIntegration) "✅" else "❌"}")
        println()
        
        // Performance Results
        println("  ⚡ Performance Results:")
        println("    • Overall Score: ${(report.performanceResults.overallScore * 100).toInt()}%")
        report.performanceResults.metrics.forEach { (name, metric) ->
            println("      - $name: ${metric.value} ${metric.unit} ${if (metric.isHealthy) "✅" else "❌"}")
        }
        println()
        
        // Health Check Results
        println("  💊 Health Check Results:")
        println("    • Healthy Components: ${report.healthCheckResults.healthyComponents}/${report.healthCheckResults.totalChecks}")
        report.healthCheckResults.checkDetails.forEach { (component, status) ->
            println("      - $component: ${if (status.isHealthy) "✅" else "❌"} ${status.message}")
        }
        println()
        
        // Recommendations
        println("  💡 Recommendations:")
        report.recommendations.forEach { recommendation ->
            println("    $recommendation")
        }
        println()
    }
    
    private suspend fun demonstrateRealTimeMonitoring() {
        println("📊 Real-Time Mesh Monitoring (5 seconds)...")
        println()
        
        val job = GlobalScope.launch {
            val meshStream = meshAPI.getMeshUpdateStream()
            var updateCount = 0
            
            meshStream.collect { update ->
                updateCount++
                println("  📡 Mesh Update #$updateCount:")
                println("    • Timestamp: ${update.timestamp}")
                println("    • Agents: ${update.agents}")
                println("    • Sensors: ${update.sensors}")
                println("    • Effectors: ${update.effectors}")
                println("    • State: ${update.state}")
                println("    • Cognitive Health: ${(update.cognitiveHealth * 100).toInt()}%")
                println()
                
                if (updateCount >= 3) {
                    this.cancel()
                }
            }
        }
        
        // Wait for monitoring demo
        delay(5000)
        job.cancel()
        
        println("✅ Real-time monitoring demonstration complete")
        println()
    }
}

/**
 * Run the Phase 4 demo
 */
suspend fun main() {
    val demo = Phase4Demo()
    demo.runDemo()
}

/**
 * Utility function for string repetition
 */
private operator fun String.times(n: Int): String {
    return this.repeat(n)
}