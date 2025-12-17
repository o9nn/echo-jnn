package org.ninelym.cognitive.embodiment

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.api.AgentType
import org.ninelym.cognitive.api.CognitiveMeshAPI

/**
 * ROS (Robot Operating System) Embodiment Binding
 * 
 * Provides integration layer between cognitive mesh and ROS-based robotic systems.
 * Supports topics, services, actions, and tf (transforms) framework.
 */
class ROSBinding(private val meshAPI: CognitiveMeshAPI) {
    
    private val rosAgents = mutableMapOf<String, ROSAgent>()
    private val activeTopics = mutableMapOf<String, ROSTopicStream>()
    
    /**
     * Connect ROS node to cognitive mesh
     */
    fun connectROSNode(
        nodeName: String,
        robotCapabilities: List<String>,
        rosVersion: String = "ROS2",
        namespace: String = "/"
    ): ROSConnection {
        
        val registrationRequest = org.ninelym.cognitive.api.AgentRegistrationRequest(
            name = "ROS-$nodeName",
            type = AgentType.ROS_ROBOT,
            capabilities = robotCapabilities + listOf(
                "navigation", "manipulation", "perception", "localization",
                "mapping", "planning", "control", "tf_transforms"
            ),
            autonomyLevel = 0.8f
        )
        
        val response = meshAPI.registerAgent(registrationRequest)
        
        val rosAgent = ROSAgent(
            agentId = response.agentId,
            nodeName = nodeName,
            namespace = namespace,
            rosVersion = rosVersion,
            topics = mutableMapOf(),
            services = mutableMapOf(),
            isConnected = response.success,
            lastHeartbeat = System.currentTimeMillis()
        )
        
        rosAgents[response.agentId] = rosAgent
        
        return ROSConnection(
            agentId = response.agentId,
            nodeName = nodeName,
            success = response.success,
            apiEndpoints = response.apiEndpoints,
            rosSpecificEndpoints = ROSEndpoints(
                topics = "/ros/${response.agentId}/topics",
                services = "/ros/${response.agentId}/services",
                actions = "/ros/${response.agentId}/actions",
                tf = "/ros/${response.agentId}/tf",
                diagnostics = "/ros/${response.agentId}/diagnostics"
            )
        )
    }
    
    /**
     * Publish data to ROS topic through cognitive mesh
     */
    fun publishToTopic(
        agentId: String,
        topicName: String,
        messageType: String,
        messageData: Map<String, Any>,
        priority: Float = 0.5f
    ): ROSPublishResponse {
        
        val agent = rosAgents[agentId] 
            ?: return ROSPublishResponse(false, "ROS agent not found")
        
        // Create cognitive tensor for ROS message
        val messageTensor = CognitiveTensor(
            modality = calculateModalityForTopic(topicName, messageType),
            depth = calculateMessageComplexity(messageData),
            context = calculateTopicContext(topicName),
            salience = priority,
            autonomyIndex = 0.8f
        )
        
        // Submit as sensor data
        val sensorRequest = org.ninelym.cognitive.api.SensorDataRequest(
            sensorType = "ros-topic-$topicName",
            data = ROSMessage(topicName, messageType, messageData),
            modality = messageTensor.modality,
            processingDepth = messageTensor.depth,
            contextRelevance = messageTensor.context,
            importance = messageTensor.salience
        )
        
        val response = meshAPI.submitSensorData(agentId, sensorRequest)
        
        if (response.success) {
            // Update topic tracking
            val topicId = "${agentId}-${topicName}"
            activeTopics[topicId] = ROSTopicStream(
                agentId = agentId,
                topicName = topicName,
                messageType = messageType,
                lastPublish = System.currentTimeMillis(),
                messageCount = (activeTopics[topicId]?.messageCount ?: 0) + 1,
                isActive = true
            )
            
            agent.lastHeartbeat = System.currentTimeMillis()
        }
        
        return ROSPublishResponse(
            success = response.success,
            message = response.message,
            cognitiveProcessing = response.cognitiveResponse,
            topicId = topicName,
            messageId = System.currentTimeMillis().toString()
        )
    }
    
    /**
     * Subscribe to cognitive recommendations for ROS actions
     */
    fun getROSActionRecommendations(agentId: String): List<ROSActionRecommendation> {
        val actionsResponse = meshAPI.getAvailableActions(agentId)
        
        return actionsResponse.actions.mapNotNull { action ->
            when (action.id) {
                "ros-move" -> ROSActionRecommendation(
                    actionType = ROSActionType.NAVIGATION,
                    topicName = "/cmd_vel",
                    messageType = "geometry_msgs/Twist",
                    parameters = action.parameters,
                    priority = action.priority,
                    description = action.description
                )
                "ros-publish" -> ROSActionRecommendation(
                    actionType = ROSActionType.COMMUNICATION,
                    topicName = action.parameters["topic"] ?: "/status",
                    messageType = "std_msgs/String",
                    parameters = action.parameters,
                    priority = action.priority,
                    description = action.description
                )
                else -> null
            }
        }
    }
    
    /**
     * Update robot pose/odometry data
     */
    fun updateRobotPose(
        agentId: String,
        pose: ROSPose,
        frameId: String = "base_link",
        childFrameId: String = "odom"
    ): Boolean {
        
        val poseTensor = CognitiveTensor(
            modality = 0.9f, // Spatial awareness is high modality
            depth = 0.7f,
            context = 0.8f, // Pose is contextually important
            salience = calculatePoseSalience(pose),
            autonomyIndex = 0.8f
        )
        
        val sensorRequest = org.ninelym.cognitive.api.SensorDataRequest(
            sensorType = "ros-pose",
            data = ROSOdometry(pose, frameId, childFrameId),
            modality = poseTensor.modality,
            processingDepth = poseTensor.depth,
            contextRelevance = poseTensor.context,
            importance = poseTensor.salience
        )
        
        return meshAPI.submitSensorData(agentId, sensorRequest).success
    }
    
    /**
     * Process sensor data (laser scan, camera, etc.)
     */
    fun processSensorData(
        agentId: String,
        sensorType: ROSSensorType,
        sensorData: Map<String, Any>
    ): ROSSensorResponse {
        
        val sensorTensor = CognitiveTensor(
            modality = when (sensorType) {
                ROSSensorType.LASER_SCAN -> 0.8f
                ROSSensorType.CAMERA_IMAGE -> 0.9f
                ROSSensorType.POINT_CLOUD -> 0.9f
                ROSSensorType.IMU -> 0.7f
                ROSSensorType.GPS -> 0.6f
                ROSSensorType.SONAR -> 0.7f
            },
            depth = when (sensorType) {
                ROSSensorType.POINT_CLOUD -> 0.9f
                ROSSensorType.CAMERA_IMAGE -> 0.8f
                else -> 0.6f
            },
            context = 0.8f,
            salience = calculateSensorSalience(sensorType, sensorData),
            autonomyIndex = 0.8f
        )
        
        val sensorRequest = org.ninelym.cognitive.api.SensorDataRequest(
            sensorType = "ros-sensor-${sensorType.name.lowercase()}",
            data = sensorData,
            modality = sensorTensor.modality,
            processingDepth = sensorTensor.depth,
            contextRelevance = sensorTensor.context,
            importance = sensorTensor.salience
        )
        
        val response = meshAPI.submitSensorData(agentId, sensorRequest)
        
        return ROSSensorResponse(
            processed = response.success,
            sensorType = sensorType,
            cognitiveAnalysis = response.cognitiveResponse,
            navigationRecommendations = if (response.success) {
                generateNavigationRecommendations(sensorType, sensorData)
            } else emptyList(),
            perceptionInsights = if (response.success) {
                generatePerceptionInsights(sensorType, sensorData)
            } else emptyList()
        )
    }
    
    /**
     * Execute ROS action based on cognitive recommendation
     */
    fun executeROSAction(
        agentId: String,
        action: ROSActionRecommendation
    ): ROSActionResult {
        
        // This would interface with actual ROS action servers
        // For now, we simulate the action execution
        
        val startTime = System.currentTimeMillis()
        val success = simulateROSActionExecution(action)
        val executionTime = System.currentTimeMillis() - startTime
        
        return ROSActionResult(
            actionType = action.actionType,
            success = success,
            executionTime = executionTime,
            result = if (success) "Action completed successfully" else "Action failed",
            feedback = "Cognitive mesh guided action execution"
        )
    }
    
    private fun calculateModalityForTopic(topicName: String, messageType: String): Float {
        return when {
            topicName.contains("camera") || messageType.contains("Image") -> 0.9f
            topicName.contains("scan") || messageType.contains("LaserScan") -> 0.8f
            topicName.contains("cmd_vel") || messageType.contains("Twist") -> 0.7f
            topicName.contains("odom") -> 0.8f
            else -> 0.6f
        }
    }
    
    private fun calculateMessageComplexity(messageData: Map<String, Any>): Float {
        val fieldCount = messageData.size
        val hasNestedStructures = messageData.values.any { it is Map<*, *> || it is List<*> }
        
        var complexity = fieldCount.toFloat() / 20f
        if (hasNestedStructures) complexity += 0.3f
        
        return complexity.coerceIn(0.1f, 1.0f)
    }
    
    private fun calculateTopicContext(topicName: String): Float {
        return when {
            topicName.contains("emergency") || topicName.contains("alert") -> 0.9f
            topicName.contains("navigation") || topicName.contains("cmd") -> 0.8f
            topicName.contains("status") || topicName.contains("diagnostic") -> 0.7f
            else -> 0.6f
        }
    }
    
    private fun calculatePoseSalience(pose: ROSPose): Float {
        // Calculate salience based on pose change magnitude
        val positionMagnitude = Math.sqrt(
            (pose.position.x * pose.position.x +
             pose.position.y * pose.position.y +
             pose.position.z * pose.position.z).toDouble()
        ).toFloat()
        
        return (positionMagnitude / 10f).coerceIn(0.1f, 1.0f)
    }
    
    private fun calculateSensorSalience(
        sensorType: ROSSensorType,
        sensorData: Map<String, Any>
    ): Float {
        return when (sensorType) {
            ROSSensorType.LASER_SCAN -> {
                // Higher salience for closer obstacles
                val minRange = (sensorData["ranges"] as? List<*>)
                    ?.filterIsInstance<Float>()
                    ?.minOrNull() ?: 10f
                (10f - minRange.coerceIn(0f, 10f)) / 10f
            }
            ROSSensorType.CAMERA_IMAGE -> 0.8f // Visual data is generally high salience
            ROSSensorType.IMU -> {
                // Higher salience for significant acceleration/rotation
                0.6f // Simplified
            }
            else -> 0.5f
        }
    }
    
    private fun generateNavigationRecommendations(
        sensorType: ROSSensorType,
        sensorData: Map<String, Any>
    ): List<String> {
        return when (sensorType) {
            ROSSensorType.LASER_SCAN -> listOf(
                "ObstacleAvoidance",
                "PathReplanning",
                "SpeedReduction"
            )
            ROSSensorType.CAMERA_IMAGE -> listOf(
                "VisualNavigation",
                "LandmarkDetection",
                "SemanticMapping"
            )
            ROSSensorType.GPS -> listOf(
                "GlobalLocalization", 
                "RouteOptimization"
            )
            else -> emptyList()
        }
    }
    
    private fun generatePerceptionInsights(
        sensorType: ROSSensorType,
        sensorData: Map<String, Any>
    ): List<String> {
        return when (sensorType) {
            ROSSensorType.CAMERA_IMAGE -> listOf(
                "ObjectDetection",
                "SceneUnderstanding",
                "DepthEstimation"
            )
            ROSSensorType.POINT_CLOUD -> listOf(
                "3DMapping",
                "SurfaceAnalysis", 
                "ObjectSegmentation"
            )
            ROSSensorType.LASER_SCAN -> listOf(
                "2DMapping",
                "WallDetection",
                "CornerExtraction"
            )
            else -> emptyList()
        }
    }
    
    private fun simulateROSActionExecution(action: ROSActionRecommendation): Boolean {
        // Simulate action execution with some randomness for demo purposes
        return Math.random() > 0.1 // 90% success rate
    }
}

/**
 * ROS-specific data structures
 */

data class ROSConnection(
    val agentId: String,
    val nodeName: String,
    val success: Boolean,
    val apiEndpoints: org.ninelym.cognitive.api.ApiEndpoints,
    val rosSpecificEndpoints: ROSEndpoints
)

data class ROSEndpoints(
    val topics: String,
    val services: String,
    val actions: String,
    val tf: String,
    val diagnostics: String
)

data class ROSAgent(
    val agentId: String,
    val nodeName: String,
    val namespace: String,
    val rosVersion: String,
    val topics: MutableMap<String, String>, // topic name -> message type
    val services: MutableMap<String, String>,
    var isConnected: Boolean,
    var lastHeartbeat: Long
)

data class ROSTopicStream(
    val agentId: String,
    val topicName: String,
    val messageType: String,
    var lastPublish: Long,
    var messageCount: Long,
    var isActive: Boolean
)

data class ROSMessage(
    val topicName: String,
    val messageType: String,
    val data: Map<String, Any>
)

data class ROSPose(
    val position: ROSPoint,
    val orientation: ROSQuaternion
)

data class ROSPoint(
    val x: Float,
    val y: Float,
    val z: Float
)

data class ROSQuaternion(
    val x: Float,
    val y: Float,
    val z: Float,
    val w: Float
)

data class ROSOdometry(
    val pose: ROSPose,
    val frameId: String,
    val childFrameId: String
)

enum class ROSSensorType {
    LASER_SCAN,
    CAMERA_IMAGE,
    POINT_CLOUD,
    IMU,
    GPS,
    SONAR
}

enum class ROSActionType {
    NAVIGATION,
    MANIPULATION,
    PERCEPTION,
    COMMUNICATION,
    CONTROL
}

data class ROSActionRecommendation(
    val actionType: ROSActionType,
    val topicName: String,
    val messageType: String,
    val parameters: Map<String, String>,
    val priority: Float,
    val description: String
)

data class ROSPublishResponse(
    val success: Boolean,
    val message: String,
    val cognitiveProcessing: org.ninelym.cognitive.api.CognitiveProcessingResponse? = null,
    val topicId: String = "",
    val messageId: String = ""
)

data class ROSSensorResponse(
    val processed: Boolean,
    val sensorType: ROSSensorType,
    val cognitiveAnalysis: org.ninelym.cognitive.api.CognitiveProcessingResponse?,
    val navigationRecommendations: List<String>,
    val perceptionInsights: List<String>
)

data class ROSActionResult(
    val actionType: ROSActionType,
    val success: Boolean,
    val executionTime: Long,
    val result: String,
    val feedback: String
)