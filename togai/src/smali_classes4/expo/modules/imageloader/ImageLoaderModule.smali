.class public final Lexpo/modules/imageloader/ImageLoaderModule;
.super Ljava/lang/Object;
.source "ImageLoaderModule.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/InternalModule;
.implements Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u0016J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u000b\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/imageloader/ImageLoaderModule;",
        "Lexpo/modules/core/interfaces/InternalModule;",
        "Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getExportedInterfaces",
        "",
        "Ljava/lang/Class;",
        "loadImageForDisplayFromURL",
        "Ljava/util/concurrent/Future;",
        "Landroid/graphics/Bitmap;",
        "url",
        "",
        "",
        "resultListener",
        "Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;",
        "loadImageForManipulationFromURL",
        "normalizeAssetsUrl",
        "expo-image-loader_release"
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
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/imageloader/ImageLoaderModule;->context:Landroid/content/Context;

    return-void
.end method

.method private final normalizeAssetsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "asset:///"

    const/4 v3, 0x0

    .line 100
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string p1, "/"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file:///android_asset/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lexpo/modules/imageloader/ImageLoaderModule;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getExportedInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadImageForDisplayFromURL(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lexpo/modules/imageloader/SimpleSettableFuture;

    invoke-direct {v0}, Lexpo/modules/imageloader/SimpleSettableFuture;-><init>()V

    .line 25
    new-instance v1, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$1;

    invoke-direct {v1, v0}, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$1;-><init>(Lexpo/modules/imageloader/SimpleSettableFuture;)V

    check-cast v1, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;

    .line 23
    invoke-virtual {p0, p1, v1}, Lexpo/modules/imageloader/ImageLoaderModule;->loadImageForDisplayFromURL(Ljava/lang/String;Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V

    .line 32
    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public loadImageForDisplayFromURL(Ljava/lang/String;Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/imageloader/ImageLoaderModule;->context:Landroid/content/Context;

    .line 39
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 42
    new-instance v0, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$2;

    invoke-direct {v0, p2}, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForDisplayFromURL$2;-><init>(Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public loadImageForManipulationFromURL(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lexpo/modules/imageloader/SimpleSettableFuture;

    invoke-direct {v0}, Lexpo/modules/imageloader/SimpleSettableFuture;-><init>()V

    .line 62
    new-instance v1, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForManipulationFromURL$1;

    invoke-direct {v1, v0}, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForManipulationFromURL$1;-><init>(Lexpo/modules/imageloader/SimpleSettableFuture;)V

    check-cast v1, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;

    .line 60
    invoke-virtual {p0, p1, v1}, Lexpo/modules/imageloader/ImageLoaderModule;->loadImageForManipulationFromURL(Ljava/lang/String;Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V

    .line 68
    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public loadImageForManipulationFromURL(Ljava/lang/String;Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lexpo/modules/imageloader/ImageLoaderModule;->normalizeAssetsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lexpo/modules/imageloader/ImageLoaderModule;->context:Landroid/content/Context;

    .line 77
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 81
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 82
    new-instance v0, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForManipulationFromURL$2;

    invoke-direct {v0, p2}, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForManipulationFromURL$2;-><init>(Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;)V

    check-cast v0, Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
