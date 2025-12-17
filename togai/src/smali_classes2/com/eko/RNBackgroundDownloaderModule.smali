.class public Lcom/eko/RNBackgroundDownloaderModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNBackgroundDownloaderModule.java"


# static fields
.field private static final ERR_FILE_NOT_FOUND:I = 0x3

.field private static final ERR_NO_INTERNET:I = 0x1

.field private static final ERR_NO_WRITE_PERMISSION:I = 0x2

.field private static final ERR_OTHERS:I = 0x64

.field private static final ERR_STORAGE_FULL:I = 0x0

.field private static final TASK_CANCELING:I = 0x2

.field private static final TASK_COMPLETED:I = 0x3

.field private static final TASK_RUNNING:I = 0x0

.field private static final TASK_SUSPENDED:I = 0x1

.field private static mmkv:Lcom/tencent/mmkv/MMKV;

.field private static sharedLock:Ljava/lang/Object;

.field private static stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configIdToDownloadId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private configIdToPercent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private downloadIdToConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/eko/RNBGDTaskConfig;",
            ">;"
        }
    .end annotation
.end field

.field downloadReceiver:Landroid/content/BroadcastReceiver;

.field private downloader:Lcom/eko/Downloader;

.field private ee:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private lastProgressReportedAt:Ljava/util/Date;

.field private onProgressThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/eko/OnProgress;",
            ">;"
        }
    .end annotation
.end field

.field private progressInterval:I

.field private progressReports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetconfigIdToPercent(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToPercent:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloadIdToConfig(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdownloader(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/eko/Downloader;
    .locals 0

    iget-object p0, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetee(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    .locals 0

    iget-object p0, p0, Lcom/eko/RNBackgroundDownloaderModule;->ee:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexecutorService(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/eko/RNBackgroundDownloaderModule;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastProgressReportedAt(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/eko/RNBackgroundDownloaderModule;->lastProgressReportedAt:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonProgressThreads(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/eko/RNBackgroundDownloaderModule;->onProgressThreads:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressInterval(Lcom/eko/RNBackgroundDownloaderModule;)I
    .locals 0

    iget p0, p0, Lcom/eko/RNBackgroundDownloaderModule;->progressInterval:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressReports(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/eko/RNBackgroundDownloaderModule;->progressReports:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastProgressReportedAt(Lcom/eko/RNBackgroundDownloaderModule;Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule;->lastProgressReportedAt:Ljava/util/Date;

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTrackingProgress(Lcom/eko/RNBackgroundDownloaderModule;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/eko/RNBackgroundDownloaderModule;->stopTrackingProgress(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsharedLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smmoveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/eko/RNBackgroundDownloaderModule;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/eko/RNBackgroundDownloaderModule$1;

    invoke-direct {v0}, Lcom/eko/RNBackgroundDownloaderModule$1;-><init>()V

    sput-object v0, Lcom/eko/RNBackgroundDownloaderModule;->stateMap:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3

    .line 186
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToDownloadId:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToPercent:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->progressReports:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->lastProgressReportedAt:Ljava/util/Date;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->onProgressThreads:Ljava/util/Map;

    .line 103
    new-instance v0, Lcom/eko/RNBackgroundDownloaderModule$2;

    invoke-direct {v0, p0}, Lcom/eko/RNBackgroundDownloaderModule$2;-><init>(Lcom/eko/RNBackgroundDownloaderModule;)V

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;)Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sput-object v0, Lcom/eko/RNBackgroundDownloaderModule;->mmkv:Lcom/tencent/mmkv/MMKV;

    .line 192
    invoke-direct {p0}, Lcom/eko/RNBackgroundDownloaderModule;->loadDownloadIdToConfigMap()V

    .line 193
    invoke-direct {p0}, Lcom/eko/RNBackgroundDownloaderModule;->loadConfigMap()V

    .line 195
    new-instance v0, Lcom/eko/Downloader;

    invoke-direct {v0, p1}, Lcom/eko/Downloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    .line 198
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/eko/RNBackgroundDownloaderModule;->compatRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V

    iget-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    .line 201
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eko/RNBGDTaskConfig;

    .line 205
    invoke-direct {p0, v1, v0}, Lcom/eko/RNBackgroundDownloaderModule;->startReportingTasks(Ljava/lang/Long;Lcom/eko/RNBGDTaskConfig;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private compatRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_1

    if-eqz p4, :cond_0

    const/4 p4, 0x2

    goto :goto_0

    :cond_0
    const/4 p4, 0x4

    .line 214
    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method private loadConfigMap()V
    .locals 4

    sget-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 320
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/eko/RNBackgroundDownloaderModule;->mmkv:Lcom/tencent/mmkv/MMKV;

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_progressInterval"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    iput v1, p0, Lcom/eko/RNBackgroundDownloaderModule;->progressInterval:I

    .line 325
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadDownloadIdToConfigMap()V
    .locals 4

    sget-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 296
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/eko/RNBackgroundDownloaderModule;->mmkv:Lcom/tencent/mmkv/MMKV;

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_downloadIdToConfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 300
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 302
    new-instance v3, Lcom/eko/RNBackgroundDownloaderModule$3;

    invoke-direct {v3, p0}, Lcom/eko/RNBackgroundDownloaderModule$3;-><init>(Lcom/eko/RNBackgroundDownloaderModule;)V

    .line 305
    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 308
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 95
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/String;

    .line 96
    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    .line 98
    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v2, v1, v0

    invoke-static {p0, p1, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return-void
.end method

.method private removeFromMaps(J)V
    .locals 4

    sget-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 274
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    .line 275
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eko/RNBGDTaskConfig;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToDownloadId:Ljava/util/Map;

    .line 277
    iget-object v3, v1, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    .line 278
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToPercent:Ljava/util/Map;

    .line 279
    iget-object p2, v1, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-direct {p0}, Lcom/eko/RNBackgroundDownloaderModule;->saveDownloadIdToConfigMap()V

    .line 283
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private saveConfigMap()V
    .locals 4

    sget-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 314
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/eko/RNBackgroundDownloaderModule;->mmkv:Lcom/tencent/mmkv/MMKV;

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_progressInterval"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/eko/RNBackgroundDownloaderModule;->progressInterval:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;I)Z

    .line 316
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private saveDownloadIdToConfigMap()V
    .locals 5

    sget-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 287
    monitor-enter v0

    .line 288
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    .line 289
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eko/RNBackgroundDownloaderModule;->mmkv:Lcom/tencent/mmkv/MMKV;

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_downloadIdToConfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startReportingTasks(Ljava/lang/Long;Lcom/eko/RNBGDTaskConfig;)V
    .locals 2

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p2, Lcom/eko/RNBGDTaskConfig;->reportedBegin:Z

    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    .line 399
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-direct {p0}, Lcom/eko/RNBackgroundDownloaderModule;->saveDownloadIdToConfigMap()V

    .line 405
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/eko/RNBackgroundDownloaderModule$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/eko/RNBackgroundDownloaderModule$4;-><init>(Lcom/eko/RNBackgroundDownloaderModule;Ljava/lang/Long;Lcom/eko/RNBGDTaskConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 466
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopTrackingProgress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->onProgressThreads:Ljava/util/Map;

    .line 222
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eko/OnProgress;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/eko/OnProgress;->interrupt()V

    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->onProgressThreads:Ljava/util/Map;

    .line 225
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToPercent:Ljava/util/Map;

    .line 226
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public checkForExistingDownloads(Lcom/facebook/react/bridge/Promise;)V
    .locals 11
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 521
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    sget-object v1, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 523
    monitor-enter v1

    .line 525
    :try_start_0
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    iget-object v3, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 526
    iget-object v3, v3, Lcom/eko/Downloader;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 528
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 530
    invoke-virtual {v3, v2}, Lcom/eko/Downloader;->getDownloadStatus(Landroid/database/Cursor;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    const-string v4, "downloadId"

    .line 531
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    .line 533
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    .line 534
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/eko/RNBGDTaskConfig;

    .line 535
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v6

    const-string v7, "id"

    .line 536
    iget-object v8, v5, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "metadata"

    .line 537
    iget-object v8, v5, Lcom/eko/RNBGDTaskConfig;->metadata:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "state"

    sget-object v8, Lcom/eko/RNBackgroundDownloaderModule;->stateMap:Ljava/util/Map;

    const-string v9, "status"

    .line 538
    invoke-interface {v3, v9}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v7, "bytesDownloaded"

    .line 540
    invoke-interface {v3, v7}, Lcom/facebook/react/bridge/WritableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v9, "bytesDownloaded"

    .line 541
    invoke-interface {v6, v9, v7, v8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v9, "bytesTotal"

    .line 543
    invoke-interface {v3, v9}, Lcom/facebook/react/bridge/WritableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v3, "bytesTotal"

    .line 544
    invoke-interface {v6, v3, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 546
    invoke-interface {v0, v6}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    iget-object v3, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToDownloadId:Ljava/util/Map;

    .line 550
    iget-object v6, v5, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToPercent:Ljava/util/Map;

    .line 551
    iget-object v4, v5, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 556
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/eko/Downloader;->cancelDownload(J)I

    .line 558
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 563
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 564
    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckForExistingDownloads e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void

    .line 566
    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public completeHandler(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    sget-object p2, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 508
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToDownloadId:Ljava/util/Map;

    .line 509
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 511
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/eko/RNBackgroundDownloaderModule;->removeFromMaps(J)V

    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 514
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/eko/Downloader;->cancelDownload(J)I

    .line 516
    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public download(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 10
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "id"

    .line 331
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 332
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "destination"

    .line 333
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "headers"

    .line 334
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    const-string v4, "metadata"

    .line 335
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "progressInterval"

    .line 336
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    iput v5, p0, Lcom/eko/RNBackgroundDownloaderModule;->progressInterval:I

    .line 339
    invoke-direct {p0}, Lcom/eko/RNBackgroundDownloaderModule;->saveConfigMap()V

    :cond_0
    const-string v5, "isAllowedOverRoaming"

    .line 342
    invoke-interface {p1, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "isAllowedOverMetered"

    .line 343
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "isNotificationVisible"

    .line 344
    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 351
    :cond_1
    new-instance v7, Lcom/eko/RNBGDTaskConfig;

    invoke-direct {v7, v0, v1, v2, v4}, Lcom/eko/RNBGDTaskConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 353
    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 354
    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 355
    :goto_0
    invoke-virtual {v4, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 356
    invoke-virtual {v4, v1}, Landroid/app/DownloadManager$Request;->setRequiresCharging(Z)Landroid/app/DownloadManager$Request;

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v8, 0xfffffff

    and-long/2addr v5, v8

    long-to-int p1, v5

    .line 360
    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2, p1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    if-eqz v3, :cond_3

    .line 371
    invoke-interface {v3}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object p1

    .line 372
    :goto_1
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 378
    invoke-virtual {p1, v4}, Lcom/eko/Downloader;->queueDownload(Landroid/app/DownloadManager$Request;)J

    move-result-wide v1

    sget-object p1, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 380
    monitor-enter p1

    :try_start_0
    iget-object v3, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToDownloadId:Ljava/util/Map;

    .line 381
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloadIdToConfig:Ljava/util/Map;

    .line 382
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToPercent:Ljava/util/Map;

    const-wide/16 v4, 0x0

    .line 383
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-direct {p0}, Lcom/eko/RNBackgroundDownloaderModule;->saveDownloadIdToConfigMap()V

    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 386
    invoke-virtual {v0, v1, v2}, Lcom/eko/Downloader;->checkDownloadStatus(J)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v3, "status"

    .line 387
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    .line 389
    iget-boolean v0, v7, Lcom/eko/RNBGDTaskConfig;->reportedBegin:Z

    if-eqz v0, :cond_4

    .line 390
    monitor-exit p1

    return-void

    .line 393
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/eko/RNBackgroundDownloaderModule;->startReportingTasks(Ljava/lang/Long;Lcom/eko/RNBGDTaskConfig;)V

    .line 394
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 347
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "id, url and destination must be set"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "documents"

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TaskRunning"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TaskSuspended"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TaskCanceling"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TaskCompleted"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNBackgroundDownloader"

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/eko/RNBackgroundDownloaderModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    iput-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule;->ee:Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 0

    return-void
.end method

.method public pauseTask(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    sget-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 472
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToDownloadId:Ljava/util/Map;

    .line 473
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 475
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/eko/Downloader;->pauseDownload(J)V

    .line 477
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public resumeTask(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    sget-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 483
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToDownloadId:Ljava/util/Map;

    .line 484
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 486
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/eko/Downloader;->resumeDownload(J)V

    .line 488
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopTask(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    sget-object v0, Lcom/eko/RNBackgroundDownloaderModule;->sharedLock:Ljava/lang/Object;

    .line 493
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule;->configIdToDownloadId:Ljava/util/Map;

    .line 494
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/eko/RNBackgroundDownloaderModule;->removeFromMaps(J)V

    .line 499
    invoke-direct {p0, p1}, Lcom/eko/RNBackgroundDownloaderModule;->stopTrackingProgress(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule;->downloader:Lcom/eko/Downloader;

    .line 501
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/eko/Downloader;->cancelDownload(J)I

    .line 503
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
