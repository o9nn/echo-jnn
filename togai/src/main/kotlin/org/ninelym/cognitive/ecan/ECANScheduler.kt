package org.ninelym.cognitive.ecan

import org.ninelym.cognitive.CognitiveTensor
import org.ninelym.cognitive.hypergraph.Atom
import kotlin.math.max
import kotlin.math.min

/**
 * ECAN Scheduler for dynamic task prioritization
 * 
 * Manages task execution order based on attention values, resource constraints,
 * and economic principles. Implements both reactive and predictive scheduling.
 */
class ECANScheduler(
    private val ecanKernel: ECANKernel,
    private val maxConcurrentTasks: Int = 5,
    private val resourceThreshold: Float = 0.1f,
    private val priorityBoostFactor: Float = 1.2f
) {
    
    private val taskQueue = mutableListOf<ScheduledTask>()
    private val runningTasks = mutableMapOf<String, ScheduledTask>()
    private val completedTasks = mutableListOf<TaskExecutionResult>()
    private var nextTaskId = 1L
    
    /**
     * Schedule a task for execution with ECAN-based prioritization
     */
    fun scheduleTask(
        name: String,
        ecanTask: ECANTask,
        executor: TaskExecutor,
        deadline: Long? = null
    ): String {
        val taskId = generateTaskId()
        val priority = calculateDynamicPriority(ecanTask, deadline)
        
        val scheduledTask = ScheduledTask(
            id = taskId,
            name = name,
            ecanTask = ecanTask,
            executor = executor,
            priority = priority,
            createdAt = System.currentTimeMillis(),
            deadline = deadline
        )
        
        insertTaskByPriority(scheduledTask)
        return taskId
    }
    
    /**
     * Process the next batch of tasks based on available attention/resources
     */
    fun processTasks(): SchedulingResult {
        val ecanStats = ecanKernel.getECANStats()
        val availableSlots = maxConcurrentTasks - runningTasks.size
        val tasksToExecute = mutableListOf<ScheduledTask>()
        
        // Select tasks that can run with current resources
        var slotsRemaining = availableSlots
        val iterator = taskQueue.iterator()
        
        while (iterator.hasNext() && slotsRemaining > 0) {
            val task = iterator.next()
            
            if (canExecuteTask(task, ecanStats)) {
                tasksToExecute.add(task)
                runningTasks[task.id] = task
                iterator.remove()
                slotsRemaining--
            }
        }
        
        // Execute selected tasks
        val executionResults = mutableListOf<TaskExecutionResult>()
        tasksToExecute.forEach { task ->
            val result = executeTask(task)
            executionResults.add(result)
            
            if (result.status == TaskStatus.COMPLETED || result.status == TaskStatus.FAILED) {
                runningTasks.remove(task.id)
                completedTasks.add(result)
                
                // Update ECAN based on task completion
                updateAttentionBasedOnExecution(task, result)
            }
        }
        
        // Reorder queue based on updated priorities
        reorderTaskQueue()
        
        return SchedulingResult(
            tasksScheduled = tasksToExecute.size,
            tasksCompleted = executionResults.count { it.status == TaskStatus.COMPLETED },
            tasksFailed = executionResults.count { it.status == TaskStatus.FAILED },
            queueSize = taskQueue.size,
            runningTasks = runningTasks.size,
            executionResults = executionResults
        )
    }
    
    /**
     * Calculate dynamic priority based on ECAN task properties and context
     */
    private fun calculateDynamicPriority(ecanTask: ECANTask, deadline: Long?): Float {
        var basePriority = ecanTask.priority
        
        // Boost priority based on attention level
        basePriority += ecanTask.attention * 0.3f
        
        // Consider resource requirements (less resources = higher priority for efficiency)
        val resourceFactor = max(0.1f, 1.0f - (ecanTask.resources / 10.0f))
        basePriority *= resourceFactor
        
        // Time-based urgency boost
        deadline?.let { deadlineTime ->
            val timeRemaining = deadlineTime - System.currentTimeMillis()
            val urgencyBoost = if (timeRemaining < 60000) { // Less than 1 minute
                priorityBoostFactor
            } else if (timeRemaining < 300000) { // Less than 5 minutes
                1.1f
            } else 1.0f
            
            basePriority *= urgencyBoost
        }
        
        // Task complexity factor
        val complexityBoost = 1.0f + (ecanTask.tasks * 0.2f)
        basePriority *= complexityBoost
        
        return min(2.0f, basePriority) // Cap at maximum priority
    }
    
    /**
     * Check if a task can be executed given current ECAN state
     */
    private fun canExecuteTask(task: ScheduledTask, ecanStats: ECANStats): Boolean {
        // Check if we have sufficient attention resources
        if (ecanStats.averageAttention < task.ecanTask.resources * resourceThreshold) {
            return false
        }
        
        // Check bank balance for resource-intensive tasks
        if (task.ecanTask.resources > 5.0f && ecanStats.bankBalance < 10.0f) {
            return false
        }
        
        // Priority threshold - only execute high-priority tasks under resource pressure
        if (ecanStats.averageAttention < 0.3f && task.priority < 0.7f) {
            return false
        }
        
        return true
    }
    
    /**
     * Execute a scheduled task
     */
    private fun executeTask(task: ScheduledTask): TaskExecutionResult {
        val startTime = System.currentTimeMillis()
        
        return try {
            val result = task.executor.execute(task.ecanTask)
            val executionTime = System.currentTimeMillis() - startTime
            
            TaskExecutionResult(
                taskId = task.id,
                taskName = task.name,
                status = if (result.success) TaskStatus.COMPLETED else TaskStatus.FAILED,
                executionTimeMs = executionTime,
                outputTensor = result.outputTensor,
                errorMessage = result.errorMessage
            )
        } catch (e: Exception) {
            val executionTime = System.currentTimeMillis() - startTime
            
            TaskExecutionResult(
                taskId = task.id,
                taskName = task.name,
                status = TaskStatus.FAILED,
                executionTimeMs = executionTime,
                errorMessage = e.message
            )
        }
    }
    
    /**
     * Update attention values based on task execution results
     */
    private fun updateAttentionBasedOnExecution(task: ScheduledTask, result: TaskExecutionResult) {
        val ecanStats = ecanKernel.getECANStats()
        
        when (result.status) {
            TaskStatus.COMPLETED -> {
                // Reward successful execution with attention boost
                val successBonus = min(0.2f, task.ecanTask.priority * 0.1f)
                // Implementation would update related atoms' attention values
                // This is a conceptual update - actual implementation would modify atoms
            }
            TaskStatus.FAILED -> {
                // Penalize failed execution by reducing attention
                val failurePenalty = min(0.1f, task.ecanTask.resources * 0.05f)
                // Implementation would reduce attention on related atoms
            }
            else -> { /* No attention updates for running tasks */ }
        }
    }
    
    /**
     * Insert task into queue maintaining priority order
     */
    private fun insertTaskByPriority(task: ScheduledTask) {
        val insertIndex = taskQueue.binarySearch { it.priority.compareTo(task.priority) }
        val actualIndex = if (insertIndex < 0) (-insertIndex - 1) else insertIndex
        taskQueue.add(actualIndex, task)
    }
    
    /**
     * Reorder task queue based on updated priorities
     */
    private fun reorderTaskQueue() {
        // Recalculate priorities for waiting tasks
        taskQueue.forEach { task ->
            task.priority = calculateDynamicPriority(task.ecanTask, task.deadline)
        }
        
        // Sort by priority (descending)
        taskQueue.sortByDescending { it.priority }
    }
    
    /**
     * Get current scheduler statistics
     */
    fun getSchedulerStats(): SchedulerStats {
        val totalTasks = taskQueue.size + runningTasks.size + completedTasks.size
        val completionRate = if (completedTasks.isNotEmpty()) {
            completedTasks.count { it.status == TaskStatus.COMPLETED }.toFloat() / completedTasks.size
        } else 0.0f
        
        val averageExecutionTime = if (completedTasks.isNotEmpty()) {
            completedTasks.map { it.executionTimeMs }.average()
        } else 0.0
        
        return SchedulerStats(
            totalTasksScheduled = totalTasks,
            queuedTasks = taskQueue.size,
            runningTasks = runningTasks.size,
            completedTasks = completedTasks.size,
            completionRate = completionRate,
            averageExecutionTimeMs = averageExecutionTime
        )
    }
    
    /**
     * Clear completed tasks from history (for memory management)
     */
    fun clearCompletedTasks() {
        completedTasks.clear()
    }
    
    /**
     * Generate unique task ID
     */
    private fun generateTaskId(): String = "task-${nextTaskId++}-${System.currentTimeMillis()}"
}

/**
 * Scheduled task with ECAN properties
 */
data class ScheduledTask(
    val id: String,
    val name: String,
    val ecanTask: ECANTask,
    val executor: TaskExecutor,
    var priority: Float,
    val createdAt: Long,
    val deadline: Long? = null
)

/**
 * Interface for task executors
 */
interface TaskExecutor {
    fun execute(task: ECANTask): TaskExecutionOutput
}

/**
 * Output of task execution
 */
data class TaskExecutionOutput(
    val success: Boolean,
    val outputTensor: CognitiveTensor? = null,
    val errorMessage: String? = null
)

/**
 * Result of task execution with metadata
 */
data class TaskExecutionResult(
    val taskId: String,
    val taskName: String,
    val status: TaskStatus,
    val executionTimeMs: Long,
    val outputTensor: CognitiveTensor? = null,
    val errorMessage: String? = null
)

/**
 * Task execution status
 */
enum class TaskStatus {
    QUEUED,
    RUNNING,
    COMPLETED,
    FAILED
}

/**
 * Result of scheduling cycle
 */
data class SchedulingResult(
    val tasksScheduled: Int,
    val tasksCompleted: Int,
    val tasksFailed: Int,
    val queueSize: Int,
    val runningTasks: Int,
    val executionResults: List<TaskExecutionResult>
)

/**
 * Scheduler performance statistics
 */
data class SchedulerStats(
    val totalTasksScheduled: Int,
    val queuedTasks: Int,
    val runningTasks: Int,
    val completedTasks: Int,
    val completionRate: Float,
    val averageExecutionTimeMs: Double
)