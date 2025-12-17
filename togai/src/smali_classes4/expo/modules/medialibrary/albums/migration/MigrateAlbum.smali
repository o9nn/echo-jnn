.class public final Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;
.super Ljava/lang/Object;
.source "MigrateAlbum.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMigrateAlbum.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MigrateAlbum.kt\nexpo/modules/medialibrary/albums/migration/MigrateAlbum\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1549#2:54\n1620#2,3:55\n1855#2,2:58\n*S KotlinDebug\n*F\n+ 1 MigrateAlbum.kt\nexpo/modules/medialibrary/albums/migration/MigrateAlbum\n*L\n28#1:54\n28#1:55,3\n38#1:58,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;",
        "",
        "context",
        "Landroid/content/Context;",
        "assetFiles",
        "",
        "Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;",
        "albumDirName",
        "",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V",
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
.field private final albumDirName:Ljava/lang/String;

.field private final assetFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lexpo/modules/kotlin/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;",
            ">;",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/Promise;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetFiles"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "albumDirName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;->assetFiles:Ljava/util/List;

    iput-object p3, p0, Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;->albumDirName:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;->promise:Lexpo/modules/kotlin/Promise;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 8

    iget-object v0, p0, Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;->assetFiles:Ljava/util/List;

    .line 27
    check-cast v0, Ljava/lang/Iterable;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 55
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 56
    check-cast v2, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    .line 28
    sget-object v3, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    invoke-virtual {v2}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lexpo/modules/medialibrary/MediaLibraryUtils;->getRelativePathForAssetType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 54
    check-cast v1, Ljava/lang/Iterable;

    .line 29
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    iget-object v2, p0, Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;->albumDirName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "relative_path"

    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;->assetFiles:Ljava/util/List;

    .line 38
    check-cast v0, Ljava/lang/Iterable;

    .line 58
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;

    iget-object v4, p0, Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;->context:Landroid/content/Context;

    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 43
    sget-object v5, Lexpo/modules/medialibrary/MediaLibraryUtils;->INSTANCE:Lexpo/modules/medialibrary/MediaLibraryUtils;

    invoke-virtual {v2}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lexpo/modules/medialibrary/MediaLibraryUtils;->mimeTypeToExternalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 44
    invoke-virtual {v2}, Lexpo/modules/medialibrary/MediaLibraryUtils$AssetFile;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 42
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 41
    invoke-virtual {v4, v2, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lexpo/modules/medialibrary/albums/migration/MigrateAlbum;->promise:Lexpo/modules/kotlin/Promise;

    .line 50
    invoke-interface {v0, v3}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 31
    :cond_2
    new-instance v0, Lexpo/modules/medialibrary/AlbumException;

    const-string v1, "The album contains incompatible file types."

    invoke-direct {v0, v1}, Lexpo/modules/medialibrary/AlbumException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
