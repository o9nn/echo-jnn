.class final Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ImagePickerUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyFile(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $contentResolver:Landroid/content/ContentResolver;

.field final synthetic $sourceUri:Landroid/net/Uri;

.field final synthetic $targetFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$targetFile:Ljava/io/File;

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$sourceUri:Landroid/net/Uri;

    iput-object p3, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$contentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$targetFile:Ljava/io/File;

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$sourceUri:Landroid/net/Uri;

    .line 158
    invoke-virtual {v1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$sourceUri:Landroid/net/Uri;

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/io/Closeable;

    iget-object v3, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$targetFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v4, v0

    check-cast v4, Ljava/io/InputStream;

    .line 164
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v3, v5

    check-cast v3, Ljava/io/FileOutputStream;

    .line 165
    check-cast v3, Ljava/io/OutputStream;

    const/4 v6, 0x0

    invoke-static {v4, v3, v6, v1, v2}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :try_start_3
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v5, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 168
    :cond_1
    new-instance v0, Lexpo/modules/imagepicker/FailedToReadFileException;

    iget-object v3, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$sourceUri:Landroid/net/Uri;

    invoke-static {v3}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v2, v1, v2}, Lexpo/modules/imagepicker/FailedToReadFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Lexpo/modules/imagepicker/FailedToWriteFileException;

    iget-object v2, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;->$targetFile:Ljava/io/File;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Lexpo/modules/imagepicker/FailedToWriteFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    throw v1
.end method
