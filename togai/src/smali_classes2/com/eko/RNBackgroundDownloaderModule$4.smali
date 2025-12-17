.class Lcom/eko/RNBackgroundDownloaderModule$4;
.super Ljava/lang/Object;
.source "RNBackgroundDownloaderModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eko/RNBackgroundDownloaderModule;->startReportingTasks(Ljava/lang/Long;Lcom/eko/RNBGDTaskConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eko/RNBackgroundDownloaderModule;

.field final synthetic val$config:Lcom/eko/RNBGDTaskConfig;

.field final synthetic val$downloadId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/eko/RNBackgroundDownloaderModule;Ljava/lang/Long;Lcom/eko/RNBGDTaskConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    iput-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->val$downloadId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->val$config:Lcom/eko/RNBGDTaskConfig;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 409
    invoke-static {v0}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetdownloader(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/eko/Downloader;

    move-result-object v0

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->val$downloadId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/eko/Downloader;->checkDownloadStatus(J)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "status"

    .line 410
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 423
    new-instance v0, Lcom/eko/OnBegin;

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->val$config:Lcom/eko/RNBGDTaskConfig;

    iget-object v2, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {v2}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetee(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/eko/OnBegin;-><init>(Lcom/eko/RNBGDTaskConfig;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;)V

    .line 424
    invoke-virtual {v0}, Lcom/eko/OnBegin;->start()V

    .line 426
    invoke-virtual {v0}, Lcom/eko/OnBegin;->join()V

    .line 428
    new-instance v0, Lcom/eko/OnProgress;

    iget-object v4, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->val$config:Lcom/eko/RNBGDTaskConfig;

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->val$downloadId:Ljava/lang/Long;

    .line 430
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {v1}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetdownloader(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/eko/Downloader;

    move-result-object v7

    new-instance v8, Lcom/eko/RNBackgroundDownloaderModule$4$1;

    invoke-direct {v8, p0}, Lcom/eko/RNBackgroundDownloaderModule$4$1;-><init>(Lcom/eko/RNBackgroundDownloaderModule$4;)V

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/eko/OnProgress;-><init>(Lcom/eko/RNBGDTaskConfig;JLcom/eko/Downloader;Lcom/eko/ProgressCallback;)V

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 459
    invoke-static {v1}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetonProgressThreads(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->val$config:Lcom/eko/RNBGDTaskConfig;

    iget-object v2, v2, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-virtual {v0}, Lcom/eko/OnProgress;->start()V

    goto :goto_1

    :cond_0
    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 416
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const-wide/16 v0, 0x1f4

    .line 419
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    .line 463
    invoke-virtual {v1}, Lcom/eko/RNBackgroundDownloaderModule;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RNBD: Runnable e: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
