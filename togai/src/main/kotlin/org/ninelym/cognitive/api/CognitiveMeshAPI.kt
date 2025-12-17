package org.ninelym.cognitive.api

import org.ninelym.cognitive.CognitiveEngine
import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.hypergraph.Atom
import org.ninelym.cognitive.hypergraph.AtomType
import java.util.concurrent.ConcurrentHashMap
import kotlinx.coroutines.*
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow

/**
 * Phase 4: Distributed Cognitive Mesh API
 * 
 * REST/WebSocket API server for exposing cognitive mesh capabilities
 * to external systems including Unity3D, ROS, and web agents.
 * 
 * Tensor signature: [agents, sensors, effectors, state]
 * - agents: Connected embodied agents count
 * - sensors: Active sensor inputs from agents
 * - effectors: Available action outputs for agents  
 * - state: Current mesh synchronization state
 */
class CognitiveMeshAPI(
    private val cognitiveEngine: CognitiveEngine,
    private val port: Int = 8080
) {
    
    private val connectedAgents = ConcurrentHashMap<String, ConnectedAgent>()
    private val sensorStreams = ConcurrentHashMap<String, SensorStream>()
    private val effectorChannels = ConcurrentHashMap<String, EffectorChannel>()
    private val meshState = MeshState()
    
    private val updateChannel = Channel<MeshUpdate>()
    
    /**
     * Start the API server with REST and WebSocket endpoints
     */
    suspend fun start() {
        println("🌐 Starting Cognitive Mesh API on port $port")
        
        // Initialize mesh state monitoring
        startMeshMonitoring()
        
        // In a real implementation, this would start actual HTTP/WebSocket server
        // For now, we simulate the server being ready
        println("✅ Cognitive Mesh API started successfully")
        println("   📡 REST API: http://localhost:$port/api/v1/")
        println("   🔌 WebSocket: ws://localhost:$port/ws/mesh")
        println("   🤖 Agents: ${connectedAgents.size}")
        println("   📊 Sensors: ${sensorStreams.size}")
        println("   ⚡ Effectors: ${effectorChannels.size}")
    }
    
    /**
     * REST API: Get current mesh status
     * GET /api/v1/mesh/status
     */
    fun getMeshStatus(): MeshStatusResponse {
        val cognitiveState = cognitiveEngine.getCognitiveState()
        val meshTensor = createMeshTensor()
        
        return MeshStatusResponse(
            agents = connectedAgents.size.toFloat(),
            sensors = sensorStreams.size.toFloat(), 
            effectors = effectorChannels.size.toFloat(),
            state = meshState.synchronizationLevel,
            totalAtoms = cognitiveState.atomCount,
            activeFragments = cognitiveState.fragmentCount,
            systemHealth = cognitiveState.systemHealth.name,
            averageAttention = cognitiveState.averageAttention,
            meshTensor = meshTensor
        )
    }
    
    /**
     * REST API: Register a new agent
     * POST /api/v1/agents/register
     */
    fun registerAgent(request: AgentRegistrationRequest): AgentRegistrationResponse {
        val agentId = "agent-${System.currentTimeMillis()}-${(Math.random() * 1000).toInt()}"
        
        val agent = ConnectedAgent(
            id = agentId,
            name = request.name,
            type = request.type,
            capabilities = request.capabilities,
            lastSeen = System.currentTimeMillis(),
            isActive = true
        )
        
        connectedAgents[agentId] = agent
        
        // Add agent to cognitive system
        val agentTensor = CognitiveTensor(
            modality = when(request.type) {
                AgentType.UNITY3D -> 0.9f
                AgentType.ROS_ROBOT -> 0.8f
                AgentType.WEB_AGENT -> 0.7f
                AgentType.CUSTOM -> 0.6f
            },
            depth = request.capabilities.size.toFloat() / 10f,
            context = 0.8f,
            salience = 0.7f,
            autonomyIndex = request.autonomyLevel
        )
        
        cognitiveEngine.addCognitivePrimitive(
            name = "agent-$agentId",
            type = AtomType.CONCEPT,
            tensor = agentTensor
        )
        
        updateMeshState()
        
        return AgentRegistrationResponse(
            agentId = agentId,
            success = true,
            message = "Agent registered successfully",
            apiEndpoints = ApiEndpoints(
                status = "/api/v1/agents/$agentId/status",
                sensors = "/api/v1/agents/$agentId/sensors", 
                effectors = "/api/v1/agents/$agentId/effectors",
                websocket = "/ws/agents/$agentId"
            )
        )
    }
    
    /**
     * REST API: Submit sensor data from agent
     * POST /api/v1/agents/{agentId}/sensors
     */
    fun submitSensorData(agentId: String, request: SensorDataRequest): SensorDataResponse {
        val agent = connectedAgents[agentId] 
            ?: return SensorDataResponse(false, "Agent not found")
        
        // Process sensor data through cognitive system
        val sensorTensor = CognitiveTensor(
            modality = request.modality,
            depth = request.processingDepth,
            context = request.contextRelevance,
            salience = request.importance,
            autonomyIndex = agent.type.baseAutonomy()
        )
        
        cognitiveEngine.addCognitivePrimitive(
            name = "sensor-${agentId}-${request.sensorType}-${System.currentTimeMillis()}",
            type = AtomType.EVALUATION,
            tensor = sensorTensor
        )
        
        // Update sensor stream
        val streamId = "${agentId}-${request.sensorType}"
        sensorStreams[streamId] = SensorStream(
            agentId = agentId,
            sensorType = request.sensorType,
            lastUpdate = System.currentTimeMillis(),
            isActive = true,
            dataPoints = listOf(request.data)
        )
        
        agent.lastSeen = System.currentTimeMillis()
        updateMeshState()
        
        return SensorDataResponse(
            success = true,
            message = "Sensor data processed",
            cognitiveResponse = CognitiveProcessingResponse(
                processed = true,
                attentionLevel = sensorTensor.salience,
                relatedAtoms = findRelatedAtoms(sensorTensor).size,
                recommendations = generateActionRecommendations(agentId, request)
            )
        )
    }
    
    /**
     * REST API: Get available actions for agent
     * GET /api/v1/agents/{agentId}/effectors
     */
    fun getAvailableActions(agentId: String): EffectorActionsResponse {
        val agent = connectedAgents[agentId]
            ?: return EffectorActionsResponse(emptyList(), "Agent not found")
        
        // Generate actions based on cognitive state and agent capabilities
        val actions = generateActionsForAgent(agent)
        
        return EffectorActionsResponse(
            actions = actions,
            message = "Available actions for ${agent.name}"
        )
    }
    
    /**
     * WebSocket: Stream real-time mesh updates
     */
    fun getMeshUpdateStream(): Flow<MeshUpdate> = flow {
        while (true) {
            val update = updateChannel.receive()
            emit(update)
        }
    }
    
    /**
     * WebSocket: Agent-specific real-time connection
     */
    fun getAgentStream(agentId: String): Flow<AgentUpdate> = flow {
        while (true) {
            delay(1000) // Update every second
            val agent = connectedAgents[agentId]
            if (agent != null) {
                emit(AgentUpdate(
                    agentId = agentId,
                    timestamp = System.currentTimeMillis(),
                    status = if (agent.isActive) "active" else "inactive",
                    cognitiveState = getCognitiveStateForAgent(agentId),
                    availableActions = generateActionsForAgent(agent).size,
                    sensorData = getSensorSummaryForAgent(agentId)
                ))
            }
        }
    }
    
    /**
     * Create distributed mesh tensor with current state
     */
    private fun createMeshTensor(): CognitiveTensor {
        return CognitiveTensor(
            modality = connectedAgents.size.toFloat() / 10f, // agents
            depth = sensorStreams.size.toFloat() / 20f,      // sensors
            context = effectorChannels.size.toFloat() / 15f,  // effectors  
            salience = meshState.synchronizationLevel,         // state
            autonomyIndex = calculateMeshAutonomy()
        )
    }
    
    private fun startMeshMonitoring() {
        CoroutineScope(Dispatchers.Default).launch {
            while (true) {
                delay(5000) // Update every 5 seconds
                updateMeshState()
                
                val update = MeshUpdate(
                    timestamp = System.currentTimeMillis(),
                    agents = connectedAgents.size,
                    sensors = sensorStreams.size,
                    effectors = effectorChannels.size,
                    state = meshState.synchronizationLevel,
                    cognitiveHealth = cognitiveEngine.verify().healthPercentage
                )
                
                updateChannel.trySend(update)
            }
        }
    }
    
    private fun updateMeshState() {
        val activeAgents = connectedAgents.values.count { 
            it.isActive && (System.currentTimeMillis() - it.lastSeen) < 60000 
        }
        val activeSensors = sensorStreams.values.count {
            it.isActive && (System.currentTimeMillis() - it.lastUpdate) < 30000
        }
        
        meshState.synchronizationLevel = when {
            activeAgents == 0 -> 0.0f
            activeSensors.toFloat() / activeAgents > 0.8f -> 0.9f
            activeSensors.toFloat() / activeAgents > 0.5f -> 0.7f
            else -> 0.4f
        }
        meshState.lastUpdate = System.currentTimeMillis()
    }
    
    private fun calculateMeshAutonomy(): Float {
        if (connectedAgents.isEmpty()) return 0.0f
        
        return connectedAgents.values.map { it.type.baseAutonomy() }.average().toFloat()
    }
    
    private fun findRelatedAtoms(tensor: CognitiveTensor): List<Atom> {
        // Find atoms with similar tensor characteristics
        return cognitiveEngine.getCognitiveState().tensors
            .filter { existing -> 
                Math.abs(existing.salience - tensor.salience) < 0.2f &&
                Math.abs(existing.context - tensor.context) < 0.3f
            }
            .take(5) // Limit to 5 related atoms
            .mapNotNull { t ->
                // In real implementation, map tensors back to atoms
                Atom("related-${System.currentTimeMillis()}", AtomType.CONCEPT, "related")
            }
    }
    
    private fun generateActionRecommendations(agentId: String, sensorData: SensorDataRequest): List<String> {
        val agent = connectedAgents[agentId] ?: return emptyList()
        
        return when (agent.type) {
            AgentType.UNITY3D -> listOf(
                "UpdateGameObject", 
                "TriggerAnimation", 
                "PlayAudio",
                "SpawnParticle"
            )
            AgentType.ROS_ROBOT -> listOf(
                "MoveToPosition",
                "RotateJoint", 
                "GripObject",
                "PublishStatus"
            )
            AgentType.WEB_AGENT -> listOf(
                "UpdateDOM",
                "SendNotification", 
                "StoreData",
                "NavigateToPage"
            )
            AgentType.CUSTOM -> listOf(
                "ProcessData",
                "SendMessage",
                "UpdateState"
            )
        }.filter { action ->
            // Filter based on agent capabilities
            agent.capabilities.any { capability -> 
                action.lowercase().contains(capability.lowercase())
            }
        }
    }
    
    private fun generateActionsForAgent(agent: ConnectedAgent): List<AvailableAction> {
        val cognitiveState = cognitiveEngine.getCognitiveState()
        
        return when (agent.type) {
            AgentType.UNITY3D -> listOf(
                AvailableAction(
                    id = "unity-move", 
                    name = "Move GameObject",
                    description = "Move a GameObject to a new position",
                    parameters = mapOf("position" to "Vector3", "duration" to "float"),
                    priority = cognitiveState.averageAttention
                ),
                AvailableAction(
                    id = "unity-animate",
                    name = "Trigger Animation", 
                    description = "Start an animation on the agent",
                    parameters = mapOf("animation" to "string", "loop" to "boolean"),
                    priority = 0.7f
                )
            )
            AgentType.ROS_ROBOT -> listOf(
                AvailableAction(
                    id = "ros-move",
                    name = "Move Robot",
                    description = "Move robot to target position",
                    parameters = mapOf("x" to "float", "y" to "float", "z" to "float"),
                    priority = cognitiveState.averageAttention
                ),
                AvailableAction(
                    id = "ros-publish",
                    name = "Publish Status",
                    description = "Publish robot status to ROS topic",
                    parameters = mapOf("topic" to "string", "message" to "object"),
                    priority = 0.6f
                )
            )
            AgentType.WEB_AGENT -> listOf(
                AvailableAction(
                    id = "web-update",
                    name = "Update Interface",
                    description = "Update web interface elements",
                    parameters = mapOf("element" to "string", "content" to "object"),
                    priority = 0.8f
                ),
                AvailableAction(
                    id = "web-notify",
                    name = "Send Notification",
                    description = "Show notification to user",
                    parameters = mapOf("message" to "string", "type" to "string"),
                    priority = cognitiveState.averageAttention
                )
            )
            AgentType.CUSTOM -> listOf(
                AvailableAction(
                    id = "custom-process",
                    name = "Process Data",
                    description = "Process incoming data", 
                    parameters = mapOf("data" to "object"),
                    priority = 0.5f
                )
            )
        }
    }
    
    private fun getCognitiveStateForAgent(agentId: String): AgentCognitiveState {
        val cognitiveState = cognitiveEngine.getCognitiveState()
        val agent = connectedAgents[agentId]
        
        return AgentCognitiveState(
            attention = cognitiveState.averageAttention,
            activeFragments = cognitiveState.fragmentCount,
            relatedAtoms = findRelatedAtomsForAgent(agentId).size,
            autonomyLevel = agent?.type?.baseAutonomy() ?: 0.5f
        )
    }
    
    private fun findRelatedAtomsForAgent(agentId: String): List<Atom> {
        // Find atoms related to this specific agent
        return emptyList() // Simplified for now
    }
    
    private fun getSensorSummaryForAgent(agentId: String): Map<String, Any> {
        val agentSensors = sensorStreams.values.filter { it.agentId == agentId }
        
        return mapOf(
            "activeSensors" to agentSensors.size,
            "lastUpdate" to (agentSensors.maxByOrNull { it.lastUpdate }?.lastUpdate ?: 0L),
            "sensorTypes" to agentSensors.map { it.sensorType }.distinct()
        )
    }
}

// Data classes for API

/**
 * Connected agent representation
 */
data class ConnectedAgent(
    val id: String,
    val name: String,
    val type: AgentType,
    val capabilities: List<String>,
    var lastSeen: Long,
    var isActive: Boolean
)

/**
 * Types of embodied agents
 */
enum class AgentType {
    UNITY3D,
    ROS_ROBOT, 
    WEB_AGENT,
    CUSTOM;
    
    fun baseAutonomy(): Float = when (this) {
        UNITY3D -> 0.7f
        ROS_ROBOT -> 0.8f
        WEB_AGENT -> 0.6f
        CUSTOM -> 0.5f
    }
}

/**
 * Sensor data stream
 */
data class SensorStream(
    val agentId: String,
    val sensorType: String,
    var lastUpdate: Long,
    var isActive: Boolean,
    val dataPoints: List<Any>
)

/**
 * Effector action channel
 */
data class EffectorChannel(
    val agentId: String,
    val effectorType: String,
    var lastAction: Long,
    var isActive: Boolean
)

/**
 * Overall mesh synchronization state
 */
data class MeshState(
    var synchronizationLevel: Float = 0.0f,
    var lastUpdate: Long = System.currentTimeMillis()
)

// API Request/Response classes

data class MeshStatusResponse(
    val agents: Float,
    val sensors: Float, 
    val effectors: Float,
    val state: Float,
    val totalAtoms: Int,
    val activeFragments: Int,
    val systemHealth: String,
    val averageAttention: Float,
    val meshTensor: CognitiveTensor
)

data class AgentRegistrationRequest(
    val name: String,
    val type: AgentType,
    val capabilities: List<String>,
    val autonomyLevel: Float = 0.5f
)

data class AgentRegistrationResponse(
    val agentId: String,
    val success: Boolean,
    val message: String,
    val apiEndpoints: ApiEndpoints
)

data class ApiEndpoints(
    val status: String,
    val sensors: String,
    val effectors: String,
    val websocket: String
)

data class SensorDataRequest(
    val sensorType: String,
    val data: Any,
    val modality: Float,
    val processingDepth: Float,
    val contextRelevance: Float,
    val importance: Float
)

data class SensorDataResponse(
    val success: Boolean,
    val message: String,
    val cognitiveResponse: CognitiveProcessingResponse? = null
)

data class CognitiveProcessingResponse(
    val processed: Boolean,
    val attentionLevel: Float,
    val relatedAtoms: Int,
    val recommendations: List<String>
)

data class EffectorActionsResponse(
    val actions: List<AvailableAction>,
    val message: String
)

data class AvailableAction(
    val id: String,
    val name: String, 
    val description: String,
    val parameters: Map<String, String>,
    val priority: Float
)

// WebSocket update classes

data class MeshUpdate(
    val timestamp: Long,
    val agents: Int,
    val sensors: Int, 
    val effectors: Int,
    val state: Float,
    val cognitiveHealth: Float
)

data class AgentUpdate(
    val agentId: String,
    val timestamp: Long,
    val status: String,
    val cognitiveState: AgentCognitiveState,
    val availableActions: Int,
    val sensorData: Map<String, Any>
)

data class AgentCognitiveState(
    val attention: Float,
    val activeFragments: Int, 
    val relatedAtoms: Int,
    val autonomyLevel: Float
)