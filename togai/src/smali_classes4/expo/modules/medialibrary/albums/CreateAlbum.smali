.class public final Lexpo/modules/medialibrary/albums/CreateAlbum;
.super Ljava/lang/Object;
.source "CreateAlbum.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateAlbum.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateAlbum.kt\nexpo/modules/medialibrary/albums/CreateAlbum\n+ 2 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n12#2:70\n12#2:72\n1#3:71\n*S KotlinDebug\n*F\n+ 1 CreateAlbum.kt\nexpo/modules/medialibrary/albums/CreateAlbum\n*L\n28#1:70\n34#1:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/CreateAlbum;",
        "",
        "context",
        "Landroid/content/Context;",
        "albumName",
        "",
        "assetId",
        "copyAsset",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLexpo/modules/kotlin/Promise;)V",
        "mStrategy",
        "Lexpo/modules/medialibrary/albums/AssetFileStrategy;",
        "createAlbum",
        "Ljava/io/File;",
        "mimeType",
        "execute",
        "",
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
.field private final albumName:Ljava/lang/String;

.field private final assetId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final mStrategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

.field private final promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method public static synthetic $r8$lambda$pZ0whKN4Mvf9PLeKZ4O0DxlxgMU(Lexpo/modules/medialibrary/albums/CreateAlbum;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/medialibrary/albums/CreateAlbum;->execute$lambda$3(Lexpo/modules/medialibrary/albums/CreateAlbum;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->albumName:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->assetId:Ljava/lang/String;

    iput-object p5, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->promise:Lexpo/modules/kotlin/Promise;

    .line 24
    sget-object p1, Lexpo/modules/medialibrary/albums/AssetFileStrategy;->Companion:Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->getCopyStrategy()Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->getMoveStrategy()Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->mStrategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    return-void
.end method

.method private final createAlbum(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 27
    sget-object v0, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getEnvDirectoryForAssetType(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->albumName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 35
    :cond_2
    new-instance p1, Lexpo/modules/medialibrary/AlbumException;

    const-string v0, "Could not create album directory."

    invoke-direct {p1, v0}, Lexpo/modules/medialibrary/AlbumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_3
    new-instance p1, Lexpo/modules/medialibrary/AssetFileException;

    const-string v0, "Could not guess asset type."

    invoke-direct {p1, v0}, Lexpo/modules/medialibrary/AssetFileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static final execute$lambda$3(Lexpo/modules/medialibrary/albums/CreateAlbum;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 55
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object p2, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->context:Landroid/content/Context;

    iget-object p0, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->promise:Lexpo/modules/kotlin/Promise;

    const-string v0, "_data=?"

    invoke-static {p2, v0, p1, p0}, Lexpo/modules/medialibrary/albums/AlbumUtilsKt;->queryAlbum(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V

    return-void

    .line 52
    :cond_0
    new-instance p0, Lexpo/modules/medialibrary/AlbumException;

    const-string p1, "Could not add image to album."

    invoke-direct {p0, p1}, Lexpo/modules/medialibrary/AlbumException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final execute()V
    .locals 6

    .line 42
    :try_start_0
    sget-object v0, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->assetId:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getAssetsById(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    .line 44
    invoke-virtual {v0}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lexpo/modules/medialibrary/albums/CreateAlbum;->createAlbum(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v3, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->mStrategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    .line 45
    check-cast v0, Ljava/io/File;

    iget-object v4, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->context:Landroid/content/Context;

    invoke-interface {v3, v0, v1, v4}, Lexpo/modules/medialibrary/albums/AssetFileStrategy;->apply(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->context:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 46
    new-instance v0, Lexpo/modules/medialibrary/albums/CreateAlbum$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lexpo/modules/medialibrary/albums/CreateAlbum$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/medialibrary/albums/CreateAlbum;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "Could not read file or parse EXIF tags"

    .line 65
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "E_UNABLE_TO_LOAD"

    invoke-interface {v1, v3, v2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/CreateAlbum;->promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "Could not create album: need WRITE_EXTERNAL_STORAGE permission."

    .line 62
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "E_UNABLE_TO_LOAD_PERMISSION"

    .line 59
    invoke-interface {v1, v3, v2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
