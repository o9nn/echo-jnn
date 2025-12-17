.class public final Lcom/rivereactnative/ReactNativeRiveAnimationView;
.super Lapp/rive/runtime/kotlin/RiveAnimationView;
.source "RiveReactNativeView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0015J\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/rivereactnative/ReactNativeRiveAnimationView;",
        "Lapp/rive/runtime/kotlin/RiveAnimationView;",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "(Lcom/facebook/react/uimanager/ThemedReactContext;)V",
        "createObserver",
        "Landroidx/lifecycle/LifecycleObserver;",
        "dispose",
        "",
        "rive-react-native_release"
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
.field private final context:Lcom/facebook/react/uimanager/ThemedReactContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lapp/rive/runtime/kotlin/RiveAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/rivereactnative/ReactNativeRiveAnimationView;->context:Lcom/facebook/react/uimanager/ThemedReactContext;

    return-void
.end method


# virtual methods
.method protected createObserver()Landroidx/lifecycle/LifecycleObserver;
    .locals 4

    .line 70
    new-instance v0, Lcom/rivereactnative/ReactNativeRiveViewLifecycleObserver;

    const/4 v1, 0x2

    new-array v1, v1, [Lapp/rive/runtime/kotlin/core/RefCount;

    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/rivereactnative/ReactNativeRiveAnimationView;->getController()Lapp/rive/runtime/kotlin/controllers/RiveFileController;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/rivereactnative/ReactNativeRiveAnimationView;->getRendererAttributes()Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lapp/rive/runtime/kotlin/RiveAnimationView$RendererAttributes;->getAssetLoader()Lapp/rive/runtime/kotlin/core/FileAssetLoader;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 71
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 73
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-direct {v0, v1}, Lcom/rivereactnative/ReactNativeRiveViewLifecycleObserver;-><init>(Ljava/util/List;)V

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    return-object v0
.end method

.method public final dispose()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/rivereactnative/ReactNativeRiveAnimationView;->getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.rivereactnative.ReactNativeRiveViewLifecycleObserver"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/rivereactnative/ReactNativeRiveViewLifecycleObserver;

    invoke-virtual {v0}, Lcom/rivereactnative/ReactNativeRiveViewLifecycleObserver;->dispose()V

    return-void
.end method
