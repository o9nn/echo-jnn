package org.ninelym.layla.auth

import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import java.security.MessageDigest
import java.util.UUID

/**
 * Authentication Service
 * 
 * Manages user authentication, session management, and token storage.
 * Integrates with Auth0 and OpenID AppAuth for secure authentication.
 * 
 * Features:
 * - OAuth 2.0 / OIDC authentication
 * - Secure token storage
 * - Session management
 * - Biometric authentication support
 * - Multi-device sync (optional)
 */
class AuthenticationService {
    
    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    
    private val _authState = MutableStateFlow<AuthState>(AuthState.Unauthenticated)
    val authState: StateFlow<AuthState> = _authState
    
    private val _currentUser = MutableStateFlow<User?>(null)
    val currentUser: StateFlow<User?> = _currentUser
    
    private var sessionToken: String? = null
    private var refreshToken: String? = null
    
    /**
     * Initialize authentication service
     */
    suspend fun initialize(): Result<Unit> {
        return withContext(Dispatchers.IO) {
            try {
                // Check for saved session
                val savedSession = loadSavedSession()
                if (savedSession != null) {
                    // Validate saved session
                    val valid = validateSession(savedSession)
                    if (valid) {
                        sessionToken = savedSession.accessToken
                        refreshToken = savedSession.refreshToken
                        _currentUser.value = savedSession.user
                        _authState.value = AuthState.Authenticated(savedSession.user)
                    } else {
                        // Try to refresh token
                        refreshSession(savedSession)
                    }
                }
                
                Result.success(Unit)
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Sign in with email and password
     * Stub implementation - would integrate with Auth0 in production
     */
    suspend fun signIn(email: String, password: String): Result<User> {
        return withContext(Dispatchers.IO) {
            try {
                _authState.value = AuthState.Authenticating
                
                // Stub: In actual implementation, would call Auth0 API
                // val auth0 = Auth0(clientId, domain)
                // val result = auth0.login(email, password)
                
                // Simulate authentication
                delay(500)
                
                // Create user
                val user = User(
                    id = UUID.randomUUID().toString(),
                    email = email,
                    name = extractNameFromEmail(email),
                    createdAt = System.currentTimeMillis()
                )
                
                // Generate tokens
                sessionToken = generateToken()
                refreshToken = generateToken()
                
                // Save session
                saveSession(
                    Session(
                        user = user,
                        accessToken = sessionToken!!,
                        refreshToken = refreshToken!!,
                        expiresAt = System.currentTimeMillis() + (24 * 60 * 60 * 1000) // 24 hours
                    )
                )
                
                _currentUser.value = user
                _authState.value = AuthState.Authenticated(user)
                
                Result.success(user)
            } catch (e: Exception) {
                _authState.value = AuthState.Error(e.message ?: "Authentication failed")
                Result.failure(e)
            }
        }
    }
    
    /**
     * Sign in with OAuth provider (Google, GitHub, etc.)
     */
    suspend fun signInWithOAuth(provider: OAuthProvider): Result<User> {
        return withContext(Dispatchers.Main) {
            try {
                _authState.value = AuthState.Authenticating
                
                // Stub: In actual implementation, would launch OAuth flow
                // val auth0 = Auth0(clientId, domain)
                // val result = auth0.loginWithOAuth(provider.name)
                
                // Simulate OAuth flow
                delay(1000)
                
                val user = User(
                    id = UUID.randomUUID().toString(),
                    email = "user@${provider.name.lowercase()}.com",
                    name = "OAuth User",
                    createdAt = System.currentTimeMillis(),
                    oauthProvider = provider
                )
                
                sessionToken = generateToken()
                refreshToken = generateToken()
                
                saveSession(
                    Session(
                        user = user,
                        accessToken = sessionToken!!,
                        refreshToken = refreshToken!!,
                        expiresAt = System.currentTimeMillis() + (24 * 60 * 60 * 1000)
                    )
                )
                
                _currentUser.value = user
                _authState.value = AuthState.Authenticated(user)
                
                Result.success(user)
            } catch (e: Exception) {
                _authState.value = AuthState.Error(e.message ?: "OAuth authentication failed")
                Result.failure(e)
            }
        }
    }
    
    /**
     * Sign up new user
     */
    suspend fun signUp(email: String, password: String, name: String): Result<User> {
        return withContext(Dispatchers.IO) {
            try {
                _authState.value = AuthState.Authenticating
                
                // Validate email and password
                if (!isValidEmail(email)) {
                    return@withContext Result.failure(
                        IllegalArgumentException("Invalid email address")
                    )
                }
                
                if (password.length < 8) {
                    return@withContext Result.failure(
                        IllegalArgumentException("Password must be at least 8 characters")
                    )
                }
                
                // Stub: In actual implementation, would call Auth0 API
                // val auth0 = Auth0(clientId, domain)
                // val result = auth0.signup(email, password, name)
                
                delay(500)
                
                val user = User(
                    id = UUID.randomUUID().toString(),
                    email = email,
                    name = name,
                    createdAt = System.currentTimeMillis()
                )
                
                sessionToken = generateToken()
                refreshToken = generateToken()
                
                saveSession(
                    Session(
                        user = user,
                        accessToken = sessionToken!!,
                        refreshToken = refreshToken!!,
                        expiresAt = System.currentTimeMillis() + (24 * 60 * 60 * 1000)
                    )
                )
                
                _currentUser.value = user
                _authState.value = AuthState.Authenticated(user)
                
                Result.success(user)
            } catch (e: Exception) {
                _authState.value = AuthState.Error(e.message ?: "Sign up failed")
                Result.failure(e)
            }
        }
    }
    
    /**
     * Sign out current user
     */
    suspend fun signOut(): Result<Unit> {
        return withContext(Dispatchers.IO) {
            try {
                // Clear tokens
                sessionToken = null
                refreshToken = null
                
                // Clear saved session
                clearSavedSession()
                
                _currentUser.value = null
                _authState.value = AuthState.Unauthenticated
                
                Result.success(Unit)
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Get current access token
     */
    fun getAccessToken(): String? {
        return sessionToken
    }
    
    /**
     * Check if user is authenticated
     */
    fun isAuthenticated(): Boolean {
        return _authState.value is AuthState.Authenticated
    }
    
    /**
     * Authenticate with biometrics
     */
    suspend fun authenticateWithBiometrics(): Result<Unit> {
        return withContext(Dispatchers.Main) {
            try {
                // Stub: In actual implementation, would use BiometricPrompt
                // val biometricPrompt = BiometricPrompt(activity, executor, callback)
                // val promptInfo = BiometricPrompt.PromptInfo.Builder()
                //     .setTitle("Authenticate with Layla")
                //     .setSubtitle("Use your fingerprint or face")
                //     .setNegativeButtonText("Cancel")
                //     .build()
                // biometricPrompt.authenticate(promptInfo)
                
                delay(500)
                Result.success(Unit)
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Shutdown the service
     */
    fun shutdown() {
        scope.cancel()
    }
    
    // Private helper methods
    
    private fun loadSavedSession(): Session? {
        // Stub: Would load from secure storage (EncryptedSharedPreferences)
        return null
    }
    
    private fun saveSession(session: Session) {
        // Stub: Would save to secure storage (EncryptedSharedPreferences)
    }
    
    private fun clearSavedSession() {
        // Stub: Would clear from secure storage
    }
    
    private fun validateSession(session: Session): Boolean {
        return session.expiresAt > System.currentTimeMillis()
    }
    
    private suspend fun refreshSession(session: Session) {
        // Stub: Would call Auth0 refresh token API
        try {
            delay(500)
            
            sessionToken = generateToken()
            
            val refreshedSession = session.copy(
                accessToken = sessionToken!!,
                expiresAt = System.currentTimeMillis() + (24 * 60 * 60 * 1000)
            )
            
            saveSession(refreshedSession)
            _currentUser.value = session.user
            _authState.value = AuthState.Authenticated(session.user)
        } catch (e: Exception) {
            _authState.value = AuthState.Unauthenticated
        }
    }
    
    private fun generateToken(): String {
        val random = UUID.randomUUID().toString()
        val bytes = random.toByteArray()
        val digest = MessageDigest.getInstance("SHA-256")
        val hash = digest.digest(bytes)
        return hash.joinToString("") { "%02x".format(it) }
    }
    
    private fun extractNameFromEmail(email: String): String {
        return email.substringBefore("@").replace(".", " ").split(" ")
            .joinToString(" ") { it.capitalize() }
    }
    
    private fun isValidEmail(email: String): Boolean {
        return email.contains("@") && email.contains(".")
    }
}

/**
 * Authentication state
 */
sealed class AuthState {
    object Unauthenticated : AuthState()
    object Authenticating : AuthState()
    data class Authenticated(val user: User) : AuthState()
    data class Error(val message: String) : AuthState()
}

/**
 * User model
 */
data class User(
    val id: String,
    val email: String,
    val name: String,
    val createdAt: Long,
    val profileImageUrl: String? = null,
    val oauthProvider: OAuthProvider? = null
)

/**
 * Session model
 */
data class Session(
    val user: User,
    val accessToken: String,
    val refreshToken: String,
    val expiresAt: Long
)

/**
 * OAuth providers
 */
enum class OAuthProvider {
    GOOGLE,
    GITHUB,
    APPLE,
    MICROSOFT
}
