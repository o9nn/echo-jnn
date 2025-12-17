.class public final Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;
.super Ljava/lang/Object;
.source "AddAssetsToAlbum.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddAssetsToAlbum.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddAssetsToAlbum.kt\nexpo/modules/medialibrary/albums/AddAssetsToAlbum\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,77:1\n1549#2:78\n1620#2,3:79\n37#3,2:82\n*S KotlinDebug\n*F\n+ 1 AddAssetsToAlbum.kt\nexpo/modules/medialibrary/albums/AddAssetsToAlbum\n*L\n64#1:78\n64#1:79,3\n70#1:82,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010\u0014\u001a\u00020\u0015R\u0014\u0010\r\u001a\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;",
        "",
        "context",
        "Landroid/content/Context;",
        "assetIds",
        "",
        "",
        "albumId",
        "copyToAlbum",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ZLexpo/modules/kotlin/Promise;)V",
        "album",
        "Ljava/io/File;",
        "getAlbum",
        "()Ljava/io/File;",
        "[Ljava/lang/String;",
        "strategy",
        "Lexpo/modules/medialibrary/albums/AssetFileStrategy;",
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
.field private final albumId:Ljava/lang/String;

.field private final assetIds:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final promise:Lexpo/modules/kotlin/Promise;

.field private final strategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;


# direct methods
.method public static synthetic $r8$lambda$sMXTpoBZQe0Kco3w62Gn3oNSwYk(Ljava/util/concurrent/atomic/AtomicInteger;Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->execute$lambda$2(Ljava/util/concurrent/atomic/AtomicInteger;Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ZLexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->assetIds:[Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->albumId:Ljava/lang/String;

    iput-object p5, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->promise:Lexpo/modules/kotlin/Promise;

    .line 23
    sget-object p1, Lexpo/modules/medialibrary/albums/AssetFileStrategy;->Companion:Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->getCopyStrategy()Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lexpo/modules/medialibrary/albums/AssetFileStrategy$Companion;->getMoveStrategy()Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->strategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    return-void
.end method

.method private static final execute$lambda$2(Ljava/util/concurrent/atomic/AtomicInteger;Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    const-string p2, "$atomicInteger"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_0

    .line 72
    iget-object p0, p1, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->promise:Lexpo/modules/kotlin/Promise;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lexpo/modules/kotlin/Promise;->resolve(Z)V

    :cond_0
    return-void
.end method

.method private final getAlbum()Ljava/io/File;
    .locals 8

    const-string v0, "No album with id: "

    const-string v1, "_data"

    .line 28
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "bucket_id=?"

    iget-object v2, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->albumId:Ljava/lang/String;

    .line 30
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->context:Landroid/content/Context;

    .line 31
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 32
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    .line 31
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 37
    :try_start_0
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_2

    .line 40
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 44
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 45
    new-instance v1, Ljava/io/File;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 49
    :cond_0
    :try_start_1
    new-instance v0, Lexpo/modules/medialibrary/MediaLibraryException;

    invoke-direct {v0}, Lexpo/modules/medialibrary/MediaLibraryException;-><init>()V

    throw v0

    .line 41
    :cond_1
    new-instance v1, Lexpo/modules/medialibrary/AlbumException;

    iget-object v3, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->albumId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lexpo/modules/medialibrary/AlbumException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_2
    new-instance v0, Lexpo/modules/medialibrary/AlbumException;

    const-string v1, "Could not get album. Query returns null."

    invoke-direct {v0, v1}, Lexpo/modules/medialibrary/AlbumException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 51
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final execute()V
    .locals 6

    .line 56
    sget-object v0, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->context:Landroid/content/Context;

    iget-object v2, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->assetIds:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getAssetsById(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    .line 58
    invoke-direct {p0}, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->getAlbum()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lexpo/modules/medialibrary/PermissionsException;

    const-string v1, "The application doesn\'t have permission to write to the album\'s directory. For more information, check out https://expo.fyi/android-r."

    invoke-direct {v0, v1}, Lexpo/modules/medialibrary/PermissionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    :goto_0
    check-cast v0, Ljava/lang/Iterable;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 79
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 80
    check-cast v2, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    iget-object v3, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->strategy:Lexpo/modules/medialibrary/albums/AssetFileStrategy;

    .line 65
    check-cast v2, Ljava/io/File;

    invoke-direct {p0}, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->getAlbum()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->context:Landroid/content/Context;

    invoke-interface {v3, v2, v4, v5}, Lexpo/modules/medialibrary/albums/AssetFileStrategy;->apply(Ljava/io/File;Ljava/io/File;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object v2, p0, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;->context:Landroid/content/Context;

    .line 70
    check-cast v1, Ljava/util/Collection;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 83
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 70
    new-instance v3, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p0}, Lexpo/modules/medialibrary/albums/AddAssetsToAlbum$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lexpo/modules/medialibrary/albums/AddAssetsToAlbum;)V

    const/4 v0, 0x0

    invoke-static {v2, v1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method
