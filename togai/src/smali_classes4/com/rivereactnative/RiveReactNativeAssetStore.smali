.class final Lcom/rivereactnative/RiveReactNativeAssetStore;
.super Lapp/rive/runtime/kotlin/core/FileAssetLoader;
.source "RiveReactNativeView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012:\u0010\u0004\u001a6\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0005j\u0002`\u000c\u00a2\u0006\u0002\u0010\rJ\u0006\u0010\u0016\u001a\u00020\u000bJ\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011RB\u0010\u0004\u001a6\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0005j\u0002`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/rivereactnative/RiveReactNativeAssetStore;",
        "Lapp/rive/runtime/kotlin/core/FileAssetLoader;",
        "referencedAssets",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "loadAssetHandler",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "source",
        "Lapp/rive/runtime/kotlin/core/FileAsset;",
        "asset",
        "",
        "Lcom/rivereactnative/LoadAssetHandler;",
        "(Lcom/facebook/react/bridge/ReadableMap;Lkotlin/jvm/functions/Function2;)V",
        "job",
        "Lkotlinx/coroutines/CompletableJob;",
        "getJob",
        "()Lkotlinx/coroutines/CompletableJob;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "dispose",
        "loadContents",
        "",
        "inBandBytes",
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
.field private final job:Lkotlinx/coroutines/CompletableJob;

.field private final loadAssetHandler:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "Lapp/rive/runtime/kotlin/core/FileAsset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final referencedAssets:Lcom/facebook/react/bridge/ReadableMap;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "-",
            "Lapp/rive/runtime/kotlin/core/FileAsset;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "referencedAssets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadAssetHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;-><init>()V

    iput-object p1, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->referencedAssets:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p2, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->loadAssetHandler:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 842
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->job:Lkotlinx/coroutines/CompletableJob;

    .line 843
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p2, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getLoadAssetHandler$p(Lcom/rivereactnative/RiveReactNativeAssetStore;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->loadAssetHandler:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    iget-object v0, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->job:Lkotlinx/coroutines/CompletableJob;

    .line 865
    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 866
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public final getJob()Lkotlinx/coroutines/CompletableJob;
    .locals 1

    iget-object v0, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->job:Lkotlinx/coroutines/CompletableJob;

    return-object v0
.end method

.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    iget-object v0, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public loadContents(Lapp/rive/runtime/kotlin/core/FileAsset;[B)Z
    .locals 10

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inBandBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->referencedAssets:Lcom/facebook/react/bridge/ReadableMap;

    .line 846
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/FileAsset;->getUniqueFilename()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "."

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->referencedAssets:Lcom/facebook/react/bridge/ReadableMap;

    .line 848
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/FileAsset;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_2

    const-string v0, "source"

    .line 851
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/rivereactnative/RiveReactNativeAssetStore;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 853
    new-instance v0, Lcom/rivereactnative/RiveReactNativeAssetStore$loadContents$1;

    invoke-direct {v0, p0, p2, p1, v3}, Lcom/rivereactnative/RiveReactNativeAssetStore$loadContents$1;-><init>(Lcom/rivereactnative/RiveReactNativeAssetStore;Lcom/facebook/react/bridge/ReadableMap;Lapp/rive/runtime/kotlin/core/FileAsset;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
