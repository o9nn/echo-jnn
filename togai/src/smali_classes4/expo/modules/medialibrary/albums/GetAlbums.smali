.class public Lexpo/modules/medialibrary/albums/GetAlbums;
.super Ljava/lang/Object;
.source "GetAlbums.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/medialibrary/albums/GetAlbums$Album;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetAlbums.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetAlbums.kt\nexpo/modules/medialibrary/albums/GetAlbums\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1549#2:80\n1620#2,3:81\n*S KotlinDebug\n*F\n+ 1 GetAlbums.kt\nexpo/modules/medialibrary/albums/GetAlbums\n*L\n57#1:80\n57#1:81,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u00002\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lexpo/modules/medialibrary/albums/GetAlbums;",
        "",
        "context",
        "Landroid/content/Context;",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;Lexpo/modules/kotlin/Promise;)V",
        "execute",
        "",
        "Album",
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

.field private final promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/albums/GetAlbums;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/medialibrary/albums/GetAlbums;->promise:Lexpo/modules/kotlin/Promise;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 15

    const-string v0, "bucket_id"

    const-string v1, "bucket_display_name"

    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "media_type != 0"

    .line 22
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v2, p0, Lexpo/modules/medialibrary/albums/GetAlbums;->context:Landroid/content/Context;

    .line 25
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 27
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const-string v7, "bucket_display_name"

    .line 26
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :try_start_1
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_4

    .line 37
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 38
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 40
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/medialibrary/albums/GetAlbums$Album;

    if-nez v5, :cond_1

    new-instance v5, Lexpo/modules/medialibrary/albums/GetAlbums$Album;

    .line 48
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v6, "getString(...)"

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, v5

    move-object v10, v4

    .line 47
    invoke-direct/range {v9 .. v14}, Lexpo/modules/medialibrary/albums/GetAlbums$Album;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    move-object v6, v8

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v5}, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->setCount(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lexpo/modules/medialibrary/albums/GetAlbums;->promise:Lexpo/modules/kotlin/Promise;

    .line 57
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v3, "<get-values>(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 80
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 81
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 82
    check-cast v4, Lexpo/modules/medialibrary/albums/GetAlbums$Album;

    .line 57
    invoke-virtual {v4}, Lexpo/modules/medialibrary/albums/GetAlbums$Album;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 82
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_3
    check-cast v3, Ljava/util/List;

    .line 57
    invoke-interface {v0, v3}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 58
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 33
    :try_start_2
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 35
    :cond_4
    :try_start_3
    new-instance v0, Lexpo/modules/medialibrary/AlbumException;

    const-string v1, "Could not get albums. Query returns null"

    invoke-direct {v0, v1}, Lexpo/modules/medialibrary/AlbumException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 33
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/GetAlbums;->promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "Could not get albums."

    .line 66
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "E_UNABLE_TO_LOAD"

    invoke-interface {v1, v3, v2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lexpo/modules/medialibrary/albums/GetAlbums;->promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "Could not get albums: need READ_EXTERNAL_STORAGE permission."

    .line 63
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "E_UNABLE_TO_LOAD_PERMISSION"

    .line 60
    invoke-interface {v1, v3, v2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
