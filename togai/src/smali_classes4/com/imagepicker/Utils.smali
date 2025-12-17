.class public Lcom/imagepicker/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static cameraPermissionDescription:Ljava/lang/String; = "This library does not require Manifest.permission.CAMERA, if you add this permission in manifest then you have to obtain the same."

.field public static errCameraUnavailable:Ljava/lang/String; = "camera_unavailable"

.field public static errOthers:Ljava/lang/String; = "others"

.field public static errPermission:Ljava/lang/String; = "permission"

.field public static fileNamePrefix:Ljava/lang/String; = "rn_image_picker_lib_temp_"

.field public static mediaTypePhoto:Ljava/lang/String; = "photo"

.field public static mediaTypeVideo:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static collectUrisFromData(Landroid/content/Intent;)Ljava/util/List;
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

    .line 479
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 480
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 483
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 486
    :goto_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 487
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static copyUri(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 2

    .line 99
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    invoke-virtual {p2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p2, 0x2000

    :try_start_2
    new-array p2, p2, [B

    .line 105
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 108
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p2

    if-eqz p0, :cond_2

    .line 99
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_3

    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method public static createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 60
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/imagepicker/Utils;->fileNamePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createUri(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".imagepickerprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {p1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static deleteFile(Landroid/net/Uri;)V
    .locals 1

    .line 330
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static getAppSpecificStorageUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 119
    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/imagepicker/Utils;->getFileTypeFromMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_display_name"

    .line 125
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 126
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    :cond_1
    invoke-static {p1, v7}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 136
    invoke-static {p0, p1, v6}, Lcom/imagepicker/Utils;->copyUri(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    return-object p1
.end method

.method static getBase64String(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 183
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v0, 0x2000

    :try_start_2
    new-array v0, v0, [B

    .line 189
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 190
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 193
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 183
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 195
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getBitmapCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "image/jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 311
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 309
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 307
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method static getCancelMap()Lcom/facebook/react/bridge/ReadableMap;
    .locals 3

    .line 589
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "didCancel"

    const/4 v2, 0x1

    .line 590
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method static getErrorMap(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 2

    .line 580
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "errorCode"

    .line 581
    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p0, "errorMessage"

    .line 583
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 427
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getFileNameForContent(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Unknown"

    return-object p0
.end method

.method private static getFileNameForContent(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 462
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 464
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .line 466
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "_display_name"

    .line 467
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 468
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 472
    throw p0
.end method

.method private static getFilePathFromContent(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "_data"

    .line 449
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 451
    :try_start_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p0, :cond_0

    .line 457
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 455
    :cond_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 456
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 457
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 450
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p1
.end method

.method static getFileSize(Landroid/net/Uri;Landroid/content/Context;)D
    .locals 2

    .line 284
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-double v0, v0

    if-eqz p0, :cond_0

    .line 286
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-wide v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 284
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 287
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method static getFileTypeFromMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "jpg"

    if-nez p0, :cond_0

    return-object v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "image/png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "image/gif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "image/jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 326
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "png"

    return-object p0

    :pswitch_1
    const-string p0, "gif"

    return-object p0

    :pswitch_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x58a7d764 -> :sswitch_2
        -0x34688ef0 -> :sswitch_1
        -0x34686c8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getImageDimensBasedOnConstraints(IILcom/imagepicker/Options;)[I
    .locals 1

    .line 266
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/imagepicker/Options;->maxHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    if-ge v0, p0, :cond_1

    .line 271
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    int-to-float p0, p1

    mul-float/2addr v0, p0

    float-to-int p1, v0

    .line 272
    iget p0, p2, Lcom/imagepicker/Options;->maxWidth:I

    .line 275
    :cond_1
    iget v0, p2, Lcom/imagepicker/Options;->maxHeight:I

    if-ge v0, p1, :cond_2

    .line 276
    iget v0, p2, Lcom/imagepicker/Options;->maxHeight:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    .line 277
    iget p1, p2, Lcom/imagepicker/Options;->maxHeight:I

    :cond_2
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static getImageDimensions(Landroid/net/Uri;Landroid/content/Context;)[I
    .locals 4

    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :try_start_1
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getOrientation(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 163
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    .line 164
    invoke-static {v1, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 165
    invoke-static {p0}, Lcom/imagepicker/Utils;->needToSwapDimension(Ljava/lang/String;)Z

    move-result p0

    const/4 v3, 0x2

    if-eqz p0, :cond_1

    new-array p0, v3, [I

    .line 166
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v3, p0, v0

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p1, p0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 171
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p0

    :cond_1
    :try_start_3
    new-array p0, v3, [I

    .line 168
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, p0, v0

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p1, p0, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 171
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    .line 158
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    .line 172
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    filled-new-array {v0, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method static getImageResponseMap(Landroid/net/Uri;Landroid/net/Uri;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 7

    .line 494
    new-instance v0, Lcom/imagepicker/ImageMetadata;

    invoke-direct {v0, p1, p3}, Lcom/imagepicker/ImageMetadata;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 495
    invoke-static {p1, p3}, Lcom/imagepicker/Utils;->getImageDimensions(Landroid/net/Uri;Landroid/content/Context;)[I

    move-result-object v1

    .line 497
    invoke-static {p0, p3}, Lcom/imagepicker/Utils;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-static {p0, p3}, Lcom/imagepicker/Utils;->getOriginalFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 500
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "uri"

    .line 501
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "fileSize"

    .line 502
    invoke-static {p1, p3}, Lcom/imagepicker/Utils;->getFileSize(Landroid/net/Uri;Landroid/content/Context;)D

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v4, "fileName"

    .line 503
    invoke-interface {v3, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 504
    aget v4, v1, v4

    const-string v5, "width"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x1

    .line 505
    aget v1, v1, v4

    const-string v4, "height"

    invoke-interface {v3, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v1, "type"

    .line 506
    invoke-static {p1, p3}, Lcom/imagepicker/Utils;->getMimeType(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "originalPath"

    .line 507
    invoke-interface {v3, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object p0, p2, Lcom/imagepicker/Options;->includeBase64:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "base64"

    .line 510
    invoke-static {p1, p3}, Lcom/imagepicker/Utils;->getBase64String(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    iget-object p0, p2, Lcom/imagepicker/Options;->includeExtra:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "timestamp"

    .line 515
    invoke-virtual {v0}, Lcom/imagepicker/ImageMetadata;->getDateTime()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "id"

    .line 516
    invoke-interface {v3, p0, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v3
.end method

.method static getMimeType(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 399
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 401
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Lcom/imagepicker/Utils$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getMimeTypeForContent(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    const-string p0, "Unknown"

    return-object p0
.end method

.method static getMimeTypeForContent(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 416
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getFileNameForContent(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    .line 419
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 421
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method

.method static getOrientation(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string p0, "Orientation"

    .line 249
    invoke-virtual {v0, p0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getOriginalFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 438
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getFilePathFromContent(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getAppSpecificStorageUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static getResponseMap(Ljava/util/List;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/imagepicker/Options;",
            "Landroid/content/Context;",
            ")",
            "Lcom/facebook/react/bridge/ReadableMap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 549
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 551
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 552
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 555
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    invoke-static {v2, p2}, Lcom/imagepicker/Utils;->getAppSpecificStorageUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    .line 560
    :goto_1
    invoke-static {v2, p2}, Lcom/imagepicker/Utils;->isImageType(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 561
    invoke-static {v3, p2, p1}, Lcom/imagepicker/Utils;->resizeImage(Landroid/net/Uri;Landroid/content/Context;Lcom/imagepicker/Options;)Landroid/net/Uri;

    move-result-object v3

    .line 562
    invoke-static {v2, v3, p1, p2}, Lcom/imagepicker/Utils;->getImageResponseMap(Landroid/net/Uri;Landroid/net/Uri;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_2

    .line 563
    :cond_1
    invoke-static {v2, p2}, Lcom/imagepicker/Utils;->isVideoType(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 564
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 565
    invoke-static {v2, p2}, Lcom/imagepicker/Utils;->getAppSpecificStorageUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 567
    :cond_2
    invoke-static {v2, v3, p1, p2}, Lcom/imagepicker/Utils;->getVideoResponseMap(Landroid/net/Uri;Landroid/net/Uri;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupported file type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 573
    :cond_4
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    const-string p1, "assets"

    .line 574
    invoke-interface {p0, p1, v0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object p0
.end method

.method static getVideoResponseMap(Landroid/net/Uri;Landroid/net/Uri;Lcom/imagepicker/Options;Landroid/content/Context;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 6

    .line 523
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 524
    new-instance v1, Lcom/imagepicker/VideoMetadata;

    invoke-direct {v1, p1, p3}, Lcom/imagepicker/VideoMetadata;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 526
    invoke-static {p0, p3}, Lcom/imagepicker/Utils;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 527
    invoke-static {p0, p3}, Lcom/imagepicker/Utils;->getOriginalFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "uri"

    .line 529
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "fileSize"

    .line 530
    invoke-static {p1, p3}, Lcom/imagepicker/Utils;->getFileSize(Landroid/net/Uri;Landroid/content/Context;)D

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v3, "duration"

    .line 531
    invoke-virtual {v1}, Lcom/imagepicker/VideoMetadata;->getDuration()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v3, "bitrate"

    .line 532
    invoke-virtual {v1}, Lcom/imagepicker/VideoMetadata;->getBitrate()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v3, "fileName"

    .line 533
    invoke-interface {v0, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    .line 534
    invoke-static {p1, p3}, Lcom/imagepicker/Utils;->getMimeType(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "width"

    .line 535
    invoke-virtual {v1}, Lcom/imagepicker/VideoMetadata;->getWidth()I

    move-result p3

    invoke-interface {v0, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "height"

    .line 536
    invoke-virtual {v1}, Lcom/imagepicker/VideoMetadata;->getHeight()I

    move-result p3

    invoke-interface {v0, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "originalPath"

    .line 537
    invoke-interface {v0, p1, p0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object p0, p2, Lcom/imagepicker/Options;->includeExtra:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "timestamp"

    .line 541
    invoke-virtual {v1}, Lcom/imagepicker/VideoMetadata;->getDateTime()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "id"

    .line 542
    invoke-interface {v0, p0, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method static hasPermission(Landroid/app/Activity;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 178
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCameraAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.any"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isCameraPermissionFulfilled(Landroid/content/Context;Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "android.permission.CAMERA"

    const/4 v1, 0x1

    .line 350
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x1000

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez p0, :cond_0

    return v1

    .line 358
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 359
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    .line 366
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method static isContentType(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 0

    .line 389
    invoke-static {p1, p2}, Lcom/imagepicker/Utils;->getMimeType(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isImageType(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "image/"

    .line 372
    invoke-static {v0, p0, p1}, Lcom/imagepicker/Utils;->isContentType(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static isValidRequestCode(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x32c9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static isVideoType(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "video/"

    .line 376
    invoke-static {v0, p0, p1}, Lcom/imagepicker/Utils;->isContentType(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static needToSwapDimension(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x6

    .line 201
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static resizeImage(Landroid/net/Uri;Landroid/content/Context;Lcom/imagepicker/Options;)Landroid/net/Uri;
    .locals 8

    .line 209
    :try_start_0
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getImageDimensions(Landroid/net/Uri;Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 211
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-static {v2, v4, p2}, Lcom/imagepicker/Utils;->shouldResizeImage(IILcom/imagepicker/Options;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    .line 215
    :cond_0
    aget v2, v0, v1

    aget v0, v0, v3

    invoke-static {v2, v0, p2}, Lcom/imagepicker/Utils;->getImageDimensBasedOnConstraints(IILcom/imagepicker/Options;)[I

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :try_start_1
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getMimeType(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 220
    invoke-static {p0, p1}, Lcom/imagepicker/Utils;->getOrientation(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-static {v6}, Lcom/imagepicker/Utils;->needToSwapDimension(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 223
    aget v7, v0, v3

    aget v0, v0, v1

    invoke-static {v5, v7, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_1
    aget v1, v0, v1

    aget v0, v0, v3

    invoke-static {v5, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    :goto_0
    invoke-static {v4}, Lcom/imagepicker/Utils;->getFileTypeFromMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/imagepicker/Utils;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 231
    :try_start_2
    invoke-static {v4}, Lcom/imagepicker/Utils;->getBitmapCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    iget p2, p2, Lcom/imagepicker/Options;->quality:I

    invoke-virtual {v0, v4, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 232
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 234
    :cond_2
    invoke-static {v1, v6, p1}, Lcom/imagepicker/Utils;->setOrientation(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 236
    invoke-static {p0}, Lcom/imagepicker/Utils;->deleteFile(Landroid/net/Uri;)V

    .line 238
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_3

    .line 239
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v3, :cond_4

    .line 230
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v2, :cond_5

    .line 217
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public static saveToPublicDirectory(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "video"

    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "mime_type"

    const-string v2, "_display_name"

    if-eqz p2, :cond_0

    .line 86
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 95
    :goto_0
    invoke-static {p0, p2, p1}, Lcom/imagepicker/Utils;->copyUri(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static setFrontCamera(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.extras.CAMERA_FACING"

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    const/4 v1, 0x1

    .line 150
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method static setOrientation(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 254
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance p2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {p2, p0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/File;)V

    const-string p0, "Orientation"

    .line 258
    invoke-virtual {p2, p0, p1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroidx/exifinterface/media/ExifInterface;->saveAttributes()V

    :cond_1
    :goto_0
    return-void
.end method

.method static shouldResizeImage(IILcom/imagepicker/Options;)Z
    .locals 3

    .line 293
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/imagepicker/Options;->maxHeight:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p2, Lcom/imagepicker/Options;->quality:I

    if-ne v0, v2, :cond_1

    return v1

    .line 297
    :cond_1
    iget v0, p2, Lcom/imagepicker/Options;->maxWidth:I

    if-lt v0, p0, :cond_2

    iget p0, p2, Lcom/imagepicker/Options;->maxHeight:I

    if-lt p0, p1, :cond_2

    iget p0, p2, Lcom/imagepicker/Options;->quality:I

    if-ne p0, v2, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
