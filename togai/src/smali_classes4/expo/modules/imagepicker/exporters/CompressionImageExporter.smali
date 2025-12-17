.class public final Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
.super Ljava/lang/Object;
.source "CompressionImageExporter.kt"

# interfaces
.implements Lexpo/modules/imagepicker/exporters/ImageExporter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J&\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0096@\u00a2\u0006\u0002\u0010\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u000cH\u0082@\u00a2\u0006\u0002\u0010\u0014J&\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019H\u0082@\u00a2\u0006\u0002\u0010\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lexpo/modules/imagepicker/exporters/CompressionImageExporter;",
        "Lexpo/modules/imagepicker/exporters/ImageExporter;",
        "appContextProvider",
        "Lexpo/modules/kotlin/providers/AppContextProvider;",
        "quality",
        "",
        "(Lexpo/modules/kotlin/providers/AppContextProvider;D)V",
        "compressQuality",
        "",
        "exportAsync",
        "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
        "source",
        "Landroid/net/Uri;",
        "output",
        "Ljava/io/File;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readBitmap",
        "Landroid/graphics/Bitmap;",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeImage",
        "",
        "bitmap",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-image-picker_release"
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
.field private final appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

.field private final compressQuality:I


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/providers/AppContextProvider;D)V
    .locals 2

    const-string v0, "appContextProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    const/16 p1, 0x64

    int-to-double v0, p1

    mul-double/2addr p2, v0

    double-to-int p1, p2

    iput p1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->compressQuality:I

    return-void
.end method

.method public static final synthetic access$getAppContextProvider$p(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)Lexpo/modules/kotlin/providers/AppContextProvider;
    .locals 0

    .line 22
    iget-object p0, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->appContextProvider:Lexpo/modules/kotlin/providers/AppContextProvider;

    return-object p0
.end method

.method public static final synthetic access$getCompressQuality$p(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)I
    .locals 0

    .line 22
    iget p0, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->compressQuality:I

    return p0
.end method

.method public static final synthetic access$readBitmap(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->readBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeImage(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->writeImage(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final readBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;

    iget v1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;

    invoke-direct {v0, p0, p2}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;-><init>(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 52
    iget v2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;

    invoke-direct {p2, p0, p1}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;-><init>(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Landroid/net/Uri;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iput v3, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p2, v0, v3, p1}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p2
.end method

.method private final writeImage(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 72
    new-instance v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;

    invoke-direct {v0, p2, p1, p3, p0}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p2, v0, p4, p1, p2}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public exportAsync(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/imagepicker/exporters/ImageExportResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;

    iget v1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;

    invoke-direct {v0, p0, p4}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;-><init>(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    iget-object p3, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p1

    move-object v4, p2

    move-object v6, p3

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$4:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    check-cast p2, Landroid/content/ContentResolver;

    iget-object p3, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    check-cast p3, Ljava/io/File;

    iget-object v2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p4, v2

    move-object v2, v4

    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Landroid/content/ContentResolver;

    iget-object p1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/io/File;

    iget-object p1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iget-object v2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iput-object p0, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    iput v5, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    invoke-direct {p0, p1, v0}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->readBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 29
    :goto_1
    check-cast p4, Landroid/graphics/Bitmap;

    .line 35
    invoke-static {p2}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->toBitmapCompressFormat(Ljava/io/File;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    .line 36
    iput-object v2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    invoke-direct {v2, p4, p2, v5, v0}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->writeImage(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, p4

    move-object p4, p1

    move-object p1, v9

    .line 37
    :goto_2
    iput-object v2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$1;->label:I

    invoke-static {p4, p2, p3, v0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyExifData(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    :cond_7
    move-object v5, p1

    move-object v4, p2

    move-object v6, v2

    .line 40
    :goto_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 41
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 39
    new-instance p1, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$exportAsync$2;-><init>(Ljava/io/File;Landroid/graphics/Bitmap;Lexpo/modules/imagepicker/exporters/CompressionImageExporter;II)V

    return-object p1
.end method
