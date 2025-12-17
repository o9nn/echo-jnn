.class final Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CompressionImageExporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->readBitmap(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $source:Landroid/net/Uri;

.field final synthetic this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;


# direct methods
.method constructor <init>(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    iput-object p2, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->$source:Landroid/net/Uri;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->this$0:Lexpo/modules/imagepicker/exporters/CompressionImageExporter;

    .line 53
    invoke-static {v0}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter;->access$getAppContextProvider$p(Lexpo/modules/imagepicker/exporters/CompressionImageExporter;)Lexpo/modules/kotlin/providers/AppContextProvider;

    move-result-object v0

    invoke-interface {v0}, Lexpo/modules/kotlin/providers/AppContextProvider;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getImageLoader()Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->$source:Landroid/net/Uri;

    .line 54
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lexpo/modules/interfaces/imageloader/ImageLoaderInterface;->loadImageForManipulationFromURL(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 58
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Lexpo/modules/imagepicker/FailedToReadFileException;

    iget-object v2, p0, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->$source:Landroid/net/Uri;

    invoke-static {v2}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Lexpo/modules/imagepicker/FailedToReadFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    throw v1

    .line 55
    :cond_1
    new-instance v0, Lexpo/modules/imagepicker/MissingModuleException;

    const-string v1, "ImageLoader"

    invoke-direct {v0, v1}, Lexpo/modules/imagepicker/MissingModuleException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lexpo/modules/imagepicker/exporters/CompressionImageExporter$readBitmap$2;->invoke()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
