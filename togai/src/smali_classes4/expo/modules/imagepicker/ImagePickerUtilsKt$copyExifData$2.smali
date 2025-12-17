.class final Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ImagePickerUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/imagepicker/ImagePickerUtilsKt;->copyExifData(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePickerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePickerUtils.kt\nexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n766#2:282\n857#2,2:283\n1549#2:285\n1620#2,3:286\n766#2:289\n857#2,2:290\n1855#2,2:292\n*S KotlinDebug\n*F\n+ 1 ImagePickerUtils.kt\nexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2\n*L\n197#1:282\n197#1:283,2\n198#1:285\n198#1:286,3\n199#1:289\n199#1:290,2\n200#1:292,2\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$targetFile:Ljava/io/File;

    iput-object p2, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$sourceUri:Landroid/net/Uri;

    iput-object p3, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$contentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    iget-object v0, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$targetFile:Ljava/io/File;

    .line 179
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$sourceUri:Landroid/net/Uri;

    .line 180
    invoke-virtual {v1, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PixelYDimension"

    const-string v1, "Orientation"

    const-string v2, "ImageLength"

    const-string v3, "ImageWidth"

    const-string v4, "PixelXDimension"

    .line 189
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$sourceUri:Landroid/net/Uri;

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast v1, Ljava/io/Closeable;

    iget-object v3, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$targetFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v4, v1

    check-cast v4, Ljava/io/InputStream;

    .line 194
    new-instance v5, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v5, v4}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 195
    new-instance v4, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v4, v3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    .line 196
    sget-object v6, Lexpo/modules/imagepicker/ImagePickerConstants;->INSTANCE:Lexpo/modules/imagepicker/ImagePickerConstants;

    invoke-virtual {v6}, Lexpo/modules/imagepicker/ImagePickerConstants;->getEXIF_TAGS()Ljava/lang/Iterable;

    move-result-object v6

    .line 282
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 283
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lkotlin/Pair;

    .line 197
    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    .line 283
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_2
    check-cast v7, Ljava/util/List;

    .line 282
    check-cast v7, Ljava/lang/Iterable;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 286
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 287
    check-cast v7, Lkotlin/Pair;

    .line 198
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 287
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 285
    check-cast v0, Ljava/lang/Iterable;

    .line 289
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 290
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    .line 199
    invoke-virtual {v7}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 290
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 291
    :cond_5
    check-cast v5, Ljava/util/List;

    .line 289
    check-cast v5, Ljava/lang/Iterable;

    .line 292
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    .line 200
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 203
    :cond_6
    :try_start_2
    invoke-virtual {v4}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 205
    :try_start_5
    new-instance v2, Lexpo/modules/imagepicker/FailedToWriteExifDataToFileException;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v2, v3, v0}, Lexpo/modules/imagepicker/FailedToWriteExifDataToFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    .line 193
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_7
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_8

    return-void

    .line 207
    :cond_8
    new-instance v0, Lexpo/modules/imagepicker/FailedToReadFileException;

    iget-object v1, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$sourceUri:Landroid/net/Uri;

    invoke-static {v1}, Landroidx/core/net/UriKt;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lexpo/modules/imagepicker/FailedToReadFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    .line 209
    new-instance v1, Lexpo/modules/imagepicker/FailedToWriteFileException;

    iget-object v2, p0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;->$targetFile:Ljava/io/File;

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v0}, Lexpo/modules/imagepicker/FailedToWriteFileException;-><init>(Ljava/io/File;Ljava/lang/Throwable;)V

    throw v1
.end method
