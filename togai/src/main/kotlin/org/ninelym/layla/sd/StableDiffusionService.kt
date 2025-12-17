package org.ninelym.layla.sd

import org.ninelym.ai.LocalImageGenerator
import org.ninelym.ai.ImageStyle
import org.ninelym.ai.ImageGenerationResult
import java.io.File
import java.util.concurrent.ConcurrentHashMap

/**
 * Stable Diffusion Service
 * Phase 2: Enhancement - Image generation service
 * 
 * Provides text-to-image generation capabilities using local Stable Diffusion models.
 * Integrates with existing LocalImageGenerator for on-device processing.
 */
class StableDiffusionService {
    
    private val imageGenerator = LocalImageGenerator()
    private val generationHistory = mutableListOf<GenerationRecord>()
    private val activeGenerations = ConcurrentHashMap<String, GenerationTask>()
    
    private var isInitialized = false
    private var currentModel: ModelInfo? = null
    
    /**
     * Initialize the Stable Diffusion service
     */
    suspend fun initialize(): Result<Unit> {
        return try {
            val success = imageGenerator.initialize()
            if (success) {
                isInitialized = true
                loadDefaultModel()
                Result.success(Unit)
            } else {
                Result.failure(Exception("Failed to initialize image generator"))
            }
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Generate image from text prompt
     */
    suspend fun generateImage(
        prompt: String,
        style: ImageStyle = ImageStyle.DEFAULT,
        negativePrompt: String? = null,
        steps: Int = 20,
        guidanceScale: Float = 7.5f,
        seed: Long? = null
    ): Result<GeneratedImage> {
        if (!isInitialized) {
            return Result.failure(Exception("Service not initialized"))
        }
        
        val taskId = generateTaskId()
        val task = GenerationTask(
            id = taskId,
            prompt = prompt,
            style = style,
            startTime = System.currentTimeMillis(),
            status = GenerationStatus.PROCESSING
        )
        activeGenerations[taskId] = task
        
        return try {
            // Generate image using LocalImageGenerator
            val result = imageGenerator.generateImage(prompt, style, null)
            
            val generatedImage = when {
                result.isSuccess() -> {
                    val image = GeneratedImage(
                        id = taskId,
                        prompt = prompt,
                        imagePath = result.image?.path ?: "",
                        timestamp = System.currentTimeMillis(),
                        style = style,
                        model = currentModel?.name ?: "default"
                    )
                    
                    // Add to history
                    generationHistory.add(GenerationRecord(
                        image = image,
                        parameters = GenerationParameters(
                            prompt = prompt,
                            negativePrompt = negativePrompt,
                            steps = steps,
                            guidanceScale = guidanceScale,
                            seed = seed
                        )
                    ))
                    
                    activeGenerations.remove(taskId)
                    Result.success(image)
                }
                else -> {
                    activeGenerations.remove(taskId)
                    Result.failure(Exception("Image generation failed: ${result.error}"))
                }
            }
            
            generatedImage
        } catch (e: Exception) {
            activeGenerations.remove(taskId)
            Result.failure(e)
        }
    }
    
    /**
     * Get generation history
     */
    fun getHistory(): List<GenerationRecord> {
        return generationHistory.toList()
    }
    
    /**
     * Clear generation history
     */
    fun clearHistory(): Result<Unit> {
        return try {
            generationHistory.clear()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Get active generation tasks
     */
    fun getActiveTasks(): List<GenerationTask> {
        return activeGenerations.values.toList()
    }
    
    /**
     * Cancel generation task
     */
    fun cancelTask(taskId: String): Result<Unit> {
        return try {
            activeGenerations.remove(taskId)
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Load a specific model
     */
    suspend fun loadModel(modelName: String): Result<Unit> {
        return try {
            currentModel = ModelInfo(
                name = modelName,
                path = "/models/$modelName",
                loadedAt = System.currentTimeMillis()
            )
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Get current model info
     */
    fun getCurrentModel(): ModelInfo? = currentModel
    
    private fun loadDefaultModel() {
        currentModel = ModelInfo(
            name = "stable-diffusion-v1.5",
            path = "/models/sd-v1.5",
            loadedAt = System.currentTimeMillis()
        )
    }
    
    private fun generateTaskId(): String {
        return "gen_${System.currentTimeMillis()}_${(Math.random() * 10000).toInt()}"
    }
    
    private fun ImageGenerationResult.isSuccess(): Boolean {
        return this.image != null
    }
}

/**
 * Generated image data
 */
data class GeneratedImage(
    val id: String,
    val prompt: String,
    val imagePath: String,
    val timestamp: Long,
    val style: ImageStyle,
    val model: String
)

/**
 * Generation parameters
 */
data class GenerationParameters(
    val prompt: String,
    val negativePrompt: String?,
    val steps: Int,
    val guidanceScale: Float,
    val seed: Long?
)

/**
 * Generation record with parameters
 */
data class GenerationRecord(
    val image: GeneratedImage,
    val parameters: GenerationParameters
)

/**
 * Active generation task
 */
data class GenerationTask(
    val id: String,
    val prompt: String,
    val style: ImageStyle,
    val startTime: Long,
    val status: GenerationStatus
)

/**
 * Generation status
 */
enum class GenerationStatus {
    QUEUED,
    PROCESSING,
    COMPLETED,
    FAILED
}

/**
 * Model information
 */
data class ModelInfo(
    val name: String,
    val path: String,
    val loadedAt: Long
)
