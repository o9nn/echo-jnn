.class final Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageExporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/exporters/ImageExportResult;->exif$suspendImpl(Lexpo/modules/imagepicker/exporters/ImageExportResult;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageExporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageExporter.kt\nexpo/modules/imagepicker/exporters/ImageExportResult$exif$2\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n36#2:73\n766#3:74\n857#3,2:75\n1855#3,2:77\n*S KotlinDebug\n*F\n+ 1 ImageExporter.kt\nexpo/modules/imagepicker/exporters/ImageExportResult$exif$2\n*L\n49#1:73\n54#1:74\n54#1:75,2\n55#1:77,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/os/Bundle;",
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

    iput-object p1, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->$contentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/os/Bundle;
    .locals 12

    iget-object v0, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->$contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;

    .line 49
    invoke-static {v1}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->access$getImageFile$p(Lexpo/modules/imagepicker/exporters/ImageExportResult;)Ljava/io/File;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    .line 50
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 51
    new-instance v4, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v4, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 53
    sget-object v2, Lexpo/modules/imagepicker/ImagePickerConstants;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerConstants;

    invoke-virtual {v2}, Lexpo/modules/imagepicker/ImagePickerConstants;->getEXIF_TAGS()Ljava/lang/Iterable;

    move-result-object v2

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 75
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    .line 54
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 75
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 74
    check-cast v5, Ljava/lang/Iterable;

    .line 77
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    .line 55
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 56
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x4f08842f

    if-eq v10, v11, :cond_6

    const v6, -0x352a9fef    # -6991880.5f

    if-eq v10, v6, :cond_4

    const v6, 0x197ef

    if-eq v10, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "int"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v4, v5, v8}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const-string v6, "string"

    .line 56
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 57
    :cond_5
    invoke-virtual {v4, v5}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v8, "double"

    .line 56
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    .line 59
    :cond_7
    invoke-virtual {v4, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 63
    :cond_8
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v5, "GPSLatitude"

    .line 64
    aget-wide v8, v2, v8

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v5, "GPSLongitude"

    const/4 v8, 0x1

    .line 65
    aget-wide v8, v2, v8

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "GPSAltitude"

    .line 66
    invoke-virtual {v4, v6, v7}, Landroidx/exifinterface/media/ExifInterface;->getAltitude(D)D

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_9
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 69
    :cond_a
    new-instance v0, Lexpo/modules/imagepicker/FailedToReadFileException;

    iget-object v2, p0, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->this$0:Lexpo/modules/imagepicker/exporters/ImageExportResult;

    invoke-static {v2}, Lexpo/modules/imagepicker/exporters/ImageExportResult;->access$getImageFile$p(Lexpo/modules/imagepicker/exporters/ImageExportResult;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Lexpo/modules/imagepicker/FailedToReadFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lexpo/modules/imagepicker/exporters/ImageExportResult$exif$2;->invoke()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
