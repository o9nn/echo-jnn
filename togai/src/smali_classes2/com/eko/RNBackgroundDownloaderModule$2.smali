.class Lcom/eko/RNBackgroundDownloaderModule$2;
.super Landroid/content/BroadcastReceiver;
.source "RNBackgroundDownloaderModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eko/RNBackgroundDownloaderModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eko/RNBackgroundDownloaderModule;


# direct methods
.method public static synthetic $r8$lambda$s1Kt-ubQUO6640pShY8A-r4bgh0(Lcom/eko/RNBackgroundDownloaderModule$2;Lcom/facebook/react/bridge/WritableMap;Lcom/eko/RNBGDTaskConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/eko/RNBackgroundDownloaderModule$2;->lambda$onReceive$0(Lcom/facebook/react/bridge/WritableMap;Lcom/eko/RNBGDTaskConfig;)V

    return-void
.end method

.method constructor <init>(Lcom/eko/RNBackgroundDownloaderModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 103
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Lcom/facebook/react/bridge/WritableMap;Lcom/eko/RNBGDTaskConfig;)V
    .locals 9

    :try_start_0
    const-string v0, "localUri"

    .line 123
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/io/File;

    iget-object v2, p2, Lcom/eko/RNBGDTaskConfig;->destination:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "downloadComplete"

    const-string v4, "location"

    const-string v5, "id"

    const-string v6, "bytesTotal"

    const-string v7, "bytesDownloaded"

    if-eqz v2, :cond_1

    .line 130
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 136
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$smmoveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 139
    iget-object v1, p2, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p2, p2, Lcom/eko/RNBGDTaskConfig;->destination:Ljava/lang/String;

    invoke-interface {v0, v4, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, v7, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 142
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, v6, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 144
    invoke-static {p1}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetee(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 149
    iget-object v1, p2, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p2, p2, Lcom/eko/RNBGDTaskConfig;->destination:Ljava/lang/String;

    invoke-interface {v0, v4, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, v7, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 152
    invoke-interface {p1, v6}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, v6, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 154
    invoke-static {p1}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetee(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object p1

    invoke-interface {p1, v3, v0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 158
    invoke-virtual {p2}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error moving file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "Error in enqueue: "

    :try_start_0
    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    .line 107
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 109
    invoke-static {p2}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetdownloadIdToConfig(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eko/RNBGDTaskConfig;

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 112
    invoke-static {v2}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetdownloader(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/eko/Downloader;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/eko/Downloader;->checkDownloadStatus(J)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "status"

    .line 113
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 115
    iget-object v3, p2, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$mstopTrackingProgress(Lcom/eko/RNBackgroundDownloaderModule;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$sfgetsharedLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 165
    invoke-virtual {v1}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "reason"

    .line 166
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "reasonText"

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v1, "id"

    .line 169
    iget-object p2, p2, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "errorCode"

    const-string v1, "reason"

    .line 170
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, p2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p2, "error"

    const-string v1, "reasonText"

    .line 171
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 172
    invoke-static {p2}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetee(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object p2

    const-string v0, "downloadFailed"

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 120
    invoke-static {p1}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetexecutorService(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/eko/RNBackgroundDownloaderModule$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Lcom/eko/RNBackgroundDownloaderModule$2$$ExternalSyntheticLambda0;-><init>(Lcom/eko/RNBackgroundDownloaderModule$2;Lcom/facebook/react/bridge/WritableMap;Lcom/eko/RNBGDTaskConfig;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 176
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$2;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 180
    invoke-virtual {p2}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadReceiver: onReceive. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
