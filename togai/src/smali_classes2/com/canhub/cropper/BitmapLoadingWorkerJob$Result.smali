.class public final Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;
.super Ljava/lang/Object;
.source "BitmapLoadingWorkerJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/BitmapLoadingWorkerJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B9\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000cB\u001f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\r\u001a\n\u0018\u00010\u000ej\u0004\u0018\u0001`\u000f\u00a2\u0006\u0002\u0010\u0010J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0008\u0008\u0002\u0010%\u001a\u00020\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\r\u001a\n\u0018\u00010\u000ej\u0004\u0018\u0001`\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0018\"\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014R\u0011\u0010\u001e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006&"
    }
    d2 = {
        "Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "loadSampleSize",
        "",
        "degreesRotated",
        "flipHorizontally",
        "",
        "flipVertically",
        "(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZZ)V",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "(Landroid/net/Uri;Ljava/lang/Exception;)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "getDegreesRotated",
        "()I",
        "getError",
        "()Ljava/lang/Exception;",
        "getFlipHorizontally",
        "()Z",
        "setFlipHorizontally",
        "(Z)V",
        "getFlipVertically",
        "setFlipVertically",
        "getLoadSampleSize",
        "uriContent",
        "getUriContent",
        "()Landroid/net/Uri;",
        "getUriFilePath",
        "",
        "context",
        "Landroid/content/Context;",
        "uniqueName",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final degreesRotated:I

.field private final error:Ljava/lang/Exception;

.field private flipHorizontally:Z

.field private flipVertically:Z

.field private final loadSampleSize:I

.field private final uriContent:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IIZZ)V
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->uriContent:Landroid/net/Uri;

    iput-object p2, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->loadSampleSize:I

    iput p4, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->degreesRotated:I

    iput-boolean p5, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->flipHorizontally:Z

    iput-boolean p6, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->flipVertically:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->error:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->uriContent:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->loadSampleSize:I

    iput p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->degreesRotated:I

    iput-object p2, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->error:Ljava/lang/Exception;

    return-void
.end method

.method public static synthetic getUriFilePath$default(Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;Landroid/content/Context;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 124
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->getUriFilePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getDegreesRotated()I
    .locals 1

    iget v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->degreesRotated:I

    return v0
.end method

.method public final getError()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->error:Ljava/lang/Exception;

    return-object v0
.end method

.method public final getFlipHorizontally()Z
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->flipHorizontally:Z

    return v0
.end method

.method public final getFlipVertically()Z
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->flipVertically:Z

    return v0
.end method

.method public final getLoadSampleSize()I
    .locals 1

    iget v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->loadSampleSize:I

    return v0
.end method

.method public final getUriContent()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->uriContent:Landroid/net/Uri;

    return-object v0
.end method

.method public final getUriFilePath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->uriContent:Landroid/net/Uri;

    .line 125
    invoke-static {p1, v0, p2}, Lcom/canhub/cropper/utils/GetFilePathFromUriKt;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final setFlipHorizontally(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->flipHorizontally:Z

    return-void
.end method

.method public final setFlipVertically(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/canhub/cropper/BitmapLoadingWorkerJob$Result;->flipVertically:Z

    return-void
.end method
