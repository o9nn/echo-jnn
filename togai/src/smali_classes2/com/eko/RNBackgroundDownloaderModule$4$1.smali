.class Lcom/eko/RNBackgroundDownloaderModule$4$1;
.super Ljava/lang/Object;
.source "RNBackgroundDownloaderModule.java"

# interfaces
.implements Lcom/eko/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eko/RNBackgroundDownloaderModule$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eko/RNBackgroundDownloaderModule$4;


# direct methods
.method constructor <init>(Lcom/eko/RNBackgroundDownloaderModule$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Ljava/lang/String;JJ)V
    .locals 4

    iget-object v0, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    .line 435
    iget-object v0, v0, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {v0}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetconfigIdToPercent(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    long-to-double p2, p2

    long-to-double p4, p4

    div-double v0, p2, p4

    .line 438
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "id"

    .line 439
    invoke-interface {v2, v3, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bytesDownloaded"

    .line 440
    invoke-interface {v2, v3, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p2, "bytesTotal"

    .line 441
    invoke-interface {v2, p2, p4, p5}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    iget-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    .line 443
    iget-object p2, p2, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {p2}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetprogressReports(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    .line 444
    iget-object p2, p2, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {p2}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetconfigIdToPercent(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 447
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object p4, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    iget-object p4, p4, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {p4}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetlastProgressReportedAt(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Date;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p4

    sub-long/2addr p2, p4

    iget-object p4, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    iget-object p4, p4, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {p4}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetprogressInterval(Lcom/eko/RNBackgroundDownloaderModule;)I

    move-result p4

    int-to-long p4, p4

    cmp-long p2, p2, p4

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    iget-object p2, p2, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {p2}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetprogressReports(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;

    move-result-object p2

    .line 448
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 449
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    iget-object p3, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    .line 450
    iget-object p3, p3, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {p3}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetprogressReports(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 451
    check-cast p4, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    .line 453
    iget-object p3, p3, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {p3}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetee(Lcom/eko/RNBackgroundDownloaderModule;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object p3

    const-string p4, "downloadProgress"

    invoke-interface {p3, p4, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    .line 454
    iget-object p2, p2, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {p2, p1}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fputlastProgressReportedAt(Lcom/eko/RNBackgroundDownloaderModule;Ljava/util/Date;)V

    iget-object p1, p0, Lcom/eko/RNBackgroundDownloaderModule$4$1;->this$1:Lcom/eko/RNBackgroundDownloaderModule$4;

    .line 455
    iget-object p1, p1, Lcom/eko/RNBackgroundDownloaderModule$4;->this$0:Lcom/eko/RNBackgroundDownloaderModule;

    invoke-static {p1}, Lcom/eko/RNBackgroundDownloaderModule;->-$$Nest$fgetprogressReports(Lcom/eko/RNBackgroundDownloaderModule;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method
