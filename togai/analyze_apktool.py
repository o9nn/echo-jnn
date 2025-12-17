#!/usr/bin/env python3
"""
APKTool Configuration Analysis Script

This script analyzes APKTool YAML configuration files to extract insights about
Android applications including architecture, performance optimizations, security
features, and library dependencies.

Usage:
    python3 analyze_apktool.py [path_to_apktool.yml]
    
If no path is provided, it will look for 'src/apktool.yml' in the current directory.
"""

import yaml
import sys
import os
from collections import defaultdict, Counter
from pathlib import Path


class APKToolAnalyzer:
    """Analyzes APKTool configuration files for insights."""
    
    def __init__(self, config_path):
        """Initialize analyzer with APKTool config file path."""
        self.config_path = Path(config_path)
        self.config = {}
        self.load_config()
        
    def load_config(self):
        """Load and parse the APKTool YAML configuration."""
        try:
            with open(self.config_path, 'r', encoding='utf-8') as f:
                self.config = yaml.safe_load(f)
        except FileNotFoundError:
            print(f"Error: APKTool config file not found at {self.config_path}")
            sys.exit(1)
        except yaml.YAMLError as e:
            print(f"Error parsing YAML file: {e}")
            sys.exit(1)
            
    def analyze_metadata(self):
        """Analyze basic APK metadata."""
        print("=" * 60)
        print("APK METADATA ANALYSIS")
        print("=" * 60)
        
        # Basic info
        apk_name = self.config.get('apkFileName', 'Unknown')
        version_info = self.config.get('versionInfo', {})
        sdk_info = self.config.get('sdkInfo', {})
        
        print(f"APK File: {apk_name}")
        print(f"Version Name: {version_info.get('versionName', 'Unknown')}")
        print(f"Version Code: {version_info.get('versionCode', 'Unknown')}")
        print(f"Min SDK: {sdk_info.get('minSdkVersion', 'Unknown')} (Android {self.get_android_version(sdk_info.get('minSdkVersion'))})")
        print(f"Target SDK: {sdk_info.get('targetSdkVersion', 'Unknown')} (Android {self.get_android_version(sdk_info.get('targetSdkVersion'))})")
        
        # Distribution analysis
        if '-direct' in apk_name:
            print("📱 Distribution: Direct installation (non-Play Store)")
        else:
            print("📱 Distribution: Likely Play Store or enterprise")
            
        # Package analysis
        package_info = self.config.get('packageInfo', {})
        forced_id = package_info.get('forcedPackageId')
        if forced_id:
            print(f"📦 Package ID: {forced_id} (Custom package identifier)")
            
    def get_android_version(self, api_level):
        """Convert API level to Android version name."""
        api_versions = {
            28: "9.0", 29: "10", 30: "11", 31: "12", 32: "12L", 
            33: "13", 34: "14", 35: "14"
        }
        return api_versions.get(api_level, f"API {api_level}")
        
    def analyze_libraries(self):
        """Analyze library dependencies from doNotCompress entries."""
        print("\n" + "=" * 60)
        print("LIBRARY AND FRAMEWORK ANALYSIS")
        print("=" * 60)
        
        do_not_compress = self.config.get('doNotCompress', [])
        
        # Categorize META-INF entries
        androidx_libs = []
        google_libs = []
        kotlin_libs = []
        other_libs = []
        
        for entry in do_not_compress:
            if entry.startswith('META-INF/androidx.'):
                androidx_libs.append(entry)
            elif entry.startswith('META-INF/com.google.'):
                google_libs.append(entry)
            elif entry.startswith('META-INF/kotlinx_'):
                kotlin_libs.append(entry)
            elif entry.startswith('META-INF/') and '.version' in entry:
                other_libs.append(entry)
                
        print(f"📚 AndroidX Libraries: {len(androidx_libs)}")
        print(f"📚 Google Libraries: {len(google_libs)}")
        print(f"📚 Kotlin Libraries: {len(kotlin_libs)}")
        print(f"📚 Other Libraries: {len(other_libs)}")
        
        # Analyze specific framework usage
        self.analyze_jetpack_compose(androidx_libs)
        self.analyze_architecture_components(androidx_libs)
        self.analyze_kotlin_features(kotlin_libs)
        
    def analyze_jetpack_compose(self, androidx_libs):
        """Analyze Jetpack Compose usage."""
        compose_libs = [lib for lib in androidx_libs if 'compose' in lib]
        if compose_libs:
            print(f"\n🎨 Jetpack Compose Usage:")
            print(f"   Compose Libraries: {len(compose_libs)}")
            
            # Categorize compose libraries
            ui_libs = [lib for lib in compose_libs if 'ui' in lib]
            animation_libs = [lib for lib in compose_libs if 'animation' in lib]
            foundation_libs = [lib for lib in compose_libs if 'foundation' in lib]
            runtime_libs = [lib for lib in compose_libs if 'runtime' in lib]
            
            if ui_libs:
                print(f"   UI Components: {len(ui_libs)}")
            if animation_libs:
                print(f"   Animation Support: {len(animation_libs)}")
            if foundation_libs:
                print(f"   Foundation Components: {len(foundation_libs)}")
            if runtime_libs:
                print(f"   Runtime Features: {len(runtime_libs)}")
                
    def analyze_architecture_components(self, androidx_libs):
        """Analyze Android Architecture Components usage."""
        arch_components = {
            'lifecycle': 'Lifecycle Management',
            'viewmodel': 'ViewModel Pattern',
            'livedata': 'LiveData Observables',
            'room': 'Room Database',
            'work': 'WorkManager',
            'fragment': 'Fragment Architecture',
            'recyclerview': 'RecyclerView',
            'biometric': 'Biometric Auth'
        }
        
        found_components = {}
        for component, description in arch_components.items():
            matching_libs = [lib for lib in androidx_libs if component in lib]
            if matching_libs:
                found_components[description] = len(matching_libs)
                
        if found_components:
            print(f"\n🏗️ Architecture Components:")
            for component, count in found_components.items():
                print(f"   {component}: {count} libraries")
                
    def analyze_kotlin_features(self, kotlin_libs):
        """Analyze Kotlin-specific features."""
        if kotlin_libs:
            print(f"\n🔧 Kotlin Features:")
            for lib in kotlin_libs:
                if 'coroutines' in lib:
                    if 'android' in lib:
                        print("   Kotlin Coroutines (Android)")
                    else:
                        print("   Kotlin Coroutines (Core)")
                        
    def analyze_performance_optimization(self):
        """Analyze performance optimization strategies."""
        print("\n" + "=" * 60)
        print("PERFORMANCE OPTIMIZATION ANALYSIS")
        print("=" * 60)
        
        do_not_compress = self.config.get('doNotCompress', [])
        
        # Categorize file types
        file_categories = defaultdict(list)
        
        for entry in do_not_compress:
            if entry.endswith(('.prof', '.profm')):
                file_categories['Performance Profiles'].append(entry)
            elif entry.endswith(('.so', '.dex')):
                file_categories['Binary Files'].append(entry)
            elif entry.endswith(('.png', '.jpg', '.gif', '.wav')):
                file_categories['Media Files'].append(entry)
            elif entry.endswith('.gz'):
                file_categories['Pre-compressed'].append(entry)
            elif entry.endswith('.lottie'):
                file_categories['Lottie Animations'].append(entry)
            elif entry.endswith('.riv'):
                file_categories['Rive Animations'].append(entry)
            elif 'META-INF' in entry:
                file_categories['Metadata'].append(entry)
            else:
                file_categories['Other Assets'].append(entry)
                
        print("📊 Compression Exclusions by Category:")
        for category, files in file_categories.items():
            print(f"   {category}: {len(files)} files")
            
        # Specific optimizations
        if file_categories['Performance Profiles']:
            print("\n⚡ Performance Optimizations Detected:")
            print("   DEX Optimization Profiles (faster app startup)")
            
        if file_categories['Pre-compressed']:
            print("   Pre-compressed assets (network efficiency)")
            
        if file_categories['Lottie Animations'] or file_categories['Rive Animations']:
            total_animations = len(file_categories['Lottie Animations']) + len(file_categories['Rive Animations'])
            print(f"   Advanced Animations: {total_animations} files")
            
    def analyze_features_and_capabilities(self):
        """Analyze app features and capabilities."""
        print("\n" + "=" * 60)
        print("FEATURES AND CAPABILITIES ANALYSIS")
        print("=" * 60)
        
        do_not_compress = self.config.get('doNotCompress', [])
        
        features = []
        
        # Check for specific capabilities
        for entry in do_not_compress:
            if 'billing' in entry.lower():
                features.append("💰 In-app Billing/Purchases")
            elif 'lottie' in entry.lower():
                features.append("🎬 Advanced Animations (Lottie)")
            elif '.riv' in entry:
                features.append("🎬 Rive Animations")
            elif 'jackson' in entry:
                features.append("📊 JSON Data Processing")
            elif 'okhttp' in entry:
                features.append("🌐 HTTP Networking")
                
        # Character analysis from Lottie files
        lottie_files = [entry for entry in do_not_compress if 'lottie' in entry]
        if lottie_files:
            character_names = []
            for lottie_file in lottie_files:
                # Extract character names from file paths
                filename = lottie_file.split('/')[-1].replace('.lottie', '')
                if 'lottie_' in filename:
                    character = filename.split('lottie_')[-1]
                    character_names.append(character.title())
                    
            if character_names:
                features.append(f"👥 Character-based UI: {', '.join(character_names)}")
                
        # Remove duplicates and display
        unique_features = list(set(features))
        if unique_features:
            print("🚀 Detected Features:")
            for feature in unique_features:
                print(f"   {feature}")
        else:
            print("No specific features detected from configuration.")
            
    def analyze_security_aspects(self):
        """Analyze security-related aspects."""
        print("\n" + "=" * 60)
        print("SECURITY ANALYSIS")
        print("=" * 60)
        
        do_not_compress = self.config.get('doNotCompress', [])
        sdk_info = self.config.get('sdkInfo', {})
        
        security_features = []
        
        # SDK version security
        target_sdk = sdk_info.get('targetSdkVersion', 0)
        if target_sdk >= 33:
            security_features.append("🔒 Modern Android Security (API 33+)")
        elif target_sdk >= 30:
            security_features.append("🔒 Enhanced Security (API 30+)")
            
        # Check for security-related libraries
        for entry in do_not_compress:
            if 'biometric' in entry:
                security_features.append("👆 Biometric Authentication")
            elif 'publicsuffix' in entry:
                security_features.append("🛡️ Domain Validation Security")
            elif 'billing' in entry and 'registration' in entry:
                security_features.append("💳 Secure Payment Processing")
                
        # Distribution security
        apk_name = self.config.get('apkFileName', '')
        if '-direct' in apk_name:
            print("⚠️  Direct Installation Security Considerations:")
            print("   Manual security verification required")
            print("   Bypasses Play Store security scanning")
            
        if security_features:
            print("\n🔐 Security Features:")
            for feature in security_features:
                print(f"   {feature}")
                
    def generate_summary(self):
        """Generate executive summary of findings."""
        print("\n" + "=" * 60)
        print("EXECUTIVE SUMMARY")
        print("=" * 60)
        
        version_info = self.config.get('versionInfo', {})
        sdk_info = self.config.get('sdkInfo', {})
        do_not_compress = self.config.get('doNotCompress', [])
        
        # Application maturity
        version_code = version_info.get('versionCode', 0)
        if version_code > 100:
            maturity = "Mature (extensive development cycles)"
        elif version_code > 50:
            maturity = "Established (moderate development)"
        else:
            maturity = "Early stage"
            
        # Architecture sophistication
        androidx_count = len([e for e in do_not_compress if 'androidx' in e])
        if androidx_count > 50:
            architecture = "Highly sophisticated (modern Android architecture)"
        elif androidx_count > 20:
            architecture = "Well-architected (good practices)"
        else:
            architecture = "Basic architecture"
            
        # Performance focus
        perf_files = len([e for e in do_not_compress if any(ext in e for ext in ['.prof', '.profm', '.gz'])])
        if perf_files > 3:
            performance = "Performance-optimized"
        else:
            performance = "Standard performance"
            
        print(f"📱 Application Maturity: {maturity}")
        print(f"🏗️ Architecture Level: {architecture}")
        print(f"⚡ Performance Focus: {performance}")
        print(f"📊 Total Libraries: {androidx_count} AndroidX components")
        print(f"🎯 Target Market: {self.get_target_market()}")
        
    def get_target_market(self):
        """Determine likely target market based on features."""
        do_not_compress = self.config.get('doNotCompress', [])
        
        has_animations = any('lottie' in e or '.riv' in e for e in do_not_compress)
        has_billing = any('billing' in e for e in do_not_compress)
        has_characters = any('lottie_' in e for e in do_not_compress)
        
        if has_characters and has_animations:
            return "Consumer AI Assistant/Entertainment"
        elif has_billing:
            return "Commercial/Premium Application"
        elif has_animations:
            return "Consumer-focused with rich UI"
        else:
            return "General purpose application"
            
    def run_analysis(self):
        """Run complete analysis and generate report."""
        print("APKTool Configuration Analysis Report")
        print(f"Generated for: {self.config_path}")
        print()
        
        self.analyze_metadata()
        self.analyze_libraries()
        self.analyze_performance_optimization()
        self.analyze_features_and_capabilities()
        self.analyze_security_aspects()
        self.generate_summary()
        
        print("\n" + "=" * 60)
        print("Analysis Complete")
        print("=" * 60)


def main():
    """Main entry point for the analysis script."""
    # Determine config file path
    if len(sys.argv) > 1:
        config_path = sys.argv[1]
    else:
        config_path = "src/apktool.yml"
        
    # Check if file exists
    if not os.path.exists(config_path):
        print(f"APKTool config file not found: {config_path}")
        print("Usage: python3 analyze_apktool.py [path_to_apktool.yml]")
        sys.exit(1)
        
    # Run analysis
    analyzer = APKToolAnalyzer(config_path)
    analyzer.run_analysis()


if __name__ == "__main__":
    main()