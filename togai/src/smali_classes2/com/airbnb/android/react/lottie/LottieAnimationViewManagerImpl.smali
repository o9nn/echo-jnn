.class public final Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;
.super Ljava/lang/Object;
.source "LottieAnimationViewManagerImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0014\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000bH\u0007J \u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000bH\u0007J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000bH\u0007J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000bH\u0007J\u0018\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0018\u0010 \u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010$\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u001fH\u0007J\u001a\u0010&\u001a\u00020\u00112\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010-\u001a\u00020\u00112\u0006\u0010.\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0007J\u001a\u0010/\u001a\u00020\u00112\u0008\u00100\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u00101\u001a\u00020\u00112\u0006\u00102\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u00103\u001a\u00020\u00112\u0006\u00104\u001a\u0002052\u0006\u0010\"\u001a\u00020#H\u0007J\u001a\u00106\u001a\u00020\u00112\u0008\u00107\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020#H\u0007J\u001a\u00108\u001a\u00020\u00112\u0008\u00109\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020#H\u0007J\u001a\u0010:\u001a\u00020\u00112\u0008\u0010;\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020#H\u0007J\u001a\u0010<\u001a\u00020\u00112\u0008\u0010=\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020#H\u0007J\u001a\u0010>\u001a\u00020\u00112\u0008\u0010?\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020#H\u0007J\u001a\u0010@\u001a\u00020\u00112\u0008\u0010A\u001a\u0004\u0018\u00010\u00042\u0006\u0010\"\u001a\u00020#H\u0007J\u0018\u0010B\u001a\u00020\u00112\u0006\u0010C\u001a\u00020D2\u0006\u0010\"\u001a\u00020#H\u0007J\u001a\u0010E\u001a\u00020\u00112\u0008\u0010F\u001a\u0004\u0018\u00010(2\u0006\u0010\"\u001a\u00020#H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u00068FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006G"
    }
    d2 = {
        "Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;",
        "",
        "()V",
        "REACT_CLASS",
        "",
        "exportedViewConstants",
        "",
        "getExportedViewConstants$annotations",
        "getExportedViewConstants",
        "()Ljava/util/Map;",
        "createViewInstance",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "pause",
        "",
        "view",
        "play",
        "startFrame",
        "",
        "endFrame",
        "reset",
        "resume",
        "sendAnimationFailureEvent",
        "error",
        "",
        "sendAnimationLoadedEvent",
        "sendOnAnimationFinishEvent",
        "isCancelled",
        "",
        "setAutoPlay",
        "autoPlay",
        "viewManager",
        "Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;",
        "setCacheComposition",
        "cacheComposition",
        "setColorFilters",
        "colorFilters",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setEnableMergePaths",
        "enableMergePaths",
        "setEnableSafeMode",
        "enableSafeMode",
        "setHardwareAcceleration",
        "hardwareAccelerationAndroid",
        "setImageAssetsFolder",
        "imageAssetsFolder",
        "setLoop",
        "loop",
        "setProgress",
        "progress",
        "",
        "setRenderMode",
        "renderMode",
        "setResizeMode",
        "resizeMode",
        "setSourceDotLottieURI",
        "uri",
        "setSourceJson",
        "json",
        "setSourceName",
        "name",
        "setSourceURL",
        "urlString",
        "setSpeed",
        "speed",
        "",
        "setTextFilters",
        "textFilters",
        "lottie-react-native_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;

.field public static final REACT_CLASS:Ljava/lang/String; = "LottieAnimationView"


# direct methods
.method public static synthetic $r8$lambda$A2--90zBS_ZqUpRvTVXrbmtaDJA(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-static {p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->reset$lambda$2(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c3yRj7nk8ohkq7RMmtLuQzrrRTg(ZIILcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->play$lambda$1(ZIILcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u9eQj-h3znrHqeSRSkfyL4vcsto(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-static {p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->pause$lambda$3(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3FTYTMT7MJDqMecst6iz0nUTrQ(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    invoke-static {p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->resume$lambda$4(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;

    invoke-direct {v0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;-><init>()V

    sput-object v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->INSTANCE:Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    .line 28
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public static final getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "topAnimationFinish"

    const-string v1, "onAnimationFinish"

    const-string v2, "registrationName"

    .line 74
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v3, "topAnimationFailure"

    const-string v4, "onAnimationFailure"

    .line 76
    invoke-static {v2, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "topAnimationLoaded"

    const-string v6, "onAnimationLoaded"

    .line 78
    invoke-static {v2, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 72
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getExportedViewConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VERSION"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic getExportedViewConstants$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final pause(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final pause$lambda$3(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method public static final play(Lcom/airbnb/lottie/LottieAnimationView;II)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p2, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda0;-><init>(ZIILcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final play$lambda$1(ZIILcom/airbnb/lottie/LottieAnimationView;)V
    .locals 3

    const-string v0, "$view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    .line 88
    invoke-virtual {p3, p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 89
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 90
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->reverseAnimationSpeed()V

    goto :goto_1

    .line 93
    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 94
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->getSpeed()F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 95
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->reverseAnimationSpeed()V

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getStartFrame()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 100
    :goto_0
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 102
    :cond_3
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->getMinFrame()F

    move-result v0

    float-to-int v0, v0

    .line 103
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->getMaxFrame()F

    move-result v1

    float-to-int v1, v1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 104
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_5

    .line 105
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 108
    :cond_5
    :goto_1
    move-object p1, p3

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p0, :cond_6

    .line 110
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_2

    .line 112
    :cond_6
    invoke-virtual {p3}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_2

    .line 115
    :cond_7
    new-instance p1, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$play$1$1;

    invoke-direct {p1, p0, p3}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$play$1$1;-><init>(ZLcom/airbnb/lottie/LottieAnimationView;)V

    check-cast p1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p3, p1}, Lcom/airbnb/lottie/LottieAnimationView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_2
    return-void
.end method

.method public static final reset(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final reset$lambda$2(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public static final resume(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final resume$lambda$4(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :cond_0
    return-void
.end method

.method public static final sendAnimationFailureEvent(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Throwable;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v2, Lcom/airbnb/android/react/lottie/OnAnimationFailureEvent;

    .line 51
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSurfaceId()I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getId()I

    move-result p0

    .line 50
    invoke-direct {v2, v0, p0, p1}, Lcom/airbnb/android/react/lottie/OnAnimationFailureEvent;-><init>(IILjava/lang/Throwable;)V

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    .line 49
    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method public static final sendAnimationLoadedEvent(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 61
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v2, Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent;

    .line 64
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSurfaceId()I

    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getId()I

    move-result p0

    .line 63
    invoke-direct {v2, v0, p0}, Lcom/airbnb/android/react/lottie/OnAnimationLoadedEvent;-><init>(II)V

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    .line 62
    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method public static final sendOnAnimationFinishEvent(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.uimanager.ThemedReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v2, Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent;

    .line 38
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSurfaceId()I

    move-result v0

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getId()I

    move-result p0

    .line 37
    invoke-direct {v2, v0, p0, p1}, Lcom/airbnb/android/react/lottie/OnAnimationFinishEvent;-><init>(IIZ)V

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    .line 36
    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    :cond_0
    return-void
.end method

.method public static final setAutoPlay(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setAutoPlay(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final setCacheComposition(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCacheComposition(Z)V

    return-void
.end method

.method public static final setColorFilters(Lcom/facebook/react/bridge/ReadableArray;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setColorFilters(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public static final setEnableMergePaths(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setEnableMergePaths(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final setEnableSafeMode(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setEnableSafeMode(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final setHardwareAcceleration(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 264
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 266
    :cond_0
    invoke-virtual {p1, v0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setLayerType(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final setImageAssetsFolder(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setImageAssetsFolder(Ljava/lang/String;)V

    return-void
.end method

.method public static final setLoop(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setLoop(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final setProgress(FLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setProgress(Ljava/lang/Float;)V

    return-void
.end method

.method public static final setRenderMode(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x9da420b

    if-eq v0, v1, :cond_4

    const v1, 0x359dd5e8

    if-eq v0, v1, :cond_2

    const v1, 0x7d4951a7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SOFTWARE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    sget-object p0, Lcom/airbnb/lottie/RenderMode;->SOFTWARE:Lcom/airbnb/lottie/RenderMode;

    goto :goto_1

    :cond_2
    const-string v0, "HARDWARE"

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 247
    :cond_3
    sget-object p0, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    goto :goto_1

    :cond_4
    const-string v0, "AUTOMATIC"

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 243
    :cond_5
    sget-object p0, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    .line 254
    :goto_1
    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    return-void
.end method

.method public static final setResizeMode(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x514d33ab

    if-eq v0, v1, :cond_4

    const v1, 0x5a753b7

    if-eq v0, v1, :cond_2

    const v1, 0x38b724d4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "contain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :cond_2
    const-string v0, "cover"

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 221
    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :cond_4
    const-string v0, "center"

    .line 219
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 229
    :cond_5
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    .line 232
    :goto_1
    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static final setSourceDotLottieURI(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setSourceDotLottie(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->commitChanges()V

    return-void
.end method

.method public static final setSourceJson(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setAnimationJson(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->commitChanges()V

    return-void
.end method

.method public static final setSourceName(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 174
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "."

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 177
    :cond_0
    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setAnimationName(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->commitChanges()V

    return-void
.end method

.method public static final setSourceURL(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setAnimationURL(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->commitChanges()V

    return-void
.end method

.method public static final setSpeed(DLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    double-to-float p0, p0

    .line 282
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setSpeed(Ljava/lang/Float;)V

    return-void
.end method

.method public static final setTextFilters(Lcom/facebook/react/bridge/ReadableArray;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "viewManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1, p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->setTextFilters(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method
