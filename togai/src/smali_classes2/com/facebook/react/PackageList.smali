.class public Lcom/facebook/react/PackageList;
.super Ljava/lang/Object;
.source "PackageList.java"


# instance fields
.field private application:Landroid/app/Application;

.field private mConfig:Lcom/facebook/react/shell/MainPackageConfig;

.field private reactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/PackageList;-><init>(Landroid/app/Application;Lcom/facebook/react/shell/MainPackageConfig;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/facebook/react/shell/MainPackageConfig;)V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    iput-object p1, p0, Lcom/facebook/react/PackageList;->application:Landroid/app/Application;

    iput-object p2, p0, Lcom/facebook/react/PackageList;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/ReactNativeHost;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;Lcom/facebook/react/shell/MainPackageConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/ReactNativeHost;Lcom/facebook/react/shell/MainPackageConfig;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    iput-object p2, p0, Lcom/facebook/react/PackageList;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    return-void
.end method

.method private getApplication()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/PackageList;->application:Landroid/app/Application;

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 131
    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    iget-object v0, p0, Lcom/facebook/react/PackageList;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/facebook/react/PackageList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPackages()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    new-array v1, v1, [Lcom/facebook/react/ReactPackage;

    new-instance v2, Lcom/facebook/react/shell/MainReactPackage;

    iget-object v3, p0, Lcom/facebook/react/PackageList;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    invoke-direct {v2, v3}, Lcom/facebook/react/shell/MainReactPackage;-><init>(Lcom/facebook/react/shell/MainPackageConfig;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/capslock/RNDeviceBrightness/RNDeviceBrightness;

    invoke-direct {v2}, Lorg/capslock/RNDeviceBrightness/RNDeviceBrightness;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/eko/RNBackgroundDownloaderPackage;

    invoke-direct {v2}, Lcom/eko/RNBackgroundDownloaderPackage;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/klarna/vectordrawable/VectorDrawablePackage;

    invoke-direct {v2}, Lcom/klarna/vectordrawable/VectorDrawablePackage;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lio/invertase/notifee/NotifeePackage;

    invoke-direct {v2}, Lio/invertase/notifee/NotifeePackage;-><init>()V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/asyncstorage/AsyncStoragePackage;-><init>()V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativecommunity/blurview/BlurViewPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/blurview/BlurViewPackage;-><init>()V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativecommunity/checkbox/ReactCheckBoxPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/checkbox/ReactCheckBoxPackage;-><init>()V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativecommunity/picker/RNCPickerPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/picker/RNCPickerPackage;-><init>()V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lcom/wenkesj/voice/VoicePackage;

    invoke-direct {v2}, Lcom/wenkesj/voice/VoicePackage;-><init>()V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lexpo/modules/ExpoModulesPackage;

    invoke-direct {v2}, Lexpo/modules/ExpoModulesPackage;-><init>()V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/airbnb/android/react/lottie/LottiePackage;

    invoke-direct {v2}, Lcom/airbnb/android/react/lottie/LottiePackage;-><init>()V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lai/onnxruntime/reactnative/OnnxruntimePackage;

    invoke-direct {v2}, Lai/onnxruntime/reactnative/OnnxruntimePackage;-><init>()V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/rnappauth/RNAppAuthPackage;

    invoke-direct {v2}, Lcom/rnappauth/RNAppAuthPackage;-><init>()V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/auth0/react/A0Auth0Package;

    invoke-direct {v2}, Lcom/auth0/react/A0Auth0Package;-><init>()V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchPackage;

    invoke-direct {v2}, Lcom/transistorsoft/rnbackgroundfetch/RNBackgroundFetchPackage;-><init>()V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/calendarevents/RNCalendarEventsPackage;

    invoke-direct {v2}, Lcom/calendarevents/RNCalendarEventsPackage;-><init>()V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;

    invoke-direct {v2}, Lcom/learnium/RNDeviceInfo/RNDeviceInfo;-><init>()V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativedocumentpicker/RNDocumentPickerPackage;

    invoke-direct {v2}, Lcom/reactnativedocumentpicker/RNDocumentPickerPackage;-><init>()V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/rnfs/RNFSPackage;

    invoke-direct {v2}, Lcom/rnfs/RNFSPackage;-><init>()V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/gesturehandler/RNGestureHandlerPackage;

    invoke-direct {v2}, Lcom/swmansion/gesturehandler/RNGestureHandlerPackage;-><init>()V

    const/16 v3, 0x14

    aput-object v2, v1, v3

    new-instance v2, Lcom/dooboolab/rniap/RNIapPackage;

    invoke-direct {v2}, Lcom/dooboolab/rniap/RNIapPackage;-><init>()V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    new-instance v2, Lcom/imagepicker/ImagePickerPackage;

    invoke-direct {v2}, Lcom/imagepicker/ImagePickerPackage;-><init>()V

    const/16 v3, 0x16

    aput-object v2, v1, v3

    new-instance v2, Lcom/BV/LinearGradient/LinearGradientPackage;

    invoke-direct {v2}, Lcom/BV/LinearGradient/LinearGradientPackage;-><init>()V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    new-instance v2, Lcom/zoontek/rnlocalize/RNLocalizePackage;

    invoke-direct {v2}, Lcom/zoontek/rnlocalize/RNLocalizePackage;-><init>()V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    new-instance v2, Lnl/skillnation/perfstats/PerformanceStatsPackage;

    invoke-direct {v2}, Lnl/skillnation/perfstats/PerformanceStatsPackage;-><init>()V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    new-instance v2, Lcom/zoontek/rnpermissions/RNPermissionsPackage;

    invoke-direct {v2}, Lcom/zoontek/rnpermissions/RNPermissionsPackage;-><init>()V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    new-instance v2, Lim/shimo/react/prompt/RNPromptPackage;

    invoke-direct {v2}, Lim/shimo/react/prompt/RNPromptPackage;-><init>()V

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    new-instance v2, Lcom/rararchive/RarArchivePackage;

    invoke-direct {v2}, Lcom/rararchive/RarArchivePackage;-><init>()V

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/reanimated/ReanimatedPackage;

    invoke-direct {v2}, Lcom/swmansion/reanimated/ReanimatedPackage;-><init>()V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    new-instance v2, Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage;

    invoke-direct {v2}, Lcom/th3rdwave/safeareacontext/SafeAreaContextPackage;-><init>()V

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/rnscreens/RNScreensPackage;

    invoke-direct {v2}, Lcom/swmansion/rnscreens/RNScreensPackage;-><init>()V

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    new-instance v2, Lcl/json/RNSharePackage;

    invoke-direct {v2}, Lcl/json/RNSharePackage;-><init>()V

    const/16 v3, 0x20

    aput-object v2, v1, v3

    new-instance v2, Lcom/zmxv/RNSound/RNSoundPackage;

    invoke-direct {v2}, Lcom/zmxv/RNSound/RNSoundPackage;-><init>()V

    const/16 v3, 0x21

    aput-object v2, v1, v3

    new-instance v2, Lorg/pgsqlite/SQLitePluginPackage;

    invoke-direct {v2}, Lorg/pgsqlite/SQLitePluginPackage;-><init>()V

    const/16 v3, 0x22

    aput-object v2, v1, v3

    new-instance v2, Lcom/horcrux/svg/SvgPackage;

    invoke-direct {v2}, Lcom/horcrux/svg/SvgPackage;-><init>()V

    const/16 v3, 0x23

    aput-object v2, v1, v3

    new-instance v2, Lcom/brentvatne/react/ReactVideoPackage;

    invoke-direct {v2}, Lcom/brentvatne/react/ReactVideoPackage;-><init>()V

    const/16 v3, 0x24

    aput-object v2, v1, v3

    new-instance v2, Lcom/reactnativecommunity/webview/RNCWebViewPackage;

    invoke-direct {v2}, Lcom/reactnativecommunity/webview/RNCWebViewPackage;-><init>()V

    const/16 v3, 0x25

    aput-object v2, v1, v3

    new-instance v2, Lcom/rnziparchive/RNZipArchivePackage;

    invoke-direct {v2}, Lcom/rnziparchive/RNZipArchivePackage;-><init>()V

    const/16 v3, 0x26

    aput-object v2, v1, v3

    new-instance v2, Lcom/rivereactnative/RiveReactNativePackage;

    invoke-direct {v2}, Lcom/rivereactnative/RiveReactNativePackage;-><init>()V

    const/16 v3, 0x27

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
