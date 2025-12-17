package org.ninelym.layla.taskmgr

import java.util.concurrent.ConcurrentHashMap
import java.util.PriorityQueue

/**
 * Enhanced Task Manager Service
 * Phase 2: Enhancement - Background task management
 * 
 * Manages background tasks with priority scheduling, resource optimization,
 * and intelligent task execution.
 */
class EnhancedTaskManagerService {
    
    private val tasks = ConcurrentHashMap<String, BackgroundTask>()
    private val taskQueue = PriorityQueue<BackgroundTask>(compareBy { it.priority.ordinal })
    private val taskHistory = mutableListOf<TaskExecution>()
    
    private var isInitialized = false
    private var isProcessing = false
    private var maxConcurrentTasks = 3
    
    /**
     * Initialize task manager
     */
    suspend fun initialize(): Result<Unit> {
        return try {
            isInitialized = true
            startTaskProcessor()
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Schedule background task
     */
    fun scheduleTask(
        name: String,
        priority: TaskPriority = TaskPriority.NORMAL,
        executeAfter: Long = 0L,
        recurring: Boolean = false,
        interval: Long = 0L,
        action: suspend () -> TaskResult
    ): Result<String> {
        if (!isInitialized) {
            return Result.failure(Exception("Service not initialized"))
        }
        
        return try {
            val taskId = generateTaskId()
            val task = BackgroundTask(
                id = taskId,
                name = name,
                priority = priority,
                createdAt = System.currentTimeMillis(),
                executeAfter = System.currentTimeMillis() + executeAfter,
                recurring = recurring,
                interval = interval,
                status = TaskExecutionStatus.QUEUED,
                action = action
            )
            
            tasks[taskId] = task
            taskQueue.offer(task)
            
            Result.success(taskId)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Cancel task
     */
    fun cancelTask(taskId: String): Result<Unit> {
        return try {
            val task = tasks[taskId]
                ?: return Result.failure(Exception("Task not found"))
            
            taskQueue.remove(task)
            tasks.remove(taskId)
            
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Get task status
     */
    fun getTaskStatus(taskId: String): TaskExecutionStatus? {
        return tasks[taskId]?.status
    }
    
    /**
     * Get all tasks
     */
    fun getAllTasks(): List<BackgroundTask> {
        return tasks.values.toList()
    }
    
    /**
     * Get tasks by status
     */
    fun getTasksByStatus(status: TaskExecutionStatus): List<BackgroundTask> {
        return tasks.values.filter { it.status == status }
    }
    
    /**
     * Get task history
     */
    fun getTaskHistory(limit: Int = 50): List<TaskExecution> {
        return taskHistory.takeLast(limit)
    }
    
    /**
     * Clear completed tasks
     */
    fun clearCompletedTasks(): Result<Unit> {
        return try {
            val completedTasks = tasks.values
                .filter { it.status == TaskExecutionStatus.COMPLETED }
                .map { it.id }
            
            completedTasks.forEach { taskId ->
                tasks.remove(taskId)
            }
            
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Set max concurrent tasks
     */
    fun setMaxConcurrentTasks(max: Int): Result<Unit> {
        return try {
            maxConcurrentTasks = max.coerceIn(1, 10)
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Get queue statistics
     */
    fun getQueueStatistics(): QueueStatistics {
        val queued = tasks.values.count { it.status == TaskExecutionStatus.QUEUED }
        val running = tasks.values.count { it.status == TaskExecutionStatus.RUNNING }
        val completed = tasks.values.count { it.status == TaskExecutionStatus.COMPLETED }
        val failed = tasks.values.count { it.status == TaskExecutionStatus.FAILED }
        
        return QueueStatistics(
            totalTasks = tasks.size,
            queuedTasks = queued,
            runningTasks = running,
            completedTasks = completed,
            failedTasks = failed,
            avgExecutionTime = calculateAvgExecutionTime()
        )
    }
    
    /**
     * Process task queue
     */
    private suspend fun startTaskProcessor() {
        isProcessing = true
        
        // In production, this would run in a separate coroutine/thread
        // For now, we just mark it as started
    }
    
    /**
     * Execute next task in queue
     */
    private suspend fun processNextTask() {
        val now = System.currentTimeMillis()
        
        // Get tasks ready to execute
        val readyTasks = taskQueue
            .filter { it.executeAfter <= now }
            .take(maxConcurrentTasks)
        
        readyTasks.forEach { task ->
            executeTask(task)
        }
    }
    
    /**
     * Execute a task
     */
    private suspend fun executeTask(task: BackgroundTask) {
        val startTime = System.currentTimeMillis()
        
        try {
            // Update status
            task.status = TaskExecutionStatus.RUNNING
            
            // Execute task action
            val result = task.action()
            
            val executionTime = System.currentTimeMillis() - startTime
            
            // Record execution
            val execution = TaskExecution(
                taskId = task.id,
                taskName = task.name,
                startTime = startTime,
                endTime = System.currentTimeMillis(),
                executionTime = executionTime,
                status = TaskExecutionStatus.COMPLETED,
                result = result
            )
            
            taskHistory.add(execution)
            
            // Handle recurring tasks
            if (task.recurring) {
                task.executeAfter = System.currentTimeMillis() + task.interval
                task.status = TaskExecutionStatus.QUEUED
                taskQueue.offer(task)
            } else {
                task.status = TaskExecutionStatus.COMPLETED
                taskQueue.remove(task)
            }
            
        } catch (e: Exception) {
            // Task failed
            task.status = TaskExecutionStatus.FAILED
            taskQueue.remove(task)
            
            val execution = TaskExecution(
                taskId = task.id,
                taskName = task.name,
                startTime = startTime,
                endTime = System.currentTimeMillis(),
                executionTime = System.currentTimeMillis() - startTime,
                status = TaskExecutionStatus.FAILED,
                result = TaskResult(false, "Error: ${e.message}")
            )
            
            taskHistory.add(execution)
        }
    }
    
    private fun calculateAvgExecutionTime(): Long {
        if (taskHistory.isEmpty()) return 0L
        
        val total = taskHistory.sumOf { it.executionTime }
        return total / taskHistory.size
    }
    
    private fun generateTaskId(): String {
        return "task_${System.currentTimeMillis()}_${(Math.random() * 10000).toInt()}"
    }
}

/**
 * Background task
 */
data class BackgroundTask(
    val id: String,
    val name: String,
    val priority: TaskPriority,
    val createdAt: Long,
    var executeAfter: Long,
    val recurring: Boolean,
    val interval: Long,
    var status: TaskExecutionStatus,
    val action: suspend () -> TaskResult
)

/**
 * Task priority
 */
enum class TaskPriority {
    LOW,
    NORMAL,
    HIGH,
    URGENT
}

/**
 * Task execution status
 */
enum class TaskExecutionStatus {
    QUEUED,
    RUNNING,
    COMPLETED,
    FAILED,
    CANCELLED
}

/**
 * Task result
 */
data class TaskResult(
    val success: Boolean,
    val message: String,
    val data: Map<String, Any> = emptyMap()
)

/**
 * Task execution record
 */
data class TaskExecution(
    val taskId: String,
    val taskName: String,
    val startTime: Long,
    val endTime: Long,
    val executionTime: Long,
    val status: TaskExecutionStatus,
    val result: TaskResult
)

/**
 * Queue statistics
 */
data class QueueStatistics(
    val totalTasks: Int,
    val queuedTasks: Int,
    val runningTasks: Int,
    val completedTasks: Int,
    val failedTasks: Int,
    val avgExecutionTime: Long
)
