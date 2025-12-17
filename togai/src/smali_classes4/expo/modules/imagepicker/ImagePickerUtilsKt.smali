.class public final Lexpo/modules/imagepicker/ImagePickerUtilsKt;
.super Ljava/lang/Object;
.source "ImagePickerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/imagepicker/ImagePickerUtilsKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePickerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePickerUtils.kt\nexpo/modules/imagepicker/ImagePickerUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1#2:282\n1549#3:283\n1620#3,3:284\n*S KotlinDebug\n*F\n+ 1 ImagePickerUtils.kt\nexpo/modules/imagepicker/ImagePickerUtilsKt\n*L\n138#1:283\n138#1:284,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0080@\u00a2\u0006\u0002\u0010\u0013\u001a&\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0080@\u00a2\u0006\u0002\u0010\u0013\u001a\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0018H\u0000\u001a\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0002H\u0000\u001a\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001c\u001a\u00020\u0018H\u0002\u001a\u0014\u0010\u001d\u001a\u00020\u001e*\u00020\u001f2\u0006\u0010 \u001a\u00020\u001eH\u0000\u001a\u0012\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00020\"*\u00020#H\u0000\u001a\u000e\u0010$\u001a\u0004\u0018\u00010\u0018*\u00020\u0002H\u0000\u001a\u000c\u0010%\u001a\u00020&*\u00020\u0010H\u0000\u001a\u000c\u0010%\u001a\u00020&*\u00020\u0018H\u0000\u001a\u0014\u0010\'\u001a\u00020\u0002*\u00020\u00102\u0006\u0010(\u001a\u00020)H\u0000\u001a\u000c\u0010*\u001a\u00020\u0018*\u00020&H\u0000\u001a\u000c\u0010*\u001a\u00020\u0018*\u00020\u0018H\u0000\u001a\u0014\u0010+\u001a\u00020,*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0000\u0010\u0003\"\u0018\u0010\u0004\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0003\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0003\"\u001b\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007*\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006-"
    }
    d2 = {
        "isDownloadsProviderUri",
        "",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;)Z",
        "isMediaProviderUri",
        "isMediaStoreAssetUri",
        "items",
        "",
        "Landroid/content/ClipData$Item;",
        "Landroid/content/ClipData;",
        "getItems",
        "(Landroid/content/ClipData;)Ljava/lang/Iterable;",
        "copyExifData",
        "",
        "sourceUri",
        "targetFile",
        "Ljava/io/File;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "copyFile",
        "createOutputFile",
        "cacheDir",
        "extension",
        "",
        "getType",
        "uri",
        "getTypeFromFileUrl",
        "url",
        "extractInt",
        "",
        "Landroid/media/MediaMetadataRetriever;",
        "key",
        "getAllDataUris",
        "",
        "Landroid/content/Intent;",
        "getMediaStoreAssetId",
        "toBitmapCompressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "toContentUri",
        "context",
        "Landroid/content/Context;",
        "toImageFileExtension",
        "toMediaType",
        "Lexpo/modules/imagepicker/MediaType;",
        "expo-image-picker_release"
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
.method public static final copyExifData(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 178
    new-instance v0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;

    invoke-direct {v0, p1, p0, p2}, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyExifData$2;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {p1, v0, p3, p0, p1}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final copyFile(Landroid/net/Uri;Ljava/io/File;Landroid/content/ContentResolver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/File;",
            "Landroid/content/ContentResolver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 154
    new-instance v0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;

    invoke-direct {v0, p1, p0, p2}, Lexpo/modules/imagepicker/ImagePickerUtilsKt$copyFile$2;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {p1, v0, p3, p0, p1}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final createOutputFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const-string v0, "cacheDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImagePicker"

    .line 25
    invoke-static {p0, v0, p1}, Lexpo/modules/core/utilities/FileUtilities;->generateOutputPath(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 27
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 29
    new-instance v0, Lexpo/modules/imagepicker/FailedToCreateFileException;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p0, p1}, Lexpo/modules/imagepicker/FailedToCreateFileException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final extractInt(Landroid/media/MediaMetadataRetriever;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lexpo/modules/imagepicker/FailedToExtractVideoMetadataException;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, v0}, Lexpo/modules/imagepicker/FailedToExtractVideoMetadataException;-><init>(Ljava/io/File;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final getAllDataUris(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 133
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 137
    invoke-static {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getItems(Landroid/content/ClipData;)Ljava/lang/Iterable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 284
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 285
    check-cast v2, Landroid/content/ClipData$Item;

    .line 138
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 285
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 139
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getItems(Landroid/content/ClipData;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            ")",
            "Ljava/lang/Iterable<",
            "Landroid/content/ClipData$Item;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1;

    invoke-direct {v0, p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt$items$1;-><init>(Landroid/content/ClipData;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public static final getMediaStoreAssetId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-static {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->isMediaStoreAssetUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 276
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    new-array v0, p0, [C

    aput-char v3, v0, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_0
    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final getType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getTypeFromFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    return-object p0

    .line 36
    :cond_1
    new-instance p0, Lexpo/modules/imagepicker/FailedToDeduceTypeException;

    invoke-direct {p0}, Lexpo/modules/imagepicker/FailedToDeduceTypeException;-><init>()V

    throw p0
.end method

.method private static final getTypeFromFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final isDownloadsProviderUri(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.downloads.documents"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isMediaProviderUri(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.media.documents"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isMediaStoreAssetUri(Landroid/net/Uri;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-static {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->isMediaProviderUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-static {p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->isDownloadsProviderUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getDocumentId(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "msf:"

    .line 266
    invoke-static {p0, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final toBitmapCompressFormat(Ljava/io/File;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "png"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 56
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p0
.end method

.method public static final toBitmapCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "png"

    const/4 v1, 0x1

    .line 89
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "gif"

    .line 90
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bmp"

    .line 91
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "webp"

    .line 92
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "jpeg"

    .line 97
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Image file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is of unsupported type. Falling back to JPEG instead."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExponentImagePicker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 94
    :cond_2
    :goto_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    return-object p0
.end method

.method public static final toContentUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ImagePickerFileProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 49
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method public static final toImageFileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lexpo/modules/imagepicker/ImagePickerUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string p0, ".jpeg"

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Compress format not supported \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, ".png"

    :goto_0
    return-object p0
.end method

.method public static final toImageFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "png"

    const/4 v1, 0x1

    .line 68
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ".png"

    goto :goto_0

    :cond_0
    const-string v0, "gif"

    .line 69
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ".gif"

    goto :goto_0

    :cond_1
    const-string v0, "bmp"

    .line 70
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, ".bmp"

    goto :goto_0

    :cond_2
    const-string v0, "webp"

    .line 71
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, ".webp"

    goto :goto_0

    :cond_3
    const-string v0, "jpeg"

    .line 72
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ".jpeg"

    if-nez v0, :cond_4

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Image file "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is of unsupported type. Falling back to JPEG instead."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExponentImagePicker"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final toMediaType(Landroid/net/Uri;Landroid/content/ContentResolver;)Lexpo/modules/imagepicker/MediaType;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p1, p0}, Lexpo/modules/imagepicker/ImagePickerUtilsKt;->getType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 82
    check-cast p0, Ljava/lang/CharSequence;

    const-string p1, "image/"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lexpo/modules/imagepicker/MediaType;->IMAGE:Lexpo/modules/imagepicker/MediaType;

    goto :goto_0

    :cond_0
    const-string p1, "video/"

    .line 83
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lexpo/modules/imagepicker/MediaType;->VIDEO:Lexpo/modules/imagepicker/MediaType;

    :goto_0
    return-object p0

    .line 84
    :cond_1
    new-instance p0, Lexpo/modules/imagepicker/FailedToDeduceTypeException;

    invoke-direct {p0}, Lexpo/modules/imagepicker/FailedToDeduceTypeException;-><init>()V

    throw p0
.end method
