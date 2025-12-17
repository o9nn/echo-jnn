.class public final Lexpo/modules/medialibrary/assets/AssetUtilsKt;
.super Ljava/lang/Object;
.source "AssetUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetUtils.kt\nexpo/modules/medialibrary/assets/AssetUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,303:1\n1#2:304\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a<\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003\u001a\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010\u001a\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H\u0007\u001a\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0008\u001a\u00020\t\u001a*\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0003\u001a<\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u001a2\u0006\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001e\u001a=\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u00012\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010$2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020&\u00a2\u0006\u0002\u0010\'\u00a8\u0006("
    }
    d2 = {
        "exportMediaType",
        "",
        "mediaType",
        "",
        "getAssetDimensionsFromCursor",
        "Lkotlin/Pair;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "exifInterface",
        "Landroidx/exifinterface/media/ExifInterface;",
        "cursor",
        "Landroid/database/Cursor;",
        "localUriColumnIndex",
        "getExifFullInfo",
        "",
        "response",
        "Landroid/os/Bundle;",
        "getExifLocationForUri",
        "photoUri",
        "Landroid/net/Uri;",
        "getExifLocationLegacy",
        "maybeRotateAssetSize",
        "width",
        "height",
        "orientation",
        "putAssetsInfo",
        "",
        "limit",
        "offset",
        "resolveWithFullInfo",
        "",
        "queryAssetInfo",
        "context",
        "Landroid/content/Context;",
        "selection",
        "selectionArgs",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLexpo/modules/kotlin/Promise;)V",
        "expo-media-library_release"
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
.method public static final exportMediaType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 288
    sget-object p0, Lexpo/modules/medialibrary/MediaType;->UNKNOWN:Lexpo/modules/medialibrary/MediaType;

    goto :goto_0

    .line 287
    :cond_0
    sget-object p0, Lexpo/modules/medialibrary/MediaType;->VIDEO:Lexpo/modules/medialibrary/MediaType;

    goto :goto_0

    .line 286
    :cond_1
    sget-object p0, Lexpo/modules/medialibrary/MediaType;->AUDIO:Lexpo/modules/medialibrary/MediaType;

    goto :goto_0

    .line 284
    :cond_2
    sget-object p0, Lexpo/modules/medialibrary/MediaType;->PHOTO:Lexpo/modules/medialibrary/MediaType;

    .line 289
    :goto_0
    invoke-virtual {p0}, Lexpo/modules/medialibrary/MediaType;->getApiName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getAssetDimensionsFromCursor(Landroid/content/ContentResolver;Landroidx/exifinterface/media/ExifInterface;Landroid/database/Cursor;II)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroidx/exifinterface/media/ExifInterface;",
            "Landroid/database/Cursor;",
            "II)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "expo-media-library"

    const-string v1, "contentResolver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cursor"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    const-string v2, "r"

    .line 228
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v1, p0

    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    .line 229
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    check-cast v2, Ljava/lang/AutoCloseable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v3, v2

    check-cast v3, Landroid/media/MediaMetadataRetriever;

    .line 230
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 v1, 0x12

    .line 232
    invoke-virtual {v3, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x13

    .line 234
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x18

    .line 236
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 238
    invoke-static {v1, v4, v3}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->maybeRotateAssetSize(III)Lkotlin/Pair;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    invoke-static {v2, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {p0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v2, v1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
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
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaMetadataRetriever finished with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 244
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentResolver failed to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaMetadataRetriever unexpectedly returned non-integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string p0, "width"

    .line 250
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const-string v0, "height"

    .line 251
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "orientation"

    .line 252
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 253
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 254
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 255
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    if-lez p0, :cond_1

    if-gtz v0, :cond_2

    .line 259
    :cond_1
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 260
    invoke-static {p4, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 261
    iget p3, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 262
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move p0, p3

    :cond_2
    if-eqz p1, :cond_4

    const-string p3, "Orientation"

    .line 265
    invoke-virtual {p1, p3, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_3

    const/4 p3, 0x7

    if-eq p1, p3, :cond_3

    const/16 p3, 0x8

    if-eq p1, p3, :cond_3

    goto :goto_1

    :cond_3
    const/16 p2, 0x5a

    .line 277
    :cond_4
    :goto_1
    invoke-static {p0, v0, p2}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->maybeRotateAssetSize(III)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final getExifFullInfo(Landroidx/exifinterface/media/ExifInterface;Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "exifInterface"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXIF_TAGS()[[Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_7

    aget-object v5, v1, v4

    aget-object v6, v5, v3

    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 156
    invoke-virtual {p0, v5}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 157
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x4f08842f

    if-eq v7, v8, :cond_4

    const v8, -0x352a9fef    # -6991880.5f

    if-eq v7, v8, :cond_2

    const v8, 0x197ef

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "int"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {p0, v5, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string v7, "string"

    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {p0, v5}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v7, "double"

    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v6, 0x0

    .line 160
    invoke-virtual {p0, v5, v6, v7}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    const-string p0, "exif"

    .line 164
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static final getExifLocationForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "photoUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-static {p1}, Landroid/provider/MediaStore;->setRequireOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "setRequireOriginal(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v1, p0

    check-cast v1, Ljava/io/InputStream;

    .line 181
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 182
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 183
    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    .line 184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v6, "latitude"

    .line 185
    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "longitude"

    .line 186
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 180
    :goto_0
    :try_start_2
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_1
    return-object v0

    .line 194
    :catch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot access ExifInterface because of missing ACCESS_MEDIA_LOCATION permission"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse EXIF tags for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "expo-media-library"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public static final getExifLocationLegacy(Landroidx/exifinterface/media/ExifInterface;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "exifInterface"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 207
    aget-wide v1, p0, v1

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v1, 0x1

    .line 208
    aget-wide v1, p0, v1

    const-string p0, "longitude"

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static final maybeRotateAssetSize(III)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    rem-int/lit16 p2, p2, 0xb4

    const/16 v0, 0x5a

    if-ne p2, v0, :cond_0

    .line 298
    new-instance p2, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :cond_0
    new-instance p2, Lkotlin/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p2
.end method

.method public static final putAssetsInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/util/List;IIZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;IIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "contentResolver"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursor"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_id"

    .line 95
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "_display_name"

    .line 96
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "media_type"

    .line 97
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "datetaken"

    .line 98
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "date_modified"

    .line 99
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "duration"

    .line 100
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "_data"

    .line 101
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v0, "bucket_id"

    .line 102
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move/from16 v0, p4

    .line 103
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move/from16 v14, p3

    move v13, v0

    :goto_0
    if-ge v13, v14, :cond_4

    .line 107
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 109
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move/from16 v16, v4

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "file://"

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v17, v6

    const/4 v6, 0x1

    if-ne v14, v6, :cond_1

    .line 115
    :try_start_0
    new-instance v6, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v6, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 p4, v13

    goto :goto_2

    :catch_0
    move-exception v0

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 p4, v13

    const-string v13, "Could not parse EXIF tags for "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "expo-media-library"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move/from16 p4, v13

    :goto_1
    const/4 v6, 0x0

    .line 122
    :goto_2
    invoke-static {v1, v6, v2, v14, v11}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->getAssetDimensionsFromCursor(Landroid/content/ContentResolver;Landroidx/exifinterface/media/ExifInterface;Landroid/database/Cursor;II)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 121
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move/from16 v18, v11

    .line 123
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v3, "id"

    .line 124
    invoke-virtual {v11, v3, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "filename"

    .line 125
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uri"

    .line 126
    invoke-virtual {v11, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mediaType"

    .line 127
    invoke-static {v14}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->exportMediaType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "width"

    int-to-long v13, v13

    .line 128
    invoke-virtual {v11, v1, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "height"

    int-to-long v13, v0

    .line 129
    invoke-virtual {v11, v1, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "creationTime"

    .line 130
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v11, v0, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 131
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v13

    const-string v3, "modificationTime"

    invoke-virtual {v11, v3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 132
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v13

    invoke-virtual {v11, v9, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "albumId"

    .line 133
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_3

    if-eqz v6, :cond_3

    .line 136
    invoke-static {v6, v11}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->getExifFullInfo(Landroidx/exifinterface/media/ExifInterface;Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    .line 139
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->getExifLocationForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_2
    move-object/from16 v1, p0

    .line 142
    invoke-static {v6}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->getExifLocationLegacy(Landroidx/exifinterface/media/ExifInterface;)Landroid/os/Bundle;

    move-result-object v0

    :goto_3
    const-string v3, "location"

    .line 144
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "localUri"

    .line 145
    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object/from16 v1, p0

    .line 147
    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v3, p2

    .line 148
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, p4, 0x1

    move/from16 v14, p3

    move/from16 v4, v16

    move/from16 v6, v17

    move/from16 v11, v18

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static final queryAssetInfo(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLexpo/modules/kotlin/Promise;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 45
    :try_start_0
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v2

    .line 46
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getASSET_PROJECTION()[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 44
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :try_start_1
    move-object v2, p1

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 54
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-ne p2, v0, :cond_0

    .line 55
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p2

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p3

    invoke-static/range {v1 .. v6}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->putAssetsInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/util/List;IIZ)V

    .line 61
    invoke-interface {p4, p2}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {p4, v7}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 66
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    invoke-static {p1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 52
    :cond_1
    :try_start_3
    new-instance p0, Lexpo/modules/medialibrary/AssetQueryException;

    invoke-direct {p0}, Lexpo/modules/medialibrary/AssetQueryException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 50
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/lang/Throwable;

    const-string p2, "E_NO_PERMISSIONS"

    invoke-interface {p4, p2, p1, p0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Could not read file"

    .line 74
    check-cast p0, Ljava/lang/Throwable;

    const-string p2, "E_IO_EXCEPTION"

    invoke-interface {p4, p2, p1, p0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p0

    const-string p1, "Could not get asset: need READ_EXTERNAL_STORAGE permission."

    .line 71
    check-cast p0, Ljava/lang/Throwable;

    const-string p2, "E_UNABLE_TO_LOAD_PERMISSION"

    .line 68
    invoke-interface {p4, p2, p1, p0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
