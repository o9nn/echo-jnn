.class public final Lexpo/modules/medialibrary/assets/CreateAsset;
.super Ljava/lang/Object;
.source "CreateAsset.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateAsset.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateAsset.kt\nexpo/modules/medialibrary/assets/CreateAsset\n+ 2 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n*L\n1#1,170:1\n12#2:171\n12#2:172\n*S KotlinDebug\n*F\n+ 1 CreateAsset.kt\nexpo/modules/medialibrary/assets/CreateAsset\n*L\n95#1:171\n119#1:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0003J\n\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0003J\u0006\u0010\u0014\u001a\u00020\u0012J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0018\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u000eH\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/medialibrary/assets/CreateAsset;",
        "",
        "context",
        "Landroid/content/Context;",
        "uri",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "resolveWithAdditionalData",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Lexpo/modules/kotlin/Promise;Z)V",
        "isFileExtensionPresent",
        "()Z",
        "mUri",
        "Landroid/net/Uri;",
        "createAssetFileLegacy",
        "Ljava/io/File;",
        "createAssetUsingContentResolver",
        "",
        "createContentResolverAssetEntry",
        "execute",
        "normalizeAssetUri",
        "writeFileContentsToAsset",
        "localFile",
        "assetUri",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final mUri:Landroid/net/Uri;

.field private final promise:Lexpo/modules/kotlin/Promise;

.field private final resolveWithAdditionalData:Z


# direct methods
.method public static synthetic $r8$lambda$F3UPQxCt0yJUQPtU8Q7Yqr5elVo(Lexpo/modules/medialibrary/assets/CreateAsset;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/medialibrary/assets/CreateAsset;->execute$lambda$6(Lexpo/modules/medialibrary/assets/CreateAsset;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lexpo/modules/medialibrary/assets/CreateAsset;-><init>(Landroid/content/Context;Ljava/lang/String;Lexpo/modules/kotlin/Promise;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lexpo/modules/kotlin/Promise;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->context:Landroid/content/Context;

    iput-object p3, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->promise:Lexpo/modules/kotlin/Promise;

    iput-boolean p4, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->resolveWithAdditionalData:Z

    .line 31
    invoke-direct {p0, p2}, Lexpo/modules/medialibrary/assets/CreateAsset;->normalizeAssetUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lexpo/modules/kotlin/Promise;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/medialibrary/assets/CreateAsset;-><init>(Landroid/content/Context;Ljava/lang/String;Lexpo/modules/kotlin/Promise;Z)V

    return-void
.end method

.method private final createAssetFileLegacy()Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    sget-object v1, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    .line 117
    sget-object v2, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    iget-object v3, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "getContentResolver(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 116
    invoke-virtual {v1, v2, v3}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getEnvDirectoryForAssetType(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    sget-object v2, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    invoke-virtual {v2, v0, v1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->safeCopyFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Lexpo/modules/medialibrary/AssetFileException;

    const-string v1, "Could not create asset record. Related file does not exist."

    invoke-direct {v0, v1}, Lexpo/modules/medialibrary/AssetFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    new-instance v0, Lexpo/modules/medialibrary/AssetFileException;

    const-string v1, "Could not guess file type."

    invoke-direct {v0, v1}, Lexpo/modules/medialibrary/AssetFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final createAssetUsingContentResolver()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lexpo/modules/medialibrary/assets/CreateAsset;->createContentResolverAssetEntry()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lexpo/modules/medialibrary/assets/CreateAsset;->writeFileContentsToAsset(Ljava/io/File;Landroid/net/Uri;)V

    iget-boolean v1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->resolveWithAdditionalData:Z

    if-eqz v1, :cond_0

    .line 102
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->context:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->promise:Lexpo/modules/kotlin/Promise;

    const-string v4, "_id=?"

    .line 103
    invoke-static {v1, v4, v0, v2, v3}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->queryAssetInfo(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLexpo/modules/kotlin/Promise;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->promise:Lexpo/modules/kotlin/Promise;

    const/4 v1, 0x0

    .line 105
    invoke-interface {v0, v1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v0, Lexpo/modules/medialibrary/ContentEntryException;

    invoke-direct {v0}, Lexpo/modules/medialibrary/ContentEntryException;-><init>()V

    throw v0
.end method

.method private final createContentResolverAssetEntry()Landroid/net/Uri;
    .locals 8

    iget-object v0, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->context:Landroid/content/Context;

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    sget-object v1, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->mUri:Landroid/net/Uri;

    .line 52
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 53
    sget-object v3, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getRelativePathForAssetType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 55
    sget-object v5, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    invoke-virtual {v5, v1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->mimeTypeToExternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 56
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "_display_name"

    .line 57
    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mime_type"

    .line 58
    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "relative_path"

    .line 59
    invoke-virtual {v6, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_pending"

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static final execute$lambda$6(Lexpo/modules/medialibrary/assets/CreateAsset;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 149
    iget-boolean p2, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->resolveWithAdditionalData:Z

    if-eqz p2, :cond_0

    .line 151
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iget-object p0, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->promise:Lexpo/modules/kotlin/Promise;

    const-string v1, "_data=?"

    invoke-static {p2, v1, p1, v0, p0}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->queryAssetInfo(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLexpo/modules/kotlin/Promise;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->promise:Lexpo/modules/kotlin/Promise;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 147
    :cond_1
    new-instance p0, Lexpo/modules/medialibrary/AssetException;

    invoke-direct {p0}, Lexpo/modules/medialibrary/AssetException;-><init>()V

    throw p0
.end method

.method private final isFileExtensionPresent()Z
    .locals 5

    iget-object v0, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->mUri:Landroid/net/Uri;

    .line 42
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "."

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private final normalizeAssetUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "/"

    const/4 v3, 0x0

    .line 34
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 36
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method private final writeFileContentsToAsset(Ljava/io/File;Landroid/net/Uri;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Could not save file to "

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object v8, p1

    check-cast v8, Ljava/nio/channels/FileChannel;

    .line 73
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type java.io.FileOutputStream"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v2, v9

    check-cast v2, Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x0

    .line 74
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v7, v2

    check-cast v7, Ljava/nio/channels/WritableByteChannel;

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v2

    .line 75
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 79
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-static {v9, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    invoke-static {p1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 83
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "is_pending"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    invoke-virtual {v1, p2, p1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    :try_start_3
    invoke-virtual {v1, p2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " Not enough space."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
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
    invoke-static {v9, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    .line 72
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final execute()V
    .locals 4

    .line 131
    invoke-direct {p0}, Lexpo/modules/medialibrary/assets/CreateAsset;->isFileExtensionPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 136
    invoke-direct {p0}, Lexpo/modules/medialibrary/assets/CreateAsset;->createAssetUsingContentResolver()V

    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lexpo/modules/medialibrary/assets/CreateAsset;->createAssetFileLegacy()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 141
    new-instance v0, Lexpo/modules/medialibrary/assets/CreateAsset$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/medialibrary/assets/CreateAsset$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/medialibrary/assets/CreateAsset;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "Could not create asset."

    .line 166
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "E_UNABLE_TO_SAVE"

    invoke-interface {v1, v3, v2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "Could not get asset: need READ_EXTERNAL_STORAGE permission."

    .line 163
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "E_UNABLE_TO_LOAD_PERMISSION"

    .line 160
    invoke-interface {v1, v3, v2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/CreateAsset;->promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "Unable to copy file into external storage."

    .line 158
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "E_IO_EXCEPTION"

    invoke-interface {v1, v3, v2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 132
    :cond_1
    new-instance v0, Lexpo/modules/medialibrary/AssetFileException;

    const-string v1, "Could not get the file\'s extension."

    invoke-direct {v0, v1}, Lexpo/modules/medialibrary/AssetFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
