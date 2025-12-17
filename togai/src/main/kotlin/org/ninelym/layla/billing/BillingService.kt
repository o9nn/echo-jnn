package org.ninelym.layla.billing

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Billing Service
 * 
 * Manages Google Play Billing integration for in-app purchases and subscriptions.
 * 
 * Features:
 * - Product management
 * - Purchase flow
 * - License verification
 * - Subscription management (tiers, grace periods, upgrade/downgrade)
 * - Dynamic pricing
 * - Promotional offers
 * - Analytics integration
 * 
 * Phase 3: Integration
 */
class BillingService {
    
    // State flows for reactive updates
    private val _products = MutableStateFlow<List<Product>>(emptyList())
    val products: StateFlow<List<Product>> = _products.asStateFlow()
    
    private val _subscriptions = MutableStateFlow<List<Subscription>>(emptyList())
    val subscriptions: StateFlow<List<Subscription>> = _subscriptions.asStateFlow()
    
    private val _purchases = MutableStateFlow<List<Purchase>>(emptyList())
    val purchases: StateFlow<List<Purchase>> = _purchases.asStateFlow()
    
    private val _billingState = MutableStateFlow<BillingState>(BillingState.DISCONNECTED)
    val billingState: StateFlow<BillingState> = _billingState.asStateFlow()
    
    private var isInitialized = false
    
    /**
     * Initialize billing service and connect to Google Play Billing
     */
    suspend fun initialize(): Result<Unit> {
        return try {
            _billingState.value = BillingState.CONNECTING
            
            // Simulate connection to Google Play Billing
            // In production, this would use BillingClient
            
            // Load available products
            loadProducts()
            
            // Query existing purchases
            queryPurchases()
            
            isInitialized = true
            _billingState.value = BillingState.CONNECTED
            
            Result.success(Unit)
        } catch (e: Exception) {
            _billingState.value = BillingState.ERROR
            Result.failure(e)
        }
    }
    
    /**
     * Load available products from Google Play
     */
    private suspend fun loadProducts() {
        // Placeholder: In production, use BillingClient.queryProductDetailsAsync()
        val demoProducts = listOf(
            Product(
                id = "premium_monthly",
                type = ProductType.SUBSCRIPTION,
                title = "Premium Monthly",
                description = "Access all premium features for one month",
                price = "$9.99",
                priceMicros = 9990000,
                currencyCode = "USD"
            ),
            Product(
                id = "premium_yearly",
                type = ProductType.SUBSCRIPTION,
                title = "Premium Yearly",
                description = "Access all premium features for one year",
                price = "$99.99",
                priceMicros = 99990000,
                currencyCode = "USD"
            ),
            Product(
                id = "extra_storage",
                type = ProductType.IN_APP,
                title = "Extra Storage",
                description = "Add 10GB of storage for AI models",
                price = "$4.99",
                priceMicros = 4990000,
                currencyCode = "USD"
            )
        )
        
        _products.value = demoProducts
    }
    
    /**
     * Query existing purchases and subscriptions
     */
    private suspend fun queryPurchases() {
        // Placeholder: In production, use BillingClient.queryPurchasesAsync()
        // This would restore any active purchases/subscriptions
        _purchases.value = emptyList()
        _subscriptions.value = emptyList()
    }
    
    /**
     * Start purchase flow for a product
     */
    suspend fun purchase(productId: String): Result<Purchase> {
        return try {
            if (!isInitialized) {
                return Result.failure(Exception("Billing service not initialized"))
            }
            
            val product = _products.value.find { it.id == productId }
                ?: return Result.failure(Exception("Product not found: $productId"))
            
            _billingState.value = BillingState.PURCHASING
            
            // Simulate purchase flow
            // In production, this would launch BillingFlow
            val purchase = Purchase(
                id = "purchase_${System.currentTimeMillis()}",
                productId = productId,
                orderId = "order_${System.currentTimeMillis()}",
                purchaseTime = System.currentTimeMillis(),
                purchaseState = PurchaseState.PURCHASED,
                acknowledged = false,
                autoRenewing = product.type == ProductType.SUBSCRIPTION
            )
            
            _purchases.value = _purchases.value + purchase
            _billingState.value = BillingState.CONNECTED
            
            // If it's a subscription, add to subscriptions list
            if (product.type == ProductType.SUBSCRIPTION) {
                val subscription = Subscription(
                    id = "sub_${System.currentTimeMillis()}",
                    productId = productId,
                    purchaseId = purchase.id,
                    startTime = System.currentTimeMillis(),
                    expiryTime = System.currentTimeMillis() + getSubscriptionDuration(productId),
                    autoRenewing = true,
                    status = SubscriptionStatus.ACTIVE
                )
                _subscriptions.value = _subscriptions.value + subscription
            }
            
            Result.success(purchase)
        } catch (e: Exception) {
            _billingState.value = BillingState.ERROR
            Result.failure(e)
        }
    }
    
    /**
     * Acknowledge a purchase
     */
    suspend fun acknowledgePurchase(purchaseId: String): Result<Unit> {
        return try {
            val purchase = _purchases.value.find { it.id == purchaseId }
                ?: return Result.failure(Exception("Purchase not found: $purchaseId"))
            
            if (purchase.acknowledged) {
                return Result.success(Unit)
            }
            
            // Simulate acknowledgment
            // In production, use BillingClient.acknowledgePurchase()
            _purchases.value = _purchases.value.map {
                if (it.id == purchaseId) it.copy(acknowledged = true) else it
            }
            
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Consume a purchase (for consumable products)
     */
    suspend fun consumePurchase(purchaseId: String): Result<Unit> {
        return try {
            val purchase = _purchases.value.find { it.id == purchaseId }
                ?: return Result.failure(Exception("Purchase not found: $purchaseId"))
            
            // Simulate consumption
            // In production, use BillingClient.consumeAsync()
            _purchases.value = _purchases.value.filter { it.id != purchaseId }
            
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Upgrade or downgrade a subscription
     */
    suspend fun changeSubscription(
        oldProductId: String,
        newProductId: String
    ): Result<Subscription> {
        return try {
            val oldSubscription = _subscriptions.value.find { it.productId == oldProductId }
                ?: return Result.failure(Exception("Subscription not found: $oldProductId"))
            
            val newProduct = _products.value.find { it.id == newProductId }
                ?: return Result.failure(Exception("Product not found: $newProductId"))
            
            if (newProduct.type != ProductType.SUBSCRIPTION) {
                return Result.failure(Exception("New product must be a subscription"))
            }
            
            // Simulate subscription change
            // In production, use BillingFlowParams with subscription update params
            val newSubscription = oldSubscription.copy(
                id = "sub_${System.currentTimeMillis()}",
                productId = newProductId,
                expiryTime = System.currentTimeMillis() + getSubscriptionDuration(newProductId)
            )
            
            _subscriptions.value = _subscriptions.value.map {
                if (it.id == oldSubscription.id) newSubscription else it
            }
            
            Result.success(newSubscription)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Cancel a subscription
     */
    suspend fun cancelSubscription(subscriptionId: String): Result<Unit> {
        return try {
            val subscription = _subscriptions.value.find { it.id == subscriptionId }
                ?: return Result.failure(Exception("Subscription not found: $subscriptionId"))
            
            // Simulate subscription cancellation
            // Note: User must cancel through Google Play Store
            _subscriptions.value = _subscriptions.value.map {
                if (it.id == subscriptionId) {
                    it.copy(autoRenewing = false, status = SubscriptionStatus.CANCELLED)
                } else {
                    it
                }
            }
            
            Result.success(Unit)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Verify license validity
     */
    suspend fun verifyLicense(): Result<Boolean> {
        return try {
            // Placeholder: In production, use Google Play License Verification Library
            // This would verify the app's license with Google Play
            Result.success(true)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Check if user has an active premium subscription
     */
    fun hasPremiumSubscription(): Boolean {
        return _subscriptions.value.any { 
            it.status == SubscriptionStatus.ACTIVE && 
            it.expiryTime > System.currentTimeMillis()
        }
    }
    
    /**
     * Get active subscription
     */
    fun getActiveSubscription(): Subscription? {
        return _subscriptions.value.find {
            it.status == SubscriptionStatus.ACTIVE &&
            it.expiryTime > System.currentTimeMillis()
        }
    }
    
    /**
     * Apply promotional offer
     */
    suspend fun applyPromoCode(promoCode: String): Result<PromoOffer> {
        return try {
            // Placeholder: In production, validate promo code with backend
            val offer = PromoOffer(
                code = promoCode,
                discountPercentage = 20,
                validUntil = System.currentTimeMillis() + (30L * 24 * 60 * 60 * 1000), // 30 days
                applied = true
            )
            
            Result.success(offer)
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
    
    /**
     * Get purchase history
     */
    fun getPurchaseHistory(): List<Purchase> {
        return _purchases.value
    }
    
    /**
     * Get subscription by ID
     */
    fun getSubscription(subscriptionId: String): Subscription? {
        return _subscriptions.value.find { it.id == subscriptionId }
    }
    
    /**
     * Get product by ID
     */
    fun getProduct(productId: String): Product? {
        return _products.value.find { it.id == productId }
    }
    
    // Private helper methods
    
    private fun getSubscriptionDuration(productId: String): Long {
        return when {
            productId.contains("monthly") -> 30L * 24 * 60 * 60 * 1000 // 30 days
            productId.contains("yearly") -> 365L * 24 * 60 * 60 * 1000 // 365 days
            else -> 30L * 24 * 60 * 60 * 1000 // Default to 30 days
        }
    }
    
    /**
     * Disconnect from billing service
     */
    fun disconnect() {
        isInitialized = false
        _billingState.value = BillingState.DISCONNECTED
    }
}

// Data classes

data class Product(
    val id: String,
    val type: ProductType,
    val title: String,
    val description: String,
    val price: String,
    val priceMicros: Long,
    val currencyCode: String
)

enum class ProductType {
    IN_APP,
    SUBSCRIPTION
}

data class Purchase(
    val id: String,
    val productId: String,
    val orderId: String,
    val purchaseTime: Long,
    val purchaseState: PurchaseState,
    val acknowledged: Boolean,
    val autoRenewing: Boolean
)

enum class PurchaseState {
    PURCHASED,
    PENDING,
    CANCELLED
}

data class Subscription(
    val id: String,
    val productId: String,
    val purchaseId: String,
    val startTime: Long,
    val expiryTime: Long,
    val autoRenewing: Boolean,
    val status: SubscriptionStatus,
    val gracePeriodEnd: Long? = null
)

enum class SubscriptionStatus {
    ACTIVE,
    CANCELLED,
    EXPIRED,
    IN_GRACE_PERIOD,
    ON_HOLD
}

data class PromoOffer(
    val code: String,
    val discountPercentage: Int,
    val validUntil: Long,
    val applied: Boolean
)

enum class BillingState {
    DISCONNECTED,
    CONNECTING,
    CONNECTED,
    PURCHASING,
    ERROR
}
