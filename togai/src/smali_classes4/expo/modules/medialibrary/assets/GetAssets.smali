.class public final Lexpo/modules/medialibrary/assets/GetAssets;
.super Ljava/lang/Object;
.source "GetAssets.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/medialibrary/assets/GetAssets;",
        "",
        "context",
        "Landroid/content/Context;",
        "assetOptions",
        "Lexpo/modules/medialibrary/AssetsOptions;",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "(Landroid/content/Context;Lexpo/modules/medialibrary/AssetsOptions;Lexpo/modules/kotlin/Promise;)V",
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
.field private final assetOptions:Lexpo/modules/medialibrary/AssetsOptions;

.field private final context:Landroid/content/Context;

.field private final promise:Lexpo/modules/kotlin/Promise;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/medialibrary/AssetsOptions;Lexpo/modules/kotlin/Promise;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/medialibrary/assets/GetAssets;->context:Landroid/content/Context;

    iput-object p2, p0, Lexpo/modules/medialibrary/assets/GetAssets;->assetOptions:Lexpo/modules/medialibrary/AssetsOptions;

    iput-object p3, p0, Lexpo/modules/medialibrary/assets/GetAssets;->promise:Lexpo/modules/kotlin/Promise;

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 14

    const-string v0, "E_UNABLE_TO_LOAD"

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/GetAssets;->context:Landroid/content/Context;

    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lexpo/modules/medialibrary/assets/GetAssets;->assetOptions:Lexpo/modules/medialibrary/AssetsOptions;

    .line 23
    invoke-static {v2}, Lexpo/modules/medialibrary/assets/GetAssetsQueryKt;->getQueryFromOptions(Lexpo/modules/medialibrary/AssetsOptions;)Lexpo/modules/medialibrary/assets/GetAssetsQuery;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->component1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->component2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->component3()D

    move-result-wide v8

    invoke-virtual {v2}, Lexpo/modules/medialibrary/assets/GetAssetsQuery;->component4()I

    move-result v10

    .line 25
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getEXTERNAL_CONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    .line 26
    invoke-static {}, Lexpo/modules/medialibrary/MediaLibraryConstantsKt;->getASSET_PROJECTION()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, v1

    .line 24
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    move-object v12, v11

    check-cast v12, Landroid/database/Cursor;

    if-eqz v12, :cond_0

    .line 35
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    move-object v4, v13

    check-cast v4, Ljava/util/List;

    double-to-int v5, v8

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v12

    move v6, v10

    .line 36
    invoke-static/range {v2 .. v7}, Lexpo/modules/medialibrary/assets/AssetUtilsKt;->putAssetsInfo(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/util/List;IIZ)V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "assets"

    .line 45
    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "hasNextPage"

    .line 46
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "endCursor"

    .line 47
    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "totalCount"

    .line 48
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lexpo/modules/medialibrary/assets/GetAssets;->promise:Lexpo/modules/kotlin/Promise;

    .line 50
    invoke-interface {v2, v1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/Object;)V

    .line 51
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 30
    :try_start_2
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 32
    :cond_0
    :try_start_3
    new-instance v1, Lexpo/modules/medialibrary/AssetQueryException;

    invoke-direct {v1}, Lexpo/modules/medialibrary/AssetQueryException;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 30
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/GetAssets;->promise:Lexpo/modules/kotlin/Promise;

    .line 64
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "E_NO_PERMISSIONS"

    invoke-interface {v1, v3, v2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lexpo/modules/medialibrary/assets/GetAssets;->promise:Lexpo/modules/kotlin/Promise;

    .line 61
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "Invalid MediaType"

    :cond_1
    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v2, v0, v3, v1}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    iget-object v2, p0, Lexpo/modules/medialibrary/assets/GetAssets;->promise:Lexpo/modules/kotlin/Promise;

    const-string v3, "Could not read file"

    .line 59
    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v2, v0, v3, v1}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lexpo/modules/medialibrary/assets/GetAssets;->promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "Could not get asset: need READ_EXTERNAL_STORAGE permission."

    .line 56
    check-cast v0, Ljava/lang/Throwable;

    const-string v3, "E_UNABLE_TO_LOAD_PERMISSION"

    .line 53
    invoke-interface {v1, v3, v2, v0}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
