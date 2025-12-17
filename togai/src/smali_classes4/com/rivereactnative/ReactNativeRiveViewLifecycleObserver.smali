.class public final Lcom/rivereactnative/ReactNativeRiveViewLifecycleObserver;
.super Lapp/rive/runtime/kotlin/RiveViewLifecycleObserver;
.source "RiveReactNativeView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRiveReactNativeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RiveReactNativeView.kt\ncom/rivereactnative/ReactNativeRiveViewLifecycleObserver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,888:1\n1855#2,2:889\n*S KotlinDebug\n*F\n+ 1 RiveReactNativeView.kt\ncom/rivereactnative/ReactNativeRiveViewLifecycleObserver\n*L\n55#1:889,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0017\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/rivereactnative/ReactNativeRiveViewLifecycleObserver;",
        "Lapp/rive/runtime/kotlin/RiveViewLifecycleObserver;",
        "dependencies",
        "",
        "Lapp/rive/runtime/kotlin/core/RefCount;",
        "(Ljava/util/List;)V",
        "dispose",
        "",
        "onDestroy",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lapp/rive/runtime/kotlin/core/RefCount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dependencies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1}, Lapp/rive/runtime/kotlin/RiveViewLifecycleObserver;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/rivereactnative/ReactNativeRiveViewLifecycleObserver;->getDependencies()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 889
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapp/rive/runtime/kotlin/core/RefCount;

    .line 55
    invoke-interface {v1}, Lapp/rive/runtime/kotlin/core/RefCount;->release()I

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/rivereactnative/ReactNativeRiveViewLifecycleObserver;->getDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
