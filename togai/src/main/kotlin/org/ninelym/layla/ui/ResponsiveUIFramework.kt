package org.ninelym.layla.ui

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Responsive UI Framework for adaptive layouts across different screen sizes and orientations.
 * Provides utilities for responsive design, accessibility, and smooth transitions.
 */
class ResponsiveUIFramework {
    
    private val _currentScreenConfig = MutableStateFlow(ScreenConfiguration())
    val currentScreenConfig: StateFlow<ScreenConfiguration> = _currentScreenConfig.asStateFlow()
    
    private val _accessibilityConfig = MutableStateFlow(AccessibilityConfiguration())
    val accessibilityConfig: StateFlow<AccessibilityConfiguration> = _accessibilityConfig.asStateFlow()
    
    /**
     * Initialize the responsive UI framework with screen dimensions
     */
    fun initialize(widthPx: Int, heightPx: Int, densityDpi: Int) {
        val screenSize = determineScreenSize(widthPx, heightPx, densityDpi)
        val orientation = if (widthPx > heightPx) Orientation.LANDSCAPE else Orientation.PORTRAIT
        
        _currentScreenConfig.value = ScreenConfiguration(
            widthPx = widthPx,
            heightPx = heightPx,
            densityDpi = densityDpi,
            screenSize = screenSize,
            orientation = orientation
        )
    }
    
    /**
     * Determine screen size category based on dimensions
     */
    private fun determineScreenSize(widthPx: Int, heightPx: Int, densityDpi: Int): ScreenSize {
        val widthDp = (widthPx * 160) / densityDpi
        val heightDp = (heightPx * 160) / densityDpi
        val smallestDp = minOf(widthDp, heightDp)
        
        return when {
            smallestDp >= 960 -> ScreenSize.XLARGE  // Tablet (large)
            smallestDp >= 720 -> ScreenSize.LARGE   // Tablet (medium)
            smallestDp >= 600 -> ScreenSize.MEDIUM  // Tablet (small) or phablet
            smallestDp >= 480 -> ScreenSize.NORMAL  // Phone (large)
            else -> ScreenSize.SMALL                // Phone (small)
        }
    }
    
    /**
     * Update accessibility configuration
     */
    fun updateAccessibilityConfig(config: AccessibilityConfiguration) {
        _accessibilityConfig.value = config
    }
    
    /**
     * Get recommended layout parameters for current screen
     */
    fun getLayoutParams(): LayoutParams {
        val config = _currentScreenConfig.value
        val accessibility = _accessibilityConfig.value
        
        return when (config.screenSize) {
            ScreenSize.SMALL -> LayoutParams(
                columnCount = 1,
                contentPadding = 16,
                itemSpacing = 12,
                fontSize = if (accessibility.largeText) 18f else 14f,
                maxContentWidth = Int.MAX_VALUE
            )
            ScreenSize.NORMAL -> LayoutParams(
                columnCount = 1,
                contentPadding = 20,
                itemSpacing = 16,
                fontSize = if (accessibility.largeText) 20f else 16f,
                maxContentWidth = Int.MAX_VALUE
            )
            ScreenSize.MEDIUM -> LayoutParams(
                columnCount = if (config.orientation == Orientation.LANDSCAPE) 2 else 1,
                contentPadding = 24,
                itemSpacing = 20,
                fontSize = if (accessibility.largeText) 22f else 18f,
                maxContentWidth = 1200
            )
            ScreenSize.LARGE -> LayoutParams(
                columnCount = 2,
                contentPadding = 32,
                itemSpacing = 24,
                fontSize = if (accessibility.largeText) 24f else 20f,
                maxContentWidth = 1440
            )
            ScreenSize.XLARGE -> LayoutParams(
                columnCount = 3,
                contentPadding = 40,
                itemSpacing = 32,
                fontSize = if (accessibility.largeText) 26f else 22f,
                maxContentWidth = 1920
            )
        }
    }
    
    /**
     * Get animation duration based on accessibility settings
     */
    fun getAnimationDuration(baseMs: Long): Long {
        return if (_accessibilityConfig.value.reduceMotion) {
            baseMs / 3  // Reduce animation duration significantly
        } else {
            baseMs
        }
    }
    
    /**
     * Get contrast ratio for colors
     */
    fun getColorContrast(foreground: Int, background: Int): Double {
        val fgLuminance = getRelativeLuminance(foreground)
        val bgLuminance = getRelativeLuminance(background)
        
        val lighter = maxOf(fgLuminance, bgLuminance)
        val darker = minOf(fgLuminance, bgLuminance)
        
        return (lighter + 0.05) / (darker + 0.05)
    }
    
    /**
     * Calculate relative luminance for WCAG contrast ratio
     */
    private fun getRelativeLuminance(color: Int): Double {
        val r = ((color shr 16) and 0xFF) / 255.0
        val g = ((color shr 8) and 0xFF) / 255.0
        val b = (color and 0xFF) / 255.0
        
        val rLinear = if (r <= 0.03928) r / 12.92 else Math.pow((r + 0.055) / 1.055, 2.4)
        val gLinear = if (g <= 0.03928) g / 12.92 else Math.pow((g + 0.055) / 1.055, 2.4)
        val bLinear = if (b <= 0.03928) b / 12.92 else Math.pow((b + 0.055) / 1.055, 2.4)
        
        return 0.2126 * rLinear + 0.7152 * gLinear + 0.0722 * bLinear
    }
    
    /**
     * Check if color combination meets WCAG AA standard (4.5:1)
     */
    fun meetsWCAGAA(foreground: Int, background: Int): Boolean {
        return getColorContrast(foreground, background) >= 4.5
    }
    
    /**
     * Check if color combination meets WCAG AAA standard (7:1)
     */
    fun meetsWCAGAAA(foreground: Int, background: Int): Boolean {
        return getColorContrast(foreground, background) >= 7.0
    }
    
    /**
     * Get adjusted colors for high contrast mode
     */
    fun getHighContrastColors(isDarkMode: Boolean): ColorScheme {
        return if (_accessibilityConfig.value.highContrast) {
            if (isDarkMode) {
                ColorScheme(
                    background = 0xFF000000.toInt(),  // Pure black
                    foreground = 0xFFFFFFFF.toInt(),  // Pure white
                    primary = 0xFF00FFFF.toInt(),     // Bright cyan
                    secondary = 0xFFFFFF00.toInt(),   // Bright yellow
                    accent = 0xFFFF00FF.toInt()       // Bright magenta
                )
            } else {
                ColorScheme(
                    background = 0xFFFFFFFF.toInt(),  // Pure white
                    foreground = 0xFF000000.toInt(),  // Pure black
                    primary = 0xFF0000FF.toInt(),     // Pure blue
                    secondary = 0xFFFF0000.toInt(),   // Pure red
                    accent = 0xFF00AA00.toInt()       // Dark green
                )
            }
        } else {
            // Default colors (would be replaced with theme colors)
            if (isDarkMode) {
                ColorScheme(
                    background = 0xFF1A1A1A.toInt(),
                    foreground = 0xFFE0E0E0.toInt(),
                    primary = 0xFF6200EE.toInt(),
                    secondary = 0xFF03DAC6.toInt(),
                    accent = 0xFFBB86FC.toInt()
                )
            } else {
                ColorScheme(
                    background = 0xFFFAFAFA.toInt(),
                    foreground = 0xFF212121.toInt(),
                    primary = 0xFF6200EE.toInt(),
                    secondary = 0xFF03DAC6.toInt(),
                    accent = 0xFF018786.toInt()
                )
            }
        }
    }
}

/**
 * Screen configuration data
 */
data class ScreenConfiguration(
    val widthPx: Int = 1080,
    val heightPx: Int = 1920,
    val densityDpi: Int = 420,
    val screenSize: ScreenSize = ScreenSize.NORMAL,
    val orientation: Orientation = Orientation.PORTRAIT
)

/**
 * Screen size categories
 */
enum class ScreenSize {
    SMALL,      // < 480dp
    NORMAL,     // >= 480dp
    MEDIUM,     // >= 600dp
    LARGE,      // >= 720dp
    XLARGE      // >= 960dp
}

/**
 * Screen orientation
 */
enum class Orientation {
    PORTRAIT,
    LANDSCAPE
}

/**
 * Accessibility configuration
 */
data class AccessibilityConfiguration(
    val largeText: Boolean = false,
    val highContrast: Boolean = false,
    val reduceMotion: Boolean = false,
    val screenReaderEnabled: Boolean = false,
    val hapticFeedback: Boolean = true,
    val audioDescriptions: Boolean = false
)

/**
 * Layout parameters for responsive design
 */
data class LayoutParams(
    val columnCount: Int,
    val contentPadding: Int,
    val itemSpacing: Int,
    val fontSize: Float,
    val maxContentWidth: Int
)

/**
 * Color scheme for theming
 */
data class ColorScheme(
    val background: Int,
    val foreground: Int,
    val primary: Int,
    val secondary: Int,
    val accent: Int
)

/**
 * Animation configuration
 */
data class AnimationConfig(
    val duration: Long,
    val enabled: Boolean
) {
    companion object {
        const val FAST = 150L
        const val NORMAL = 300L
        const val SLOW = 500L
    }
}
