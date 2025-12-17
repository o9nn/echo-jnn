package org.ninelym.cognitive.embodiment

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.api.AgentType
import org.ninelym.cognitive.api.CognitiveMeshAPI

/**
 * Web Agent Embodiment Binding
 * 
 * Provides integration layer between cognitive mesh and web-based agents.
 * Supports DOM manipulation, user interactions, data persistence, and web APIs.
 */
class WebAgentBinding(private val meshAPI: CognitiveMeshAPI) {
    
    private val webAgents = mutableMapOf<String, WebAgent>()
    private val activeConnections = mutableMapOf<String, WebSocketConnection>()
    
    /**
     * Connect web client to cognitive mesh
     */
    fun connectWebClient(
        clientId: String,
        clientCapabilities: List<String>,
        userAgent: String = "WebAgent/1.0",
        origin: String = "localhost"
    ): WebConnection {
        
        val registrationRequest = org.ninelym.cognitive.api.AgentRegistrationRequest(
            name = "WebAgent-$clientId",
            type = AgentType.WEB_AGENT,
            capabilities = clientCapabilities + listOf(
                "DOM", "EventHandling", "Storage", "Notifications",
                "Geolocation", "Camera", "Audio", "WebRTC", "IndexedDB"
            ),
            autonomyLevel = 0.6f
        )
        
        val response = meshAPI.registerAgent(registrationRequest)
        
        val webAgent = WebAgent(
            agentId = response.agentId,
            clientId = clientId,
            userAgent = userAgent,
            origin = origin,
            domElements = mutableMapOf(),
            eventListeners = mutableMapOf(),
            isConnected = response.success,
            lastActivity = System.currentTimeMillis()
        )
        
        webAgents[response.agentId] = webAgent
        
        return WebConnection(
            agentId = response.agentId,
            clientId = clientId,
            success = response.success,
            apiEndpoints = response.apiEndpoints,
            webSpecificEndpoints = WebEndpoints(
                dom = "/web/${response.agentId}/dom",
                events = "/web/${response.agentId}/events",
                storage = "/web/${response.agentId}/storage",
                media = "/web/${response.agentId}/media",
                notifications = "/web/${response.agentId}/notifications"
            ),
            jsSDK = generateJavaScriptSDK(response.agentId)
        )
    }
    
    /**
     * Handle DOM interaction from web client
     */
    fun handleDOMInteraction(
        agentId: String,
        interaction: DOMInteraction
    ): DOMInteractionResponse {
        
        val agent = webAgents[agentId]
            ?: return DOMInteractionResponse(false, "Web agent not found", null, emptyList())
        
        // Create cognitive tensor for DOM interaction
        val interactionTensor = CognitiveTensor(
            modality = when (interaction.type) {
                DOMInteractionType.CLICK -> 0.7f
                DOMInteractionType.SCROLL -> 0.5f
                DOMInteractionType.INPUT -> 0.8f
                DOMInteractionType.HOVER -> 0.4f
                DOMInteractionType.FOCUS -> 0.6f
                DOMInteractionType.FORM_SUBMIT -> 0.9f
            },
            depth = calculateInteractionComplexity(interaction),
            context = calculateDOMContext(interaction),
            salience = when (interaction.type) {
                DOMInteractionType.FORM_SUBMIT -> 0.9f
                DOMInteractionType.INPUT -> 0.8f
                DOMInteractionType.CLICK -> 0.7f
                else -> 0.5f
            },
            autonomyIndex = 0.6f
        )
        
        // Submit as sensor data
        val sensorRequest = org.ninelym.cognitive.api.SensorDataRequest(
            sensorType = "web-dom-${interaction.type.name.lowercase()}",
            data = interaction,
            modality = interactionTensor.modality,
            processingDepth = interactionTensor.depth,
            contextRelevance = interactionTensor.context,
            importance = interactionTensor.salience
        )
        
        val response = meshAPI.submitSensorData(agentId, sensorRequest)
        
        if (response.success) {
            // Update DOM tracking
            agent.domElements[interaction.elementId] = DOMElement(
                id = interaction.elementId,
                tagName = interaction.elementData["tagName"] as? String ?: "div",
                className = interaction.elementData["className"] as? String ?: "",
                lastInteraction = System.currentTimeMillis(),
                interactionCount = (agent.domElements[interaction.elementId]?.interactionCount ?: 0) + 1
            )
            
            agent.lastActivity = System.currentTimeMillis()
        }
        
        return DOMInteractionResponse(
            success = response.success,
            message = response.message,
            cognitiveInsights = response.cognitiveResponse,
            recommendedActions = if (response.success) {
                generateDOMRecommendations(interaction, response.cognitiveResponse?.recommendations ?: emptyList())
            } else emptyList()
        )
    }
    
    /**
     * Process user behavior analytics
     */
    fun processUserBehavior(
        agentId: String,
        behaviorData: UserBehaviorData
    ): UserBehaviorResponse {
        
        val behaviorTensor = CognitiveTensor(
            modality = 0.8f, // User behavior is high-level cognitive data
            depth = calculateBehaviorComplexity(behaviorData),
            context = 0.9f, // User context is very important
            salience = calculateBehaviorSalience(behaviorData),
            autonomyIndex = 0.6f
        )
        
        val sensorRequest = org.ninelym.cognitive.api.SensorDataRequest(
            sensorType = "web-user-behavior",
            data = behaviorData,
            modality = behaviorTensor.modality,
            processingDepth = behaviorTensor.depth,
            contextRelevance = behaviorTensor.context,
            importance = behaviorTensor.salience
        )
        
        val response = meshAPI.submitSensorData(agentId, sensorRequest)
        
        return UserBehaviorResponse(
            processed = response.success,
            behaviorAnalysis = response.cognitiveResponse,
            personalizedRecommendations = if (response.success) {
                generatePersonalizedRecommendations(behaviorData)
            } else emptyList(),
            uiOptimizations = if (response.success) {
                generateUIOptimizations(behaviorData)
            } else emptyList()
        )
    }
    
    /**
     * Get web-specific action recommendations
     */
    fun getWebActionRecommendations(agentId: String): List<WebActionRecommendation> {
        val actionsResponse = meshAPI.getAvailableActions(agentId)
        
        return actionsResponse.actions.mapNotNull { action ->
            when (action.id) {
                "web-update" -> WebActionRecommendation(
                    actionType = WebActionType.DOM_UPDATE,
                    element = action.parameters["element"] ?: "body",
                    method = "update",
                    data = action.parameters,
                    priority = action.priority,
                    description = action.description
                )
                "web-notify" -> WebActionRecommendation(
                    actionType = WebActionType.NOTIFICATION,
                    element = "notification",
                    method = "show",
                    data = action.parameters,
                    priority = action.priority,
                    description = action.description
                )
                else -> null
            }
        }
    }
    
    /**
     * Handle media capture (camera, microphone)
     */
    fun handleMediaCapture(
        agentId: String,
        mediaType: WebMediaType,
        mediaData: Map<String, Any>
    ): MediaCaptureResponse {
        
        val mediaTensor = CognitiveTensor(
            modality = when (mediaType) {
                WebMediaType.CAMERA -> 0.9f
                WebMediaType.MICROPHONE -> 0.8f
                WebMediaType.SCREEN -> 0.7f
            },
            depth = 0.8f,
            context = 0.7f,
            salience = when (mediaType) {
                WebMediaType.CAMERA -> 0.8f
                WebMediaType.MICROPHONE -> 0.7f
                WebMediaType.SCREEN -> 0.6f
            },
            autonomyIndex = 0.6f
        )
        
        val sensorRequest = org.ninelym.cognitive.api.SensorDataRequest(
            sensorType = "web-media-${mediaType.name.lowercase()}",
            data = mediaData,
            modality = mediaTensor.modality,
            processingDepth = mediaTensor.depth,
            contextRelevance = mediaTensor.context,
            importance = mediaTensor.salience
        )
        
        val response = meshAPI.submitSensorData(agentId, sensorRequest)
        
        return MediaCaptureResponse(
            processed = response.success,
            mediaType = mediaType,
            cognitiveAnalysis = response.cognitiveResponse,
            processingRecommendations = if (response.success) {
                generateMediaProcessingRecommendations(mediaType)
            } else emptyList()
        )
    }
    
    /**
     * Generate JavaScript SDK for web integration
     */
    private fun generateJavaScriptSDK(agentId: String): String {
        return """
        class CognitiveMeshWebSDK {
            constructor(agentId, apiEndpoint = 'ws://localhost:8080') {
                this.agentId = '$agentId';
                this.apiEndpoint = apiEndpoint;
                this.ws = null;
                this.eventListeners = new Map();
                this.init();
            }
            
            init() {
                // Initialize WebSocket connection
                this.ws = new WebSocket(`${'$'}{this.apiEndpoint}/ws/agents/${'$'}{this.agentId}`);
                
                this.ws.onopen = () => {
                    console.log('🌐 Connected to Cognitive Mesh');
                };
                
                this.ws.onmessage = (event) => {
                    const data = JSON.parse(event.data);
                    this.handleMeshUpdate(data);
                };
                
                // Auto-track DOM interactions
                this.trackDOMInteractions();
            }
            
            trackDOMInteractions() {
                document.addEventListener('click', (e) => {
                    this.sendDOMInteraction('CLICK', e.target);
                });
                
                document.addEventListener('input', (e) => {
                    this.sendDOMInteraction('INPUT', e.target);
                });
                
                document.addEventListener('submit', (e) => {
                    this.sendDOMInteraction('FORM_SUBMIT', e.target);
                });
            }
            
            sendDOMInteraction(type, element) {
                const interaction = {
                    type: type,
                    elementId: element.id || this.generateElementId(element),
                    elementData: {
                        tagName: element.tagName,
                        className: element.className,
                        innerText: element.innerText?.substring(0, 100)
                    },
                    timestamp: Date.now()
                };
                
                fetch('/web/$agentId/dom', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(interaction)
                });
            }
            
            sendUserBehavior(behaviorData) {
                return fetch('/web/$agentId/behavior', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(behaviorData)
                });
            }
            
            captureMedia(type = 'camera') {
                return navigator.mediaDevices.getUserMedia({
                    video: type === 'camera',
                    audio: type === 'microphone'
                }).then(stream => {
                    // Send media metadata to cognitive mesh
                    this.sendMediaCapture(type, {
                        hasVideo: stream.getVideoTracks().length > 0,
                        hasAudio: stream.getAudioTracks().length > 0,
                        timestamp: Date.now()
                    });
                    return stream;
                });
            }
            
            sendMediaCapture(type, data) {
                fetch('/web/$agentId/media', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ mediaType: type, data: data })
                });
            }
            
            getRecommendations() {
                return fetch('/web/$agentId/recommendations')
                    .then(r => r.json());
            }
            
            handleMeshUpdate(data) {
                // Handle real-time updates from cognitive mesh
                if (data.cognitiveState) {
                    this.updateUI(data.cognitiveState);
                }
            }
            
            updateUI(cognitiveState) {
                // Update UI based on cognitive state
                const attentionLevel = cognitiveState.attention;
                document.body.style.filter = `brightness(${'$'}{0.8 + attentionLevel * 0.4})`;
            }
            
            generateElementId(element) {
                return 'elem-' + Math.random().toString(36).substr(2, 9);
            }
        }
        
        // Auto-initialize if in browser environment
        if (typeof window !== 'undefined') {
            window.CognitiveMesh = new CognitiveMeshWebSDK('$agentId');
        }
        """.trimIndent()
    }
    
    private fun calculateInteractionComplexity(interaction: DOMInteraction): Float {
        var complexity = 0.3f
        
        if (interaction.elementData.containsKey("innerHTML")) complexity += 0.2f
        if (interaction.elementData.containsKey("children")) complexity += 0.3f
        if (interaction.type == DOMInteractionType.FORM_SUBMIT) complexity += 0.4f
        
        return complexity.coerceAtMost(1.0f)
    }
    
    private fun calculateDOMContext(interaction: DOMInteraction): Float {
        return when {
            interaction.elementId.contains("nav") -> 0.8f
            interaction.elementId.contains("button") -> 0.7f
            interaction.elementId.contains("form") -> 0.9f
            interaction.elementId.contains("content") -> 0.6f
            else -> 0.5f
        }
    }
    
    private fun calculateBehaviorComplexity(behaviorData: UserBehaviorData): Float {
        var complexity = behaviorData.actions.size.toFloat() / 20f
        
        if (behaviorData.sessionDuration > 300000) complexity += 0.3f // 5+ minutes
        if (behaviorData.pageViews > 10) complexity += 0.2f
        
        return complexity.coerceIn(0.1f, 1.0f)
    }
    
    private fun calculateBehaviorSalience(behaviorData: UserBehaviorData): Float {
        return when {
            behaviorData.conversionEvent -> 0.9f
            behaviorData.engagementScore > 0.8f -> 0.8f
            behaviorData.bounceRate < 0.3f -> 0.7f
            else -> 0.5f
        }
    }
    
    private fun generateDOMRecommendations(
        interaction: DOMInteraction,
        cognitiveRecommendations: List<String>
    ): List<String> {
        val baseRecommendations = when (interaction.type) {
            DOMInteractionType.CLICK -> listOf("HighlightElement", "ShowTooltip")
            DOMInteractionType.INPUT -> listOf("ValidateInput", "ShowSuggestions")
            DOMInteractionType.FORM_SUBMIT -> listOf("ValidateForm", "ShowConfirmation")
            else -> emptyList()
        }
        
        return baseRecommendations + cognitiveRecommendations.take(3)
    }
    
    private fun generatePersonalizedRecommendations(behaviorData: UserBehaviorData): List<String> {
        return when {
            behaviorData.engagementScore > 0.8f -> listOf(
                "ShowAdvancedFeatures",
                "RecommendPremiumContent",
                "PersonalizeNavigation"
            )
            behaviorData.bounceRate > 0.7f -> listOf(
                "SimplifyUI",
                "ShowOnboarding",
                "HighlightKeyFeatures"
            )
            else -> listOf(
                "OptimizeLoadTime",
                "A/BTestLayout"
            )
        }
    }
    
    private fun generateUIOptimizations(behaviorData: UserBehaviorData): List<String> {
        return listOf(
            "AdaptiveLayout",
            "SmartPreloading", 
            "ContextualHelp",
            "PersonalizedContent"
        )
    }
    
    private fun generateMediaProcessingRecommendations(mediaType: WebMediaType): List<String> {
        return when (mediaType) {
            WebMediaType.CAMERA -> listOf(
                "ObjectRecognition",
                "FaceDetection",
                "QRCodeScanning"
            )
            WebMediaType.MICROPHONE -> listOf(
                "SpeechRecognition",
                "VoiceCommands",
                "AudioAnalysis"
            )
            WebMediaType.SCREEN -> listOf(
                "ScreenAnalysis",
                "ActivityMonitoring"
            )
        }
    }
}

/**
 * Web-specific data structures
 */

data class WebConnection(
    val agentId: String,
    val clientId: String,
    val success: Boolean,
    val apiEndpoints: org.ninelym.cognitive.api.ApiEndpoints,
    val webSpecificEndpoints: WebEndpoints,
    val jsSDK: String
)

data class WebEndpoints(
    val dom: String,
    val events: String,
    val storage: String,
    val media: String,
    val notifications: String
)

data class WebAgent(
    val agentId: String,
    val clientId: String,
    val userAgent: String,
    val origin: String,
    val domElements: MutableMap<String, DOMElement>,
    val eventListeners: MutableMap<String, String>,
    var isConnected: Boolean,
    var lastActivity: Long
)

data class WebSocketConnection(
    val agentId: String,
    val connectionId: String,
    var isActive: Boolean,
    var lastPing: Long
)

data class DOMInteraction(
    val type: DOMInteractionType,
    val elementId: String,
    val elementData: Map<String, Any>,
    val timestamp: Long = System.currentTimeMillis()
)

data class DOMElement(
    val id: String,
    val tagName: String,
    val className: String,
    var lastInteraction: Long,
    var interactionCount: Int
)

enum class DOMInteractionType {
    CLICK,
    INPUT,
    SCROLL,
    HOVER,
    FOCUS,
    FORM_SUBMIT
}

enum class WebActionType {
    DOM_UPDATE,
    NOTIFICATION,
    STORAGE_UPDATE,
    NAVIGATION,
    MEDIA_CONTROL
}

enum class WebMediaType {
    CAMERA,
    MICROPHONE,
    SCREEN
}

data class UserBehaviorData(
    val actions: List<String>,
    val sessionDuration: Long,
    val pageViews: Int,
    val bounceRate: Float,
    val engagementScore: Float,
    val conversionEvent: Boolean
)

data class WebActionRecommendation(
    val actionType: WebActionType,
    val element: String,
    val method: String,
    val data: Map<String, String>,
    val priority: Float,
    val description: String
)

data class DOMInteractionResponse(
    val success: Boolean,
    val message: String,
    val cognitiveInsights: org.ninelym.cognitive.api.CognitiveProcessingResponse?,
    val recommendedActions: List<String>
)

data class UserBehaviorResponse(
    val processed: Boolean,
    val behaviorAnalysis: org.ninelym.cognitive.api.CognitiveProcessingResponse?,
    val personalizedRecommendations: List<String>,
    val uiOptimizations: List<String>
)

data class MediaCaptureResponse(
    val processed: Boolean,
    val mediaType: WebMediaType,
    val cognitiveAnalysis: org.ninelym.cognitive.api.CognitiveProcessingResponse?,
    val processingRecommendations: List<String>
)