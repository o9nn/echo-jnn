package org.ninelym.layla.phase3

import org.junit.Test
import org.junit.Before
import org.junit.After
import kotlinx.coroutines.runBlocking
import org.ninelym.layla.document.DocumentProcessingService
import org.ninelym.layla.document.AnalysisType
import org.ninelym.layla.billing.BillingService
import org.ninelym.layla.sharing.SharingService
import org.ninelym.layla.sharing.ShareFormat
import org.ninelym.layla.sharing.ExportFormat
import org.ninelym.layla.tasker.AdvancedTaskerWorkflowService
import org.ninelym.layla.tasker.WorkflowStep
import org.ninelym.layla.tasker.WorkflowAction
import org.ninelym.layla.cloud.CloudSyncService
import org.ninelym.layla.cloud.SyncDataType
import java.io.File

/**
 * Phase 3 Integration Tests
 * 
 * Comprehensive test suite for Phase 3: Integration services
 */
class Phase3IntegrationTest {
    
    private lateinit var documentService: DocumentProcessingService
    private lateinit var billingService: BillingService
    private lateinit var sharingService: SharingService
    private lateinit var workflowService: AdvancedTaskerWorkflowService
    private lateinit var cloudSyncService: CloudSyncService
    
    @Before
    fun setup() {
        documentService = DocumentProcessingService()
        billingService = BillingService()
        sharingService = SharingService()
        workflowService = AdvancedTaskerWorkflowService()
        cloudSyncService = CloudSyncService()
    }
    
    @After
    fun teardown() {
        billingService.disconnect()
        cloudSyncService.disconnect()
    }
    
    // ===== Document Processing Service Tests =====
    
    @Test
    fun testDocumentLoading() = runBlocking {
        // Create a temporary test file
        val testFile = File.createTempFile("test_doc", ".txt")
        testFile.writeText("This is a test document for processing.")
        
        val result = documentService.loadDocument(testFile.absolutePath)
        
        assert(result.isSuccess) { "Document loading should succeed" }
        val document = result.getOrThrow()
        assert(document.fileName == testFile.name) { "Document name should match" }
        assert(document.fileSize > 0) { "Document should have size" }
        
        testFile.delete()
    }
    
    @Test
    fun testTextExtraction() = runBlocking {
        val testFile = File.createTempFile("test_extract", ".txt")
        val testContent = "Sample text for extraction test."
        testFile.writeText(testContent)
        
        val loadResult = documentService.loadDocument(testFile.absolutePath)
        val document = loadResult.getOrThrow()
        
        val extractResult = documentService.extractText(document.id)
        
        assert(extractResult.isSuccess) { "Text extraction should succeed" }
        val extractedText = extractResult.getOrThrow()
        assert(extractedText.isNotEmpty()) { "Extracted text should not be empty" }
        
        testFile.delete()
    }
    
    @Test
    fun testDocumentSummarization() = runBlocking {
        val testFile = File.createTempFile("test_summary", ".txt")
        testFile.writeText("This is a long document that needs to be summarized. " +
                "It contains multiple sentences. Each sentence adds more information.")
        
        val document = documentService.loadDocument(testFile.absolutePath).getOrThrow()
        val result = documentService.summarizeDocument(document.id)
        
        assert(result.isSuccess) { "Summarization should succeed" }
        val summary = result.getOrThrow()
        assert(summary.summary.isNotEmpty()) { "Summary should not be empty" }
        assert(summary.keyPoints.isNotEmpty()) { "Key points should be extracted" }
        assert(summary.wordCount > 0) { "Word count should be positive" }
        
        testFile.delete()
    }
    
    @Test
    fun testDocumentQA() = runBlocking {
        val testFile = File.createTempFile("test_qa", ".txt")
        testFile.writeText("The capital of France is Paris. It is known for the Eiffel Tower.")
        
        val document = documentService.loadDocument(testFile.absolutePath).getOrThrow()
        val result = documentService.askQuestion(document.id, "What is the capital of France?")
        
        assert(result.isSuccess) { "Q&A should succeed" }
        val answer = result.getOrThrow()
        assert(answer.answer.isNotEmpty()) { "Answer should not be empty" }
        assert(answer.confidence > 0) { "Confidence should be positive" }
        
        testFile.delete()
    }
    
    @Test
    fun testMultiDocumentAnalysis() = runBlocking {
        val doc1 = File.createTempFile("doc1", ".txt")
        val doc2 = File.createTempFile("doc2", ".txt")
        
        doc1.writeText("Document 1 content about AI and machine learning.")
        doc2.writeText("Document 2 content about machine learning and neural networks.")
        
        val document1 = documentService.loadDocument(doc1.absolutePath).getOrThrow()
        val document2 = documentService.loadDocument(doc2.absolutePath).getOrThrow()
        
        val result = documentService.analyzeMultipleDocuments(
            listOf(document1.id, document2.id),
            AnalysisType.COMPARISON
        )
        
        assert(result.isSuccess) { "Multi-document analysis should succeed" }
        val analysis = result.getOrThrow()
        assert(analysis.findings.isNotEmpty()) { "Analysis findings should not be empty" }
        assert(analysis.insights.isNotEmpty()) { "Analysis insights should be provided" }
        
        doc1.delete()
        doc2.delete()
    }
    
    @Test
    fun testDocumentCategorization() = runBlocking {
        val testFile = File.createTempFile("test_category", ".txt")
        testFile.writeText("This is a technical document about software development and API design.")
        
        val document = documentService.loadDocument(testFile.absolutePath).getOrThrow()
        val result = documentService.categorizeDocument(document.id)
        
        assert(result.isSuccess) { "Categorization should succeed" }
        val category = result.getOrThrow()
        assert(category.primaryCategory.isNotEmpty()) { "Primary category should be assigned" }
        assert(category.confidence > 0) { "Confidence should be positive" }
        
        testFile.delete()
    }
    
    // ===== Billing Service Tests =====
    
    @Test
    fun testBillingInitialization() = runBlocking {
        val result = billingService.initialize()
        
        assert(result.isSuccess) { "Billing initialization should succeed" }
        assert(billingService.products.value.isNotEmpty()) { "Products should be loaded" }
    }
    
    @Test
    fun testProductListing() = runBlocking {
        billingService.initialize()
        
        val products = billingService.products.value
        assert(products.size >= 3) { "Should have at least 3 products" }
        assert(products.any { it.id == "premium_monthly" }) { "Should have premium monthly product" }
        assert(products.any { it.id == "premium_yearly" }) { "Should have premium yearly product" }
    }
    
    @Test
    fun testPurchaseFlow() = runBlocking {
        billingService.initialize()
        
        val result = billingService.purchase("premium_monthly")
        
        assert(result.isSuccess) { "Purchase should succeed" }
        val purchase = result.getOrThrow()
        assert(purchase.productId == "premium_monthly") { "Purchase should be for correct product" }
        assert(purchase.acknowledged == false) { "Purchase should not be acknowledged yet" }
    }
    
    @Test
    fun testSubscriptionManagement() = runBlocking {
        billingService.initialize()
        
        // Purchase a subscription
        val purchase = billingService.purchase("premium_monthly").getOrThrow()
        billingService.acknowledgePurchase(purchase.id)
        
        // Check if subscription is active
        val hasPremium = billingService.hasPremiumSubscription()
        assert(hasPremium) { "Should have active premium subscription" }
        
        val activeSubscription = billingService.getActiveSubscription()
        assert(activeSubscription != null) { "Should have active subscription" }
    }
    
    @Test
    fun testSubscriptionUpgrade() = runBlocking {
        billingService.initialize()
        
        // Purchase monthly subscription
        billingService.purchase("premium_monthly")
        
        // Upgrade to yearly
        val result = billingService.changeSubscription("premium_monthly", "premium_yearly")
        
        assert(result.isSuccess) { "Subscription upgrade should succeed" }
        val newSubscription = result.getOrThrow()
        assert(newSubscription.productId == "premium_yearly") { "Should be upgraded to yearly" }
    }
    
    // ===== Sharing Service Tests =====
    
    @Test
    fun testTextSharing() = runBlocking {
        val result = sharingService.shareText(
            text = "Test content to share",
            title = "Test Share",
            format = ShareFormat.PLAIN_TEXT
        )
        
        assert(result.isSuccess) { "Text sharing should succeed" }
        val shareResult = result.getOrThrow()
        assert(shareResult.success) { "Share operation should succeed" }
    }
    
    @Test
    fun testConversationExport() = runBlocking {
        val result = sharingService.exportConversation(
            conversationId = "test_conv",
            format = ExportFormat.JSON
        )
        
        assert(result.isSuccess) { "Conversation export should succeed" }
        val file = result.getOrThrow()
        assert(file.exists()) { "Export file should exist" }
        assert(file.extension == "json") { "Export should be JSON format" }
        
        file.delete()
    }
    
    @Test
    fun testShareTemplate() {
        val template = sharingService.createTemplate(
            name = "Test Template",
            template = "Hello {{name}}, welcome to {{service}}!",
            variables = listOf("name", "service")
        )
        
        assert(template.name == "Test Template") { "Template name should match" }
        assert(template.variables.size == 2) { "Should have 2 variables" }
        
        val applied = sharingService.applyTemplate(
            template,
            mapOf("name" to "John", "service" to "Layla")
        )
        
        assert(applied == "Hello John, welcome to Layla!") { "Template should be applied correctly" }
    }
    
    @Test
    fun testMultipleFormatExport() = runBlocking {
        val data = mapOf(
            "name" to "Test",
            "value" to "123",
            "status" to "active"
        )
        
        // Test JSON export
        val jsonResult = sharingService.exportData(data, "test", ExportFormat.JSON)
        assert(jsonResult.isSuccess) { "JSON export should succeed" }
        
        // Test CSV export
        val csvResult = sharingService.exportData(data, "test", ExportFormat.CSV)
        assert(csvResult.isSuccess) { "CSV export should succeed" }
        
        // Test Markdown export
        val mdResult = sharingService.exportData(data, "test", ExportFormat.MARKDOWN)
        assert(mdResult.isSuccess) { "Markdown export should succeed" }
        
        // Cleanup
        jsonResult.getOrNull()?.delete()
        csvResult.getOrNull()?.delete()
        mdResult.getOrNull()?.delete()
    }
    
    // ===== Advanced Workflow Service Tests =====
    
    @Test
    fun testWorkflowCreation() {
        val workflow = workflowService.createWorkflow(
            name = "Test Workflow",
            description = "A test workflow",
            steps = listOf(
                WorkflowStep(
                    id = "step1",
                    name = "First Step",
                    action = WorkflowAction.AIInference("Test prompt")
                )
            )
        )
        
        assert(workflow.name == "Test Workflow") { "Workflow name should match" }
        assert(workflow.steps.size == 1) { "Should have 1 step" }
    }
    
    @Test
    fun testWorkflowExecution() = runBlocking {
        val workflow = workflowService.createWorkflow(
            name = "Simple Workflow",
            description = "Test execution",
            steps = listOf(
                WorkflowStep(
                    id = "notify",
                    name = "Send Notification",
                    action = WorkflowAction.SendNotification("Test notification")
                )
            )
        )
        
        val result = workflowService.executeWorkflow(workflow.id)
        
        assert(result.isSuccess) { "Workflow execution should succeed" }
        val execution = result.getOrThrow()
        assert(execution.workflowId == workflow.id) { "Execution should be for correct workflow" }
    }
    
    @Test
    fun testWorkflowAnalytics() {
        val workflow = workflowService.createWorkflow(
            name = "Analytics Test",
            description = "Test analytics",
            steps = listOf()
        )
        
        val analytics = workflowService.analyzeWorkflow(workflow.id)
        
        assert(analytics.workflowId == workflow.id) { "Analytics should be for correct workflow" }
        assert(analytics.totalExecutions >= 0) { "Should have execution count" }
        assert(analytics.successRate >= 0.0) { "Should have success rate" }
    }
    
    // ===== Cloud Sync Service Tests =====
    
    @Test
    fun testCloudSyncDisabledByDefault() {
        val stats = cloudSyncService.getSyncStatistics()
        
        assert(!stats.enabled) { "Cloud sync should be disabled by default" }
        assert(stats.deviceCount == 0) { "Should have no synced devices initially" }
    }
    
    @Test
    fun testEnableCloudSync() = runBlocking {
        cloudSyncService.setSyncEnabled(true)
        
        val result = cloudSyncService.initialize("test_user")
        
        assert(result.isSuccess) { "Cloud sync initialization should succeed when enabled" }
    }
    
    @Test
    fun testDeviceRegistration() = runBlocking {
        cloudSyncService.setSyncEnabled(true)
        cloudSyncService.initialize("test_user")
        
        val result = cloudSyncService.registerDevice(
            deviceName = "Test Device",
            deviceType = org.ninelym.layla.cloud.DeviceType.PHONE
        )
        
        assert(result.isSuccess) { "Device registration should succeed" }
        val device = result.getOrThrow()
        assert(device.name == "Test Device") { "Device name should match" }
    }
    
    @Test
    fun testCloudSyncOperations() = runBlocking {
        cloudSyncService.setSyncEnabled(true)
        cloudSyncService.initialize("test_user")
        
        val testData = mapOf("key" to "value")
        
        // Test sync to cloud
        val uploadResult = cloudSyncService.syncToCloud(SyncDataType.PREFERENCES, testData)
        assert(uploadResult.isSuccess) { "Upload to cloud should succeed" }
        
        // Test sync from cloud
        val downloadResult = cloudSyncService.syncFromCloud(SyncDataType.PREFERENCES)
        assert(downloadResult.isSuccess) { "Download from cloud should succeed" }
    }
    
    // ===== Integration Tests =====
    
    @Test
    fun testDocumentToSharingIntegration() = runBlocking {
        // Load and process a document
        val testFile = File.createTempFile("integration_test", ".txt")
        testFile.writeText("Integration test document content.")
        
        val document = documentService.loadDocument(testFile.absolutePath).getOrThrow()
        val summary = documentService.summarizeDocument(document.id).getOrThrow()
        
        // Share the summary
        val shareResult = sharingService.shareText(
            text = summary.summary,
            title = "Document Summary",
            format = ShareFormat.MARKDOWN
        )
        
        assert(shareResult.isSuccess) { "Sharing document summary should succeed" }
        
        testFile.delete()
    }
    
    @Test
    fun testWorkflowWithBilling() = runBlocking {
        billingService.initialize()
        
        // Create workflow that checks premium status
        val workflow = workflowService.createWorkflow(
            name = "Premium Feature Workflow",
            description = "Workflow that requires premium",
            steps = listOf(
                WorkflowStep(
                    id = "check_premium",
                    name = "Check Premium",
                    action = WorkflowAction.Custom { context ->
                        billingService.hasPremiumSubscription()
                    }
                )
            )
        )
        
        val result = workflowService.executeWorkflow(workflow.id)
        assert(result.isSuccess) { "Workflow execution should succeed" }
    }
    
    @Test
    fun testFullPhase3Integration() = runBlocking {
        // Initialize all services
        billingService.initialize()
        cloudSyncService.setSyncEnabled(true)
        cloudSyncService.initialize("test_user")
        
        // Test document processing
        val testFile = File.createTempFile("full_test", ".txt")
        testFile.writeText("Complete Phase 3 integration test content.")
        
        val document = documentService.loadDocument(testFile.absolutePath).getOrThrow()
        val summary = documentService.summarizeDocument(document.id).getOrThrow()
        
        // Test sharing
        val shareResult = sharingService.shareText(summary.summary, "Summary")
        assert(shareResult.isSuccess) { "Sharing should succeed" }
        
        // Test workflow
        val workflow = workflowService.createWorkflow(
            name = "Integration Workflow",
            description = "Full integration test",
            steps = listOf(
                WorkflowStep(
                    id = "process",
                    name = "Process Document",
                    action = WorkflowAction.AIInference("Analyze document")
                )
            )
        )
        
        val workflowResult = workflowService.executeWorkflow(workflow.id)
        assert(workflowResult.isSuccess) { "Workflow execution should succeed" }
        
        // Test cloud sync
        val syncResult = cloudSyncService.syncToCloud(SyncDataType.DOCUMENTS, mapOf("test" to "data"))
        assert(syncResult.isSuccess) { "Cloud sync should succeed" }
        
        // Verify billing state
        assert(billingService.products.value.isNotEmpty()) { "Products should be available" }
        
        testFile.delete()
        println("✅ Full Phase 3 integration test completed successfully!")
    }
}
