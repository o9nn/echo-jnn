package org.ninelym.layla.phase2

import org.ninelym.layla.taskmgr.EnhancedTaskManagerService
import org.ninelym.layla.taskmgr.TaskPriority
import org.ninelym.layla.taskmgr.TaskExecutionStatus
import org.ninelym.layla.taskmgr.TaskResult
import kotlinx.coroutines.runBlocking
import org.junit.Test
import org.junit.Before
import org.junit.Assert.*

/**
 * Test suite for Enhanced Task Manager Service
 * Phase 2: Enhancement - Task Management Tests
 */
class EnhancedTaskManagerServiceTest {
    
    private lateinit var service: EnhancedTaskManagerService
    
    @Before
    fun setup() {
        service = EnhancedTaskManagerService()
    }
    
    @Test
    fun `test service initialization`() = runBlocking {
        val result = service.initialize()
        assertTrue("Service should initialize successfully", result.isSuccess)
    }
    
    @Test
    fun `test schedule task`() = runBlocking {
        service.initialize()
        
        val result = service.scheduleTask(
            name = "Test Task",
            priority = TaskPriority.NORMAL
        ) {
            TaskResult(success = true, message = "Task completed")
        }
        
        assertTrue("Task scheduling should succeed", result.isSuccess)
        assertNotNull("Task ID should be returned", result.getOrNull())
    }
    
    @Test
    fun `test schedule task with different priorities`() = runBlocking {
        service.initialize()
        
        val lowPriority = service.scheduleTask("Low Priority", TaskPriority.LOW) {
            TaskResult(true, "Done")
        }
        
        val highPriority = service.scheduleTask("High Priority", TaskPriority.HIGH) {
            TaskResult(true, "Done")
        }
        
        val urgentPriority = service.scheduleTask("Urgent", TaskPriority.URGENT) {
            TaskResult(true, "Done")
        }
        
        assertTrue("All tasks should be scheduled", 
            lowPriority.isSuccess && highPriority.isSuccess && urgentPriority.isSuccess)
    }
    
    @Test
    fun `test schedule recurring task`() = runBlocking {
        service.initialize()
        
        val result = service.scheduleTask(
            name = "Recurring Task",
            priority = TaskPriority.NORMAL,
            recurring = true,
            interval = 60000L // 1 minute
        ) {
            TaskResult(success = true, message = "Recurring execution")
        }
        
        assertTrue("Recurring task should be scheduled", result.isSuccess)
    }
    
    @Test
    fun `test cancel task`() = runBlocking {
        service.initialize()
        
        val scheduleResult = service.scheduleTask("Task to Cancel") {
            TaskResult(true, "Done")
        }
        
        val taskId = scheduleResult.getOrNull()
        assertNotNull("Task should be scheduled", taskId)
        
        val cancelResult = service.cancelTask(taskId!!)
        assertTrue("Task cancellation should succeed", cancelResult.isSuccess)
    }
    
    @Test
    fun `test get task status`() = runBlocking {
        service.initialize()
        
        val scheduleResult = service.scheduleTask("Status Check Task") {
            TaskResult(true, "Done")
        }
        
        val taskId = scheduleResult.getOrNull()!!
        val status = service.getTaskStatus(taskId)
        
        assertNotNull("Task status should be available", status)
    }
    
    @Test
    fun `test get all tasks`() = runBlocking {
        service.initialize()
        
        service.scheduleTask("Task 1") { TaskResult(true, "Done") }
        service.scheduleTask("Task 2") { TaskResult(true, "Done") }
        service.scheduleTask("Task 3") { TaskResult(true, "Done") }
        
        val allTasks = service.getAllTasks()
        assertTrue("Should have at least 3 tasks", allTasks.size >= 3)
    }
    
    @Test
    fun `test get tasks by status`() = runBlocking {
        service.initialize()
        
        service.scheduleTask("Queued Task") { TaskResult(true, "Done") }
        
        val queuedTasks = service.getTasksByStatus(TaskExecutionStatus.QUEUED)
        assertTrue("Should have queued tasks", queuedTasks.isNotEmpty())
    }
    
    @Test
    fun `test clear completed tasks`() = runBlocking {
        service.initialize()
        
        // Schedule and simulate completion of tasks
        service.scheduleTask("Task 1") { TaskResult(true, "Done") }
        
        val clearResult = service.clearCompletedTasks()
        assertTrue("Clearing completed tasks should succeed", clearResult.isSuccess)
    }
    
    @Test
    fun `test queue statistics`() = runBlocking {
        service.initialize()
        
        service.scheduleTask("Task 1") { TaskResult(true, "Done") }
        service.scheduleTask("Task 2") { TaskResult(true, "Done") }
        
        val stats = service.getQueueStatistics()
        
        assertNotNull("Statistics should be available", stats)
        assertTrue("Total tasks should be >= 2", stats.totalTasks >= 2)
    }
    
    @Test
    fun `test set max concurrent tasks`() = runBlocking {
        service.initialize()
        
        val result = service.setMaxConcurrentTasks(5)
        assertTrue("Setting max concurrent tasks should succeed", result.isSuccess)
    }
    
    @Test
    fun `test max concurrent tasks bounds`() = runBlocking {
        service.initialize()
        
        // Test lower bound
        val resultLow = service.setMaxConcurrentTasks(0)
        assertTrue("Should accept 0 and coerce to 1", resultLow.isSuccess)
        
        // Test upper bound
        val resultHigh = service.setMaxConcurrentTasks(20)
        assertTrue("Should accept 20 and coerce to 10", resultHigh.isSuccess)
    }
    
    @Test
    fun `test task history tracking`() = runBlocking {
        service.initialize()
        
        service.scheduleTask("Historical Task") { TaskResult(true, "Done") }
        
        val history = service.getTaskHistory()
        assertNotNull("History should be available", history)
    }
    
    @Test
    fun `test schedule without initialization fails`() = runBlocking {
        val result = service.scheduleTask("Uninitialized Task") {
            TaskResult(true, "Done")
        }
        
        assertTrue("Scheduling without initialization should fail", result.isFailure)
    }
}
