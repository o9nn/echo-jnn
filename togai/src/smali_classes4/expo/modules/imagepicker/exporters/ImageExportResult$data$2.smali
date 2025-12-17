.class final Lexpo/modules/imagepicker/exporters/ImageExportResult$data$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageExporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/exporters/ImageExportResult;->data$suspendImpl(Lexpo/modules/imagepicker/exporters/ImageExportResult;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/ByteArrayOutputStream;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageExporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageExporter.kt\nexpo/modules/imagepicker/exporters/ImageExportResult$data$2\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,72:1\n36#2:73\n*S KotlinDebug\n*F\n+ 1 ImageExporter.kt\nexpo/modules/imagepicker/exporters/ImageExportResult$data$2\n*L\n37#1:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/ByteArrayOutputStream;",
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

.field final synthetic this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lexpo/modules/imagepicker/exporters/ImageExportResult;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$data$2;->$contentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$data$2;->this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/ByteArrayOutputStream;
    .locals 8

    iget-object v0, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$data$2;->$contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$data$2;->this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;

    .line 37
    invoke-static {v1}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->access$getImageFile$p(Lexpo/modules/imagepicker/exporters/ImageExportResult;)Ljava/io/File;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v0

    check-cast v3, Ljava/io/InputStream;

    .line 38
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v4, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v5, v4

    check-cast v5, Ljava/io/ByteArrayOutputStream;

    .line 39
    move-object v6, v5

    check-cast v6, Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v1, v2}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 42
    :cond_0
    new-instance v0, Lexpo/modules/imagepicker/FailedToReadFileException;

    iget-object v3, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$data$2;->this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;

    invoke-static {v3}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->access$getImageFile$p(Lexpo/modules/imagepicker/exporters/ImageExportResult;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v2, v1, v2}, Lexpo/modules/imagepicker/FailedToReadFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lexpo/modules/imagepicker/exporters/ImageExportResult$data$2;->invoke()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    return-object v0
.end method
