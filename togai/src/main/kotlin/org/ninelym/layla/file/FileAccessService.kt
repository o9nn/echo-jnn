package org.ninelym.layla.file

import java.io.File
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*

/**
 * File Access and Permissions Service
 * 
 * Manages file access, permissions, and document processing for Layla.
 * Handles Android storage framework integration and file operations.
 * 
 * Features:
 * - Permission management
 * - File picker integration
 * - Document access (GET_CONTENT, OPEN_DOCUMENT, OPEN_DOCUMENT_TREE)
 * - Media file access (images, video, audio)
 * - File sharing and export
 */
class FileAccessService {
    
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    
    private val _permissionState = MutableStateFlow<Map<Permission, PermissionStatus>>(emptyMap())
    val permissionState: StateFlow<Map<Permission, PermissionStatus>> = _permissionState
    
    /**
     * Check if a permission is granted
     */
    fun isPermissionGranted(permission: Permission): Boolean {
        return _permissionState.value[permission] == PermissionStatus.GRANTED
    }
    
    /**
     * Request a permission
     * In actual Android implementation, this would trigger the permission request dialog
     */
    suspend fun requestPermission(permission: Permission): PermissionResult {
        return withContext(Dispatchers.Main) {
            // Stub: In actual implementation, would call Android permission APIs
            // ActivityCompat.requestPermissions(activity, arrayOf(permission.androidPermission), requestCode)
            
            // Simulate permission grant
            _permissionState.value = _permissionState.value + (permission to PermissionStatus.GRANTED)
            
            PermissionResult(
                permission = permission,
                granted = true,
                shouldShowRationale = false
            )
        }
    }
    
    /**
     * Open file picker for selecting a file
     */
    suspend fun pickFile(
        mimeTypes: List<String> = listOf("*/*"),
        allowMultiple: Boolean = false
    ): Result<List<FileInfo>> {
        return withContext(Dispatchers.IO) {
            try {
                // Check storage permission
                if (!isPermissionGranted(Permission.READ_MEDIA_IMAGES)) {
                    return@withContext Result.failure(
                        SecurityException("Storage permission not granted")
                    )
                }
                
                // Stub: In actual implementation, would launch file picker intent
                // val intent = Intent(Intent.ACTION_GET_CONTENT).apply {
                //     type = mimeTypes.firstOrNull() ?: "*/*"
                //     if (allowMultiple) putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true)
                //     if (mimeTypes.size > 1) putExtra(Intent.EXTRA_MIME_TYPES, mimeTypes.toTypedArray())
                // }
                // startActivityForResult(intent, PICK_FILE_REQUEST)
                
                // Return empty list as stub
                Result.success(emptyList())
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Open directory picker for selecting a directory
     */
    suspend fun pickDirectory(): Result<DirectoryInfo> {
        return withContext(Dispatchers.IO) {
            try {
                // Check storage permission
                if (!isPermissionGranted(Permission.READ_MEDIA_IMAGES)) {
                    return@withContext Result.failure(
                        SecurityException("Storage permission not granted")
                    )
                }
                
                // Stub: In actual implementation, would launch directory picker intent
                // val intent = Intent(Intent.ACTION_OPEN_DOCUMENT_TREE)
                // startActivityForResult(intent, PICK_DIRECTORY_REQUEST)
                
                Result.failure(NotImplementedError("Directory picker not implemented in stub"))
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Read file content
     */
    suspend fun readFile(path: String): Result<ByteArray> {
        return withContext(Dispatchers.IO) {
            try {
                val file = File(path)
                if (!file.exists()) {
                    return@withContext Result.failure(
                        IllegalArgumentException("File not found: $path")
                    )
                }
                
                if (!file.canRead()) {
                    return@withContext Result.failure(
                        SecurityException("Cannot read file: $path")
                    )
                }
                
                Result.success(file.readBytes())
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Read text file content
     */
    suspend fun readTextFile(path: String): Result<String> {
        return withContext(Dispatchers.IO) {
            try {
                val file = File(path)
                if (!file.exists()) {
                    return@withContext Result.failure(
                        IllegalArgumentException("File not found: $path")
                    )
                }
                
                Result.success(file.readText())
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Write file content
     */
    suspend fun writeFile(path: String, content: ByteArray): Result<Unit> {
        return withContext(Dispatchers.IO) {
            try {
                val file = File(path)
                
                // Create parent directories if needed
                file.parentFile?.mkdirs()
                
                file.writeBytes(content)
                Result.success(Unit)
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Write text file content
     */
    suspend fun writeTextFile(path: String, content: String): Result<Unit> {
        return withContext(Dispatchers.IO) {
            try {
                val file = File(path)
                
                // Create parent directories if needed
                file.parentFile?.mkdirs()
                
                file.writeText(content)
                Result.success(Unit)
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Delete file
     */
    suspend fun deleteFile(path: String): Result<Boolean> {
        return withContext(Dispatchers.IO) {
            try {
                val file = File(path)
                Result.success(file.delete())
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Get file information
     */
    suspend fun getFileInfo(path: String): Result<FileInfo> {
        return withContext(Dispatchers.IO) {
            try {
                val file = File(path)
                if (!file.exists()) {
                    return@withContext Result.failure(
                        IllegalArgumentException("File not found: $path")
                    )
                }
                
                val info = FileInfo(
                    path = file.absolutePath,
                    name = file.name,
                    size = file.length(),
                    isDirectory = file.isDirectory,
                    lastModified = file.lastModified(),
                    mimeType = getMimeType(file)
                )
                
                Result.success(info)
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * List files in directory
     */
    suspend fun listFiles(directoryPath: String): Result<List<FileInfo>> {
        return withContext(Dispatchers.IO) {
            try {
                val directory = File(directoryPath)
                if (!directory.exists()) {
                    return@withContext Result.failure(
                        IllegalArgumentException("Directory not found: $directoryPath")
                    )
                }
                
                if (!directory.isDirectory) {
                    return@withContext Result.failure(
                        IllegalArgumentException("Not a directory: $directoryPath")
                    )
                }
                
                val files = directory.listFiles()?.map { file ->
                    FileInfo(
                        path = file.absolutePath,
                        name = file.name,
                        size = file.length(),
                        isDirectory = file.isDirectory,
                        lastModified = file.lastModified(),
                        mimeType = getMimeType(file)
                    )
                } ?: emptyList()
                
                Result.success(files)
            } catch (e: Exception) {
                Result.failure(e)
            }
        }
    }
    
    /**
     * Share file with other apps
     */
    suspend fun shareFile(path: String): Result<Unit> {
        return withContext(Dispatchers.Main) {
            try {
                // Stub: In actual implementation, would create share intent
                // val file = File(path)
                // val uri = FileProvider.getUriForFile(context, "${context.packageName}.fileprovider", file)
                // val intent = Intent(Intent.ACTION_SEND).apply {
                //     type = getMimeType(file)
                //     putExtra(Intent.EXTRA_STREAM, uri)
                //     addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                // }
                // startActivity(Intent.createChooser(intent, "Share file"))
                
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
    
    private fun getMimeType(file: File): String {
        // Simple MIME type detection based on file extension
        return when (file.extension.lowercase()) {
            "txt" -> "text/plain"
            "pdf" -> "application/pdf"
            "jpg", "jpeg" -> "image/jpeg"
            "png" -> "image/png"
            "gif" -> "image/gif"
            "mp4" -> "video/mp4"
            "mp3" -> "audio/mpeg"
            "json" -> "application/json"
            "xml" -> "application/xml"
            "zip" -> "application/zip"
            else -> "application/octet-stream"
        }
    }
}

/**
 * Permissions that Layla requires
 */
enum class Permission(val androidPermission: String) {
    READ_MEDIA_IMAGES("android.permission.READ_MEDIA_IMAGES"),
    READ_MEDIA_VIDEO("android.permission.READ_MEDIA_VIDEO"),
    READ_MEDIA_AUDIO("android.permission.READ_MEDIA_AUDIO"),
    CAMERA("android.permission.CAMERA"),
    RECORD_AUDIO("android.permission.RECORD_AUDIO"),
    READ_CALENDAR("android.permission.READ_CALENDAR"),
    WRITE_CALENDAR("android.permission.WRITE_CALENDAR"),
    POST_NOTIFICATIONS("android.permission.POST_NOTIFICATIONS")
}

/**
 * Permission status
 */
enum class PermissionStatus {
    GRANTED,
    DENIED,
    NOT_REQUESTED
}

/**
 * Permission result
 */
data class PermissionResult(
    val permission: Permission,
    val granted: Boolean,
    val shouldShowRationale: Boolean
)

/**
 * File information
 */
data class FileInfo(
    val path: String,
    val name: String,
    val size: Long,
    val isDirectory: Boolean,
    val lastModified: Long,
    val mimeType: String
)

/**
 * Directory information
 */
data class DirectoryInfo(
    val path: String,
    val name: String,
    val fileCount: Int,
    val totalSize: Long
)
