.class public Lcom/google/mediapipe/framework/AssetCache;
.super Ljava/lang/Object;
.source "AssetCache.java"


# static fields
.field static final MEDIAPIPE_ASSET_CACHE_DIR:Ljava/lang/String; = "mediapipe_asset_cache"

.field private static assetCache:Lcom/google/mediapipe/framework/AssetCache;

.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# instance fields
.field private appVersionCode:I

.field private context:Landroid/content/Context;

.field private versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/framework/AssetCache;->context:Landroid/content/Context;

    .line 174
    new-instance v0, Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    invoke-direct {v0, p1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/mediapipe/framework/AssetCache;->versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    .line 176
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    sget-object p1, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    .line 178
    invoke-virtual {p1}, Lcom/google/common/flogger/FluentLogger;->atInfo()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v0, "Current app version code: %d"

    iget v1, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    invoke-interface {p1, v0, v1}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/google/mediapipe/framework/AssetCache;->versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    iget v0, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    .line 183
    invoke-virtual {p1, v0}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->invalidateCache(I)V

    return-void

    :catch_0
    move-exception p1

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get app version code."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static declared-synchronized create(Landroid/content/Context;)Lcom/google/mediapipe/framework/AssetCache;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/framework/AssetCache;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/mediapipe/framework/AssetCache;->assetCache:Lcom/google/mediapipe/framework/AssetCache;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/google/mediapipe/framework/AssetCache;

    invoke-direct {v1, p0}, Lcom/google/mediapipe/framework/AssetCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/mediapipe/framework/AssetCache;->assetCache:Lcom/google/mediapipe/framework/AssetCache;

    :cond_0
    sget-object p0, Lcom/google/mediapipe/framework/AssetCache;->assetCache:Lcom/google/mediapipe/framework/AssetCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getAssetCache()Lcom/google/mediapipe/framework/AssetCache;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/google/mediapipe/framework/AssetCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mediapipe/framework/AssetCache;->assetCache:Lcom/google/mediapipe/framework/AssetCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized purgeCache(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/google/mediapipe/framework/AssetCache;

    monitor-enter v0

    .line 69
    :try_start_0
    new-instance v1, Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    invoke-direct {v1, p0}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;-><init>(Landroid/content/Context;)V

    const/4 p0, -0x1

    .line 70
    invoke-virtual {v1, p0}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->invalidateCache(I)V

    .line 71
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inStream",
            "destinationFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 191
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x3e8

    :try_start_1
    new-array p1, p1, [B

    .line 194
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 202
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 198
    :try_start_2
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 204
    :cond_1
    throw p0
.end method


# virtual methods
.method public declared-synchronized getAbsolutePathFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetPath"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/AssetCache;->context:Landroid/content/Context;

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/AssetCache;->getDefaultMediaPipeCacheDir()Ljava/io/File;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 123
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/mediapipe/framework/AssetCache;->versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    .line 128
    invoke-virtual {v2, p1, v1}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->checkVersion(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 133
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-static {v0, v3}, Lcom/google/mediapipe/framework/AssetCache;->writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v0, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mediapipe/framework/AssetCache;->versionDatabase:Lcom/google/mediapipe/framework/AssetCacheDbHelper;

    .line 148
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/mediapipe/framework/AssetCache;->appVersionCode:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/mediapipe/framework/AssetCacheDbHelper;->insertAsset(Ljava/lang/String;Ljava/lang/String;I)V

    .line 150
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v1

    :goto_0
    :try_start_4
    sget-object v3, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    .line 136
    invoke-virtual {v3}, Lcom/google/common/flogger/FluentLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object v3

    check-cast v3, Lcom/google/common/flogger/FluentLogger$Api;

    invoke-interface {v3, v2}, Lcom/google/common/flogger/FluentLogger$Api;->withCause(Ljava/lang/Throwable;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v3, "Unable to unpack: %s"

    invoke-interface {v2, v3, p1}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 139
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 142
    :catch_2
    monitor-exit p0

    return-object v1

    .line 144
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAvailableAssets()[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/AssetCache;->getDefaultMediaPipeCacheDir()Ljava/io/File;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultMediaPipeCacheDir()Ljava/io/File;
    .locals 3

    .line 169
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/mediapipe/framework/AssetCache;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mediapipe_asset_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized loadAllAssets(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assetsPath"
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/mediapipe/framework/AssetCache;->context:Landroid/content/Context;

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    .line 96
    invoke-virtual {v1}, Lcom/google/common/flogger/FluentLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object v1

    check-cast v1, Lcom/google/common/flogger/FluentLogger$Api;

    invoke-interface {v1, v0}, Lcom/google/common/flogger/FluentLogger$Api;->withCause(Ljava/lang/Throwable;)Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v1, "Unable to get files in assets path: %s"

    invoke-interface {v0, v1, p1}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 98
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_3

    .line 103
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    :goto_2
    invoke-virtual {p0, v3}, Lcom/google/mediapipe/framework/AssetCache;->getAbsolutePathFromAsset(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_3
    :try_start_3
    sget-object p1, Lcom/google/mediapipe/framework/AssetCache;->logger:Lcom/google/common/flogger/FluentLogger;

    .line 99
    invoke-virtual {p1}, Lcom/google/common/flogger/FluentLogger;->atWarning()Lcom/google/common/flogger/LoggingApi;

    move-result-object p1

    check-cast p1, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v0, "No files to load"

    invoke-interface {p1, v0}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
