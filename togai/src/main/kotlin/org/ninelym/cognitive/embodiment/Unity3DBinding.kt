package org.ninelym.cognitive.embodiment

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.api.AgentType
import org.ninelym.cognitive.api.CognitiveMeshAPI

/**
 * Unity3D Embodiment Binding
 * 
 * Provides integration layer between cognitive mesh and Unity3D game engines.
 * Supports GameObjects, Transforms, Animations, and Unity-specific operations.
 */
class Unity3DBinding(private val meshAPI: CognitiveMeshAPI) {
    
    private val unityAgents = mutableMapOf<String, UnityAgent>()
    
    /**
     * Connect Unity3D client to cognitive mesh
     */
    fun connectUnityClient(
        clientName: String,
        gameObjectCapabilities: List<String>,
        sceneId: String = "MainScene"
    ): Unity3DConnection {
        
        val registrationRequest = org.ninelym.cognitive.api.AgentRegistrationRequest(
            name = "Unity3D-$clientName",
            type = AgentType.UNITY3D,
            capabilities = gameObjectCapabilities + listOf(
                "GameObject", "Transform", "Animation", "Physics", 
                "Rendering", "Audio", "Particles", "UI"
            ),
            autonomyLevel = 0.7f
        )
        
        val response = meshAPI.registerAgent(registrationRequest)
        
        val unityAgent = UnityAgent(
            agentId = response.agentId,
            clientName = clientName,
            sceneId = sceneId,
            gameObjects = mutableMapOf(),
            isConnected = response.success
        )
        
        unityAgents[response.agentId] = unityAgent
        
        return Unity3DConnection(
            agentId = response.agentId,
            success = response.success,
            apiEndpoints = response.apiEndpoints,
            unitySpecificEndpoints = Unity3DEndpoints(
                gameObjects = "/unity/${response.agentId}/gameobjects",
                transforms = "/unity/${response.agentId}/transforms",
                animations = "/unity/${response.agentId}/animations", 
                physics = "/unity/${response.agentId}/physics",
                events = "/unity/${response.agentId}/events"
            )
        )
    }
    
    /**
     * Update GameObject transform data from Unity
     */
    fun updateGameObjectTransform(
        agentId: String,
        gameObjectId: String,
        transform: UnityTransform
    ): Boolean {
        val agent = unityAgents[agentId] ?: return false
        
        // Create cognitive tensor from transform data
        val transformTensor = CognitiveTensor(
            modality = 0.8f, // Spatial/visual modality
            depth = calculateTransformComplexity(transform),
            context = 0.7f,
            salience = calculateTransformSalience(transform),
            autonomyIndex = 0.7f
        )
        
        // Submit as sensor data to mesh
        val sensorRequest = org.ninelym.cognitive.api.SensorDataRequest(
            sensorType = "unity-transform",
            data = transform,
            modality = transformTensor.modality,
            processingDepth = transformTensor.depth,
            contextRelevance = transformTensor.context,
            importance = transformTensor.salience
        )
        
        val response = meshAPI.submitSensorData(agentId, sensorRequest)
        
        if (response.success) {
            // Update local tracking
            agent.gameObjects[gameObjectId] = UnityGameObject(
                id = gameObjectId,
                name = "GameObject_$gameObjectId",
                transform = transform,
                lastUpdate = System.currentTimeMillis()
            )
        }
        
        return response.success
    }
    
    /**
     * Get recommended actions for Unity scene
     */
    fun getSceneRecommendations(agentId: String): List<UnityAction> {
        val actionsResponse = meshAPI.getAvailableActions(agentId)
        
        return actionsResponse.actions.mapNotNull { action ->
            when (action.id) {
                "unity-move" -> UnityAction.MoveGameObject(
                    priority = action.priority,
                    parameters = action.parameters
                )
                "unity-animate" -> UnityAction.TriggerAnimation(
                    priority = action.priority,
                    parameters = action.parameters
                )
                else -> null
            }
        }
    }
    
    /**
     * Handle Unity event (collision, trigger, input, etc.)
     */
    fun handleUnityEvent(
        agentId: String,
        eventType: UnityEventType,
        eventData: Map<String, Any>
    ): UnityEventResponse {
        
        val eventTensor = CognitiveTensor(
            modality = when (eventType) {
                UnityEventType.COLLISION -> 0.9f
                UnityEventType.TRIGGER -> 0.7f
                UnityEventType.INPUT -> 0.8f
                UnityEventType.ANIMATION_COMPLETE -> 0.6f
                UnityEventType.AUDIO -> 0.5f
            },
            depth = 0.8f,
            context = 0.9f, // Events are contextually important
            salience = when (eventType) {
                UnityEventType.COLLISION -> 0.9f
                UnityEventType.INPUT -> 0.8f
                else -> 0.6f
            },
            autonomyIndex = 0.7f
        )
        
        val sensorRequest = org.ninelym.cognitive.api.SensorDataRequest(
            sensorType = "unity-event-${eventType.name.lowercase()}",
            data = eventData,
            modality = eventTensor.modality,
            processingDepth = eventTensor.depth,
            contextRelevance = eventTensor.context,
            importance = eventTensor.salience
        )
        
        val response = meshAPI.submitSensorData(agentId, sensorRequest)
        
        return UnityEventResponse(
            processed = response.success,
            cognitiveRecommendations = response.cognitiveResponse?.recommendations ?: emptyList(),
            suggestedActions = if (response.success) {
                generateEventResponseActions(eventType, eventData)
            } else emptyList()
        )
    }
    
    private fun calculateTransformComplexity(transform: UnityTransform): Float {
        // More complex transforms (rotation, scaling) get higher depth values
        var complexity = 0.3f // Base complexity
        
        if (transform.rotation.x != 0f || transform.rotation.y != 0f || transform.rotation.z != 0f) {
            complexity += 0.3f
        }
        
        if (transform.scale.x != 1f || transform.scale.y != 1f || transform.scale.z != 1f) {
            complexity += 0.2f
        }
        
        return complexity.coerceAtMost(1.0f)
    }
    
    private fun calculateTransformSalience(transform: UnityTransform): Float {
        // Fast-moving or distant objects are more salient
        val magnitude = Math.sqrt(
            (transform.position.x * transform.position.x + 
             transform.position.y * transform.position.y + 
             transform.position.z * transform.position.z).toDouble()
        ).toFloat()
        
        return (magnitude / 100f).coerceIn(0.1f, 1.0f)
    }
    
    private fun generateEventResponseActions(
        eventType: UnityEventType,
        eventData: Map<String, Any>
    ): List<String> {
        return when (eventType) {
            UnityEventType.COLLISION -> listOf(
                "PlayCollisionEffect",
                "UpdateGameObjectState",
                "TriggerAudioFeedback"
            )
            UnityEventType.INPUT -> listOf(
                "ProcessInputAction",
                "UpdatePlayerState", 
                "TriggerInputResponse"
            )
            UnityEventType.TRIGGER -> listOf(
                "ActivateTriggerZone",
                "UpdateTriggerState"
            )
            UnityEventType.ANIMATION_COMPLETE -> listOf(
                "TransitionToNextState",
                "CleanupAnimation"
            )
            UnityEventType.AUDIO -> listOf(
                "ProcessAudioFeedback",
                "UpdateAudioState"
            )
        }
    }
}

/**
 * Unity3D specific data structures
 */

data class Unity3DConnection(
    val agentId: String,
    val success: Boolean,
    val apiEndpoints: org.ninelym.cognitive.api.ApiEndpoints,
    val unitySpecificEndpoints: Unity3DEndpoints
)

data class Unity3DEndpoints(
    val gameObjects: String,
    val transforms: String,
    val animations: String,
    val physics: String,
    val events: String
)

data class UnityAgent(
    val agentId: String,
    val clientName: String,
    val sceneId: String,
    val gameObjects: MutableMap<String, UnityGameObject>,
    var isConnected: Boolean
)

data class UnityGameObject(
    val id: String,
    val name: String,
    val transform: UnityTransform,
    val lastUpdate: Long
)

data class UnityTransform(
    val position: Vector3,
    val rotation: Vector3,
    val scale: Vector3
)

data class Vector3(
    val x: Float,
    val y: Float, 
    val z: Float
)

enum class UnityEventType {
    COLLISION,
    TRIGGER,
    INPUT,
    ANIMATION_COMPLETE,
    AUDIO
}

sealed class UnityAction(val priority: Float, val parameters: Map<String, String>) {
    class MoveGameObject(
        priority: Float,
        parameters: Map<String, String>
    ) : UnityAction(priority, parameters)
    
    class TriggerAnimation(
        priority: Float,
        parameters: Map<String, String>
    ) : UnityAction(priority, parameters)
}

data class UnityEventResponse(
    val processed: Boolean,
    val cognitiveRecommendations: List<String>,
    val suggestedActions: List<String>
)