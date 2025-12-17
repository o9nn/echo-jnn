.class final Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CompressionImageExporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->writeImage(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompressionImageExporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompressionImageExporter.kt\nexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,80:1\n1#2:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic $output:Ljava/io/File;

.field final synthetic this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->$output:Ljava/io/File;

    iput-object p2, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->$compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput-object p4, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 5

    .line 74
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->$output:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/Closeable;

    iget-object v1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->$compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v4, v0

    check-cast v4, Ljava/io/FileOutputStream;

    invoke-static {v3}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->access$getCompressQuality$p(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)I

    move-result v3

    check-cast v4, Ljava/io/OutputStream;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 74
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Lexpo/modules/imagepicker/FailedToWriteFileException;

    iget-object v2, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->$output:Ljava/io/File;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Lexpo/modules/imagepicker/FailedToWriteFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$writeImage$2;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
