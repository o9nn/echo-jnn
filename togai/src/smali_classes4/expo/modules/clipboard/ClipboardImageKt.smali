.class public final Lexpo/modules/clipboard/ClipboardImageKt;
.super Ljava/lang/Object;
.source "ClipboardImage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u001e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0080@\u00a2\u0006\u0002\u0010\t\u001a&\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0080@\u00a2\u0006\u0002\u0010\u000e\u001a&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H\u0080@\u00a2\u0006\u0002\u0010\u0013\u001a\u0012\u0010\u0014\u001a\u00020\u0015*\u00020\rH\u0082@\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "bitmapFromBase64String",
        "Landroid/graphics/Bitmap;",
        "base64Image",
        "",
        "bitmapFromContentUriAsync",
        "context",
        "Landroid/content/Context;",
        "imageUri",
        "Landroid/net/Uri;",
        "(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clipDataFromBase64Image",
        "Landroid/content/ClipData;",
        "clipboardCacheDir",
        "Ljava/io/File;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "imageFromContentUri",
        "Lexpo/modules/clipboard/ImageResult;",
        "options",
        "Lexpo/modules/clipboard/GetImageOptions;",
        "(Landroid/content/Context;Landroid/net/Uri;Lexpo/modules/clipboard/GetImageOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureExists",
        "",
        "(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expo-clipboard_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lexpo/modules/clipboard/ClipboardImageKt;->ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final bitmapFromBase64String(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "base64Image"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 147
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to convert base64 into Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Lexpo/modules/clipboard/InvalidImageException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, p0, v0}, Lexpo/modules/clipboard/InvalidImageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final bitmapFromContentUriAsync(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;

    iget v1, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;

    invoke-direct {v0, p2}, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 129
    iget v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;

    invoke-direct {v2, p0, p1}, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$2;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    iput v3, v0, Lexpo/modules/clipboard/ClipboardImageKt$bitmapFromContentUriAsync$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "runInterruptible(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public static final clipDataFromBase64Image(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/content/ClipData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;

    iget v1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;

    invoke-direct {v0, p3}, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 92
    iget v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    iget-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    iget-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    iget-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    invoke-static {p1}, Lexpo/modules/clipboard/ClipboardImageKt;->bitmapFromBase64String(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 101
    new-instance p3, Ljava/io/File;

    const-string v2, "copied_image.jpeg"

    invoke-direct {p3, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    iput-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    invoke-static {p3, v0}, Lexpo/modules/clipboard/ClipboardImageKt;->ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p2, p0

    move-object p0, p3

    .line 106
    :goto_1
    new-instance p3, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$fileStream$1;

    invoke-direct {p3, p0}, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$fileStream$1;-><init>(Ljava/io/File;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    iput-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    invoke-static {v6, p3, v0, v5, v6}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    .line 92
    :cond_6
    :goto_2
    check-cast p3, Ljava/io/FileOutputStream;

    .line 107
    new-instance v2, Ljava/io/BufferedOutputStream;

    check-cast p3, Ljava/io/OutputStream;

    invoke-direct {v2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p3, v2

    check-cast p3, Ljava/io/Closeable;

    :try_start_1
    move-object v2, p3

    check-cast v2, Ljava/io/BufferedOutputStream;

    .line 108
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v7, v2

    check-cast v7, Ljava/io/OutputStream;

    const/16 v8, 0x64

    invoke-virtual {p1, v4, v8, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 109
    new-instance p1, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$2$1;

    invoke-direct {p1, v2}, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$2$1;-><init>(Ljava/io/BufferedOutputStream;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iput-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/clipboard/ClipboardImageKt$clipDataFromBase64Image$1;->label:I

    invoke-static {v6, p1, v0, v5, v6}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, p0

    move-object p0, p3

    .line 110
    :goto_3
    :try_start_2
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 113
    sget-object p0, Lexpo/modules/clipboard/ClipboardFileProvider;->Companion:Lexpo/modules/clipboard/ClipboardFileProvider$Companion;

    .line 115
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ".ClipboardFileProvider"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 113
    invoke-virtual {p0, p2, p3, p1}, Lexpo/modules/clipboard/ClipboardFileProvider$Companion;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    .line 118
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "image"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    const-string p1, "newUri(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object p0, p3

    .line 107
    :goto_4
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static final ensureExists(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 159
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/clipboard/ClipboardImageKt$ensureExists$2;

    invoke-direct {v1, p0}, Lexpo/modules/clipboard/ClipboardImageKt$ensureExists$2;-><init>(Ljava/io/File;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final imageFromContentUri(Landroid/content/Context;Landroid/net/Uri;Lexpo/modules/clipboard/GetImageOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lexpo/modules/clipboard/GetImageOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/clipboard/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;

    iget v1, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;

    invoke-direct {v0, p3}, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    iget-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lexpo/modules/clipboard/ImageFormat;

    iget-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lexpo/modules/clipboard/GetImageOptions;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    iput-object p2, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    invoke-static {p0, p1, v0}, Lexpo/modules/clipboard/ClipboardImageKt;->bitmapFromContentUriAsync(Landroid/content/Context;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    .line 51
    :cond_4
    :goto_1
    move-object p0, p3

    check-cast p0, Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p2}, Lexpo/modules/clipboard/GetImageOptions;->getImageFormat()Lexpo/modules/clipboard/ImageFormat;

    move-result-object p1

    .line 61
    invoke-virtual {p2}, Lexpo/modules/clipboard/GetImageOptions;->getJpegQuality()D

    move-result-wide p2

    const/16 v2, 0x64

    int-to-double v4, v2

    mul-double/2addr p2, v4

    double-to-int p2, p2

    .line 62
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    invoke-virtual {p1}, Lexpo/modules/clipboard/ImageFormat;->getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    move-object v4, p3

    check-cast v4, Ljava/io/OutputStream;

    invoke-virtual {p0, v2, p2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 65
    iput-object p0, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lexpo/modules/clipboard/ClipboardImageKt$imageFromContentUri$1;->label:I

    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p2, p0

    move-object p0, p3

    .line 68
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p3, 0x0

    .line 69
    invoke-static {p0, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lexpo/modules/clipboard/ImageFormat;->getMimeType()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";base64,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 72
    new-instance p1, Lexpo/modules/clipboard/ImageResult;

    .line 73
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "toString(...)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 75
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 72
    invoke-direct {p1, p0, p3, p2}, Lexpo/modules/clipboard/ImageResult;-><init>(Ljava/lang/String;II)V

    return-object p1
.end method
