.class Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;
.super Ljava/lang/Object;
.source "PerformanceStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/skillnation/perfstats/PerformanceStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsMonitorRunnable"
.end annotation


# instance fields
.field private mShouldStop:Z

.field private mTotal4PlusFrameStutters:I

.field private mTotalFramesDropped:I

.field final synthetic this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;


# direct methods
.method private constructor <init>(Lnl/skillnation/perfstats/PerformanceStatsImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mShouldStop:Z

    iput p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mTotalFramesDropped:I

    iput p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mTotal4PlusFrameStutters:I

    return-void
.end method

.method synthetic constructor <init>(Lnl/skillnation/perfstats/PerformanceStatsImpl;Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;-><init>(Lnl/skillnation/perfstats/PerformanceStatsImpl;)V

    return-void
.end method

.method private getUsedCPU()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "top"

    const-string v1, "-n"

    const-string v2, "1"

    const-string v3, "-q"

    const-string v4, "-oCMDLINE,%CPU"

    const-string v5, "-s2"

    const-string v6, "-b"

    .line 140
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 142
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 146
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 147
    invoke-static {v2}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgetpackageName(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 148
    invoke-static {v2}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgetpackageName(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    .line 152
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-wide v2
.end method

.method private getUsedRam()D
    .locals 4

    .line 133
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 134
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 136
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-boolean v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mShouldStop:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mTotalFramesDropped:I

    iget-object v1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 92
    invoke-static {v1}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgetmFrameCallback(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getExpectedNumFrames()I

    move-result v1

    iget-object v2, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    invoke-static {v2}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgetmFrameCallback(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getNumFrames()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mTotalFramesDropped:I

    iget v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mTotal4PlusFrameStutters:I

    iget-object v1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 93
    invoke-static {v1}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgetmFrameCallback(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->get4PlusFrameStutters()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mTotal4PlusFrameStutters:I

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 94
    invoke-static {v0}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgetmFrameCallback(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getFPS()D

    move-result-wide v2

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 95
    invoke-static {v0}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgetmFrameCallback(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->getJSFPS()D

    move-result-wide v4

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 99
    invoke-static {v0}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgetwithCPU(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :try_start_0
    invoke-direct {p0}, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->getUsedCPU()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v10, v0

    .line 105
    invoke-direct {p0}, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->getUsedRam()D

    move-result-wide v8

    iget-object v1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    iget v6, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mTotalFramesDropped:I

    iget v7, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mTotal4PlusFrameStutters:I

    .line 107
    invoke-static/range {v1 .. v11}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$msetCurrentStats(Lnl/skillnation/perfstats/PerformanceStatsImpl;DDIIDD)V

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 115
    invoke-static {v0}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgetmFrameCallback(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->reset()V

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 118
    invoke-static {v0}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgethandler(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mShouldStop:Z

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->this$0:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 123
    invoke-static {v0}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->-$$Nest$fgethandler(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->mShouldStop:Z

    return-void
.end method
