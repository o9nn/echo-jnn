.class public final Lexpo/modules/medialibrary/MediaLibraryUtils;
.super Ljava/lang/Object;
.source "MediaLibraryUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaLibraryUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaLibraryUtils.kt\nexpo/modules/medialibrary/MediaLibraryUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,259:1\n1#2:260\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00010B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J9\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0012\u0010\t\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u0008\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ1\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0010\u0011\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00080\n\"\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u0012J&\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000f2\u0006\u0010\u0005\u001a\u00020\u00062\u0010\u0010\u0011\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u000fJ\u001a\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001b2\u0006\u0010\u001c\u001a\u00020\u0008J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001e2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00082\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0014J\u0012\u0010#\u001a\u0004\u0018\u00010\u00082\u0006\u0010$\u001a\u00020\u0008H\u0002J\u0018\u0010%\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0018\u001a\u00020\u0019J\u0016\u0010&\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\u0008J\u0010\u0010(\u001a\u00020\u00142\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0008J\u001d\u0010)\u001a\u00020\u00082\u0010\u0010*\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00080\n\u00a2\u0006\u0002\u0010+J\u0016\u0010,\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020\u0016J\u0016\u0010/\u001a\u00020\u00162\u0006\u0010-\u001a\u00020\u00162\u0006\u0010.\u001a\u00020\u0016\u00a8\u00061"
    }
    d2 = {
        "Lexpo/modules/medialibrary/MediaLibraryUtils;",
        "",
        "()V",
        "deleteAssets",
        "",
        "context",
        "Landroid/content/Context;",
        "selection",
        "",
        "selectionArgs",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V",
        "getAssetsById",
        "",
        "Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;",
        "assetsId",
        "(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;",
        "getAssetsUris",
        "Landroid/net/Uri;",
        "getEnvDirectoryForAssetType",
        "Ljava/io/File;",
        "mimeType",
        "useCameraDir",
        "",
        "getFileNameAndExtension",
        "Lkotlin/Pair;",
        "name",
        "getManifestPermissions",
        "",
        "getMimeType",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "uri",
        "getMimeTypeFromFileUrl",
        "url",
        "getRelativePathForAssetType",
        "hasManifestPermission",
        "permission",
        "mimeTypeToExternalUri",
        "queryPlaceholdersFor",
        "assetIds",
        "([Ljava/lang/String;)Ljava/lang/String;",
        "safeCopyFile",
        "src",
        "destDir",
        "safeMoveFile",
        "AssetFile",
        "expo-media-library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/medialibrary/MediaLibraryUtils;

    invoke-direct {v0}, Lexpo/modules/medialibrary/MediaLibraryUtils;-><init>()V

    sput-object v0, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getManifestPermissions(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "getPackageManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 240
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "expo-media-library"

    const-string v1, "Failed to list AndroidManifest.xml permissions"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 244
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private final getMimeTypeFromFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 181
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 182
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final deleteAssets(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 9

    const-string v0, "Could not delete file."

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "promise"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "_data"

    .line 79
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 82
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v4

    const/4 v8, 0x0

    move-object v6, p2

    move-object v7, p3

    .line 81
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    move-object p3, p2

    check-cast p3, Landroid/database/Cursor;

    if-eqz p3, :cond_3

    .line 91
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v3, v5, :cond_0

    .line 93
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 94
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 95
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "withAppendedId(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 99
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 103
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_data=?"

    .line 105
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v4, v5, v6, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_1
    new-instance p1, Lexpo/modules/medialibrary/AssetFileException;

    invoke-direct {p1, v0}, Lexpo/modules/medialibrary/AssetFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x1

    .line 112
    invoke-interface {p4, p1}, Lexpo/modules/kotlin/Promise;->resolve(Z)V

    .line 114
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-static {p2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 89
    :cond_3
    :try_start_3
    new-instance p1, Lexpo/modules/medialibrary/AssetFileException;

    const-string p3, "Could not delete assets. Cursor is null."

    invoke-direct {p1, p3}, Lexpo/modules/medialibrary/AssetFileException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 87
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_5
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "E_UNABLE_TO_DELETE"

    .line 123
    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p4, p2, v0, p1}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "Could not delete asset: need WRITE_EXTERNAL_STORAGE permission."

    .line 119
    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "E_UNABLE_TO_SAVE_PERMISSION"

    .line 116
    invoke-interface {p4, p3, p2, p1}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final varargs getAssetsById(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;",
            ">;"
        }
    .end annotation

    const-string v0, "getString(...)"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "assetsId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "bucket_id"

    const-string v4, "mime_type"

    .line 145
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 147
    invoke-virtual {p0, p2}, Lexpo/modules/medialibrary/MediaLibraryUtils;->queryPlaceholdersFor([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id IN ( "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " )"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 149
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v6

    const/4 v10, 0x0

    move-object v9, p2

    .line 148
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 154
    :try_start_0
    move-object v3, p1

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 157
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    array-length p2, p2

    if-ne v5, p2, :cond_2

    .line 160
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    .line 161
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 163
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 165
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 166
    new-instance v8, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    .line 167
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 168
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {v8, v5, v6, v7}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v8}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v8}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_0
    new-instance p2, Lexpo/modules/medialibrary/AssetFileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist or isn\'t file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lexpo/modules/medialibrary/AssetFileException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 v0, 0x0

    .line 176
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p2

    .line 158
    :cond_2
    :try_start_1
    new-instance p2, Lexpo/modules/medialibrary/AssetFileException;

    const-string v0, "Could not get all of the requested assets"

    invoke-direct {p2, v0}, Lexpo/modules/medialibrary/AssetFileException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 156
    :cond_3
    new-instance p2, Lexpo/modules/medialibrary/AssetFileException;

    const-string v0, "Could not get assets. Query returns null."

    invoke-direct {p2, v0}, Lexpo/modules/medialibrary/AssetFileException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 176
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getAssetsUris(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v1, ","

    .line 190
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " )"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string p2, "_id"

    const-string v7, "mime_type"

    .line 192
    filled-new-array {p2, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 194
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    .line 193
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/io/Closeable;

    .line 199
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    .line 200
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 202
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 203
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 204
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    .line 205
    invoke-virtual {v3, v2}, Lexpo/modules/medialibrary/MediaLibraryUtils;->mimeTypeToExternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "withAppendedId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 199
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final getEnvDirectoryForAssetType(Ljava/lang/String;Z)Ljava/io/File;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "It uses deprecated Android method under the hood. See implementation for details."
    .end annotation

    .line 234
    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getRelativePathForAssetType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string p2, "getExternalStoragePublicDirectory(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getFileNameAndExtension(Ljava/lang/String;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 36
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 37
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getMimeTypeFromFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final getRelativePathForAssetType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const-string v0, "DIRECTORY_DCIM"

    const-string v1, "DIRECTORY_PICTURES"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 222
    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "image"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "video"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v2, :cond_2

    :goto_0
    if-eqz p2, :cond_1

    .line 223
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 224
    check-cast p1, Ljava/lang/CharSequence;

    const-string v6, "audio"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {p1, v6, v5, v4, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-ne p1, v2, :cond_3

    .line 225
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const-string p2, "DIRECTORY_MUSIC"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 229
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public final hasManifestPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getManifestPermissions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final mimeTypeToExternalUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    const-string v0, "EXTERNAL_CONTENT_URI"

    if-nez p1, :cond_0

    .line 213
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v1, "image"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "video"

    .line 215
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "audio"

    .line 216
    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final queryPlaceholdersFor([Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "assetIds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "?"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    .line 136
    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    const-string v0, ","

    .line 137
    move-object v8, v0

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v15, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final safeCopyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getFileNameAndExtension(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    .line 59
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x7fff

    if-gt v3, v4, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File name suffix limit reached (32767)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v7, p1

    check-cast v7, Ljava/nio/channels/FileChannel;

    .line 67
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v1, v8

    check-cast v1, Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    .line 68
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-object v6, v1

    check-cast v6, Ljava/nio/channels/WritableByteChannel;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v1

    .line 69
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const/4 p2, 0x0

    .line 73
    :try_start_2
    invoke-static {v8, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 70
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 71
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not save file to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " Not enough space."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p2

    .line 73
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v8, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final safeMoveFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1, p2}, Lexpo/modules/medialibrary/MediaLibraryUtils;->safeCopyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2
.end method
