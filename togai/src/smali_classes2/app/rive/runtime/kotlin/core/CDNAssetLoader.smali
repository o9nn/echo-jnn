.class public Lapp/rive/runtime/kotlin/core/CDNAssetLoader;
.super Lapp/rive/runtime/kotlin/core/FileAssetLoader;
.source "FileAssetLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lapp/rive/runtime/kotlin/core/CDNAssetLoader;",
        "Lapp/rive/runtime/kotlin/core/FileAssetLoader;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "queue",
        "Lcom/android/volley/RequestQueue;",
        "getQueue",
        "()Lcom/android/volley/RequestQueue;",
        "queue$delegate",
        "Lkotlin/Lazy;",
        "tag",
        "",
        "kotlin.jvm.PlatformType",
        "loadContents",
        "",
        "asset",
        "Lapp/rive/runtime/kotlin/core/FileAsset;",
        "inBandBytes",
        "",
        "kotlin_release"
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
.field private final queue$delegate:Lkotlin/Lazy;

.field private final tag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$4E3d0j9Jpdl5DzVjzWIC1Tugalo(Lapp/rive/runtime/kotlin/core/CDNAssetLoader;Lcom/android/volley/VolleyError;)V
    .locals 0

    invoke-static {p0, p1}, Lapp/rive/runtime/kotlin/core/CDNAssetLoader;->loadContents$lambda$0(Lapp/rive/runtime/kotlin/core/CDNAssetLoader;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/FileAssetLoader;-><init>()V

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/rive/runtime/kotlin/core/CDNAssetLoader;->tag:Ljava/lang/String;

    .line 104
    new-instance v0, Lapp/rive/runtime/kotlin/core/CDNAssetLoader$queue$2;

    invoke-direct {v0, p1}, Lapp/rive/runtime/kotlin/core/CDNAssetLoader$queue$2;-><init>(Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lapp/rive/runtime/kotlin/core/CDNAssetLoader;->queue$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lapp/rive/runtime/kotlin/core/CDNAssetLoader;->queue$delegate:Lkotlin/Lazy;

    .line 104
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method private static final loadContents$lambda$0(Lapp/rive/runtime/kotlin/core/CDNAssetLoader;Lcom/android/volley/VolleyError;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lapp/rive/runtime/kotlin/core/CDNAssetLoader;->tag:Ljava/lang/String;

    const-string v0, "onAssetLoaded: loading image failed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public loadContents(Lapp/rive/runtime/kotlin/core/FileAsset;[B)Z
    .locals 2

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inBandBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lapp/rive/runtime/kotlin/core/FileAsset;->getCdnUrl()Ljava/lang/String;

    move-result-object p2

    .line 108
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_0
    new-instance v0, Lapp/rive/runtime/kotlin/core/BytesRequest;

    new-instance v1, Lapp/rive/runtime/kotlin/core/CDNAssetLoader$loadContents$request$1;

    invoke-direct {v1, p1}, Lapp/rive/runtime/kotlin/core/CDNAssetLoader$loadContents$request$1;-><init>(Lapp/rive/runtime/kotlin/core/FileAsset;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance p1, Lapp/rive/runtime/kotlin/core/CDNAssetLoader$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lapp/rive/runtime/kotlin/core/CDNAssetLoader$$ExternalSyntheticLambda0;-><init>(Lapp/rive/runtime/kotlin/core/CDNAssetLoader;)V

    invoke-direct {v0, p2, v1, p1}, Lapp/rive/runtime/kotlin/core/BytesRequest;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/android/volley/Response$ErrorListener;)V

    .line 119
    invoke-direct {p0}, Lapp/rive/runtime/kotlin/core/CDNAssetLoader;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    check-cast v0, Lcom/android/volley/Request;

    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 p1, 0x1

    return p1
.end method
