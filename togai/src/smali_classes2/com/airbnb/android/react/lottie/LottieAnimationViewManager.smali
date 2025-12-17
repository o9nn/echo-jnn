.class public final Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "LottieAnimationViewManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0016\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bH\u0016J\u0014\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0002H\u0002J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0002H\u0014J\"\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u001a\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u001bH\u0007J\u001a\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0018H\u0007J\u0018\u0010 \u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u001bH\u0007J\u0018\u0010\"\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u001bH\u0007J\u001f\u0010$\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010%\u001a\u0004\u0018\u00010\u001bH\u0007\u00a2\u0006\u0002\u0010&J\u001a\u0010\'\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010(\u001a\u0004\u0018\u00010\u000cH\u0007J\u0018\u0010)\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u001bH\u0007J\u0018\u0010+\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010,\u001a\u00020-H\u0007J\u001a\u0010.\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010/\u001a\u0004\u0018\u00010\u000cH\u0007J\u001a\u00100\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u00101\u001a\u0004\u0018\u00010\u000cH\u0007J\u001a\u00102\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u00103\u001a\u0004\u0018\u00010\u000cH\u0007J\u001a\u00104\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u00105\u001a\u0004\u0018\u00010\u000cH\u0007J\u001a\u00106\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u00107\u001a\u0004\u0018\u00010\u000cH\u0007J\u001a\u00108\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u00109\u001a\u0004\u0018\u00010\u000cH\u0007J\u0018\u0010:\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010;\u001a\u00020<H\u0007J\u001a\u0010=\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010>\u001a\u0004\u0018\u00010\u0018H\u0007R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;",
        "Lcom/facebook/react/uimanager/SimpleViewManager;",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "()V",
        "propManagersMap",
        "Ljava/util/WeakHashMap;",
        "Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getExportedCustomDirectEventTypeConstants",
        "",
        "",
        "",
        "getExportedViewConstants",
        "",
        "getName",
        "getOrCreatePropertyManager",
        "view",
        "onAfterUpdateTransaction",
        "",
        "receiveCommand",
        "commandName",
        "args",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "setAutoPlay",
        "autoPlay",
        "",
        "setCacheComposition",
        "cacheComposition",
        "setColorFilters",
        "colorFilters",
        "setEnableMergePaths",
        "enableMergePaths",
        "setEnableSafeMode",
        "enableSafeMode",
        "setHardwareAccelerationAndroid",
        "hardwareAccelerationAndroid",
        "(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Boolean;)V",
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
        "setSourceDotLottie",
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


# instance fields
.field private final propManagersMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            "Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_DZMhSmFR0vHTReTCOR9nIOyOn8(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->createViewInstance$lambda$1(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rReRsyl6qU0t5gyFKmzq8LXo0MY(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->createViewInstance$lambda$0(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->propManagersMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static final createViewInstance$lambda$0(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->sendAnimationFailureEvent(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final createViewInstance$lambda$1(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    const-string p1, "$view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->sendAnimationLoadedEvent(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method private final getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->propManagersMap:Ljava/util/WeakHashMap;

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->propManagersMap:Ljava/util/WeakHashMap;

    .line 41
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    .line 56
    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Lcom/airbnb/lottie/LottieListener;)V

    .line 59
    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$$ExternalSyntheticLambda1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    .line 63
    new-instance v0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$createViewInstance$3;

    invoke-direct {v0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$createViewInstance$3;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 62
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->getExportedCustomDirectEventTypeConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->getExportedViewConstants()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "LottieAnimationView"

    return-object v0
.end method

.method public bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->onAfterUpdateTransaction(Lcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Lcom/facebook/react/uimanager/SimpleViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->commitChanges()V

    return-void
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->receiveCommand(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p3, "reset"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->reset(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto :goto_1

    :sswitch_1
    const-string p3, "pause"

    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    invoke-static {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->pause(Lcom/airbnb/lottie/LottieAnimationView;)V

    goto :goto_1

    :sswitch_2
    const-string v0, "play"

    .line 93
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    if-eqz p3, :cond_3

    const/4 v0, 0x0

    .line 94
    invoke-interface {p3, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, p2

    :goto_0
    if-eqz p3, :cond_4

    const/4 p2, 0x1

    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p2

    :cond_4
    invoke-static {p1, v0, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->play(Lcom/airbnb/lottie/LottieAnimationView;II)V

    goto :goto_1

    :sswitch_3
    const-string p3, "resume"

    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    .line 97
    :cond_5
    invoke-static {p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->resume(Lcom/airbnb/lottie/LottieAnimationView;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x37b237d3 -> :sswitch_3
        0x348b34 -> :sswitch_2
        0x65825f6 -> :sswitch_1
        0x6761d4f -> :sswitch_0
    .end sparse-switch
.end method

.method public final setAutoPlay(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "autoPlay"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setAutoPlay(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setCacheComposition(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "cacheComposition"
    .end annotation

    .line 121
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setCacheComposition(Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public final setColorFilters(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "colorFilters"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setColorFilters(Lcom/facebook/react/bridge/ReadableArray;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setEnableMergePaths(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "enableMergePathsAndroidForKitKatAndAbove"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setEnableMergePaths(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setEnableSafeMode(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "enableSafeModeAndroid"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setEnableSafeMode(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setHardwareAccelerationAndroid(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "hardwareAccelerationAndroid"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setHardwareAcceleration(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setImageAssetsFolder(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "imageAssetsFolder"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setImageAssetsFolder(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setLoop(Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "loop"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setLoop(ZLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setProgress(Lcom/airbnb/lottie/LottieAnimationView;F)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "progress"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setProgress(FLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setRenderMode(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "renderMode"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setRenderMode(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setResizeMode(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "resizeMode"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setResizeMode(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setSourceDotLottie(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sourceDotLottieURI"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSourceDotLottieURI(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setSourceJson(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sourceJson"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSourceJson(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setSourceName(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sourceName"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSourceName(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setSourceURL(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "sourceURL"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSourceURL(Ljava/lang/String;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setSpeed(Lcom/airbnb/lottie/LottieAnimationView;D)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "speed"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setSpeed(DLcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method

.method public final setTextFilters(Lcom/airbnb/lottie/LottieAnimationView;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "textFiltersAndroid"
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->getOrCreatePropertyManager(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManagerImpl;->setTextFilters(Lcom/facebook/react/bridge/ReadableArray;Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;)V

    return-void
.end method
