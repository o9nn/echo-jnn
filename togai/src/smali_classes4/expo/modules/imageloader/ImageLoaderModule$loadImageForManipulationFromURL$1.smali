.class public final Lexpo/modules/imageloader/ImageLoaderModule$loadImageForManipulationFromURL$1;
.super Ljava/lang/Object;
.source "ImageLoaderModule.kt"

# interfaces
.implements Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imageloader/ImageLoaderModule;->loadImageForManipulationFromURL(Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "expo/modules/imageloader/ImageLoaderModule$loadImageForManipulationFromURL$1",
        "Lexpo/modules/interfaces/imageloader/ImageLoaderInterface$ResultListener;",
        "onFailure",
        "",
        "cause",
        "",
        "onSuccess",
        "bitmap",
        "Landroid/graphics/Bitmap;",
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
.field final synthetic $future:Lexpo/modules/imageloader/SimpleSettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/imageloader/SimpleSettableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lexpo/modules/imageloader/SimpleSettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/imageloader/SimpleSettableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForManipulationFromURL$1;->$future:Lexpo/modules/imageloader/SimpleSettableFuture;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForManipulationFromURL$1;->$future:Lexpo/modules/imageloader/SimpleSettableFuture;

    .line 65
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lexpo/modules/imageloader/SimpleSettableFuture;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/imageloader/ImageLoaderModule$loadImageForManipulationFromURL$1;->$future:Lexpo/modules/imageloader/SimpleSettableFuture;

    .line 63
    invoke-virtual {v0, p1}, Lexpo/modules/imageloader/SimpleSettableFuture;->set(Ljava/lang/Object;)V

    return-void
.end method
