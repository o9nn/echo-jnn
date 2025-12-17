.class public Lnl/skillnation/perfstats/PerformanceStatsImpl;
.super Ljava/lang/Object;
.source "PerformanceStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "PerformanceStats"

.field private static final UPDATE_INTERVAL_MS:I = 0x1f4


# instance fields
.field private handler:Landroid/os/Handler;

.field private final mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

.field private final mStatsMonitorRunnable:Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;

.field private final packageName:Ljava/lang/String;

.field private final reactContext:Lcom/facebook/react/bridge/ReactContext;

.field private withCPU:Z


# direct methods
.method static bridge synthetic -$$Nest$fgethandler(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameCallback(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;
    .locals 0

    iget-object p0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpackageName(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwithCPU(Lnl/skillnation/perfstats/PerformanceStatsImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->withCPU:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msetCurrentStats(Lnl/skillnation/perfstats/PerformanceStatsImpl;DDIIDD)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->setCurrentStats(DDIIDD)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->withCPU:Z

    .line 32
    new-instance v0, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    invoke-direct {v0, p1}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    .line 33
    new-instance v0, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;-><init>(Lnl/skillnation/perfstats/PerformanceStatsImpl;Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable-IA;)V

    iput-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->mStatsMonitorRunnable:Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;

    iput-object p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 35
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->packageName:Ljava/lang/String;

    return-void
.end method

.method private sendEvent(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveReactInstance()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 75
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string v1, "performanceStatsUpdate"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private setCurrentStats(DDIIDD)V
    .locals 2

    .line 56
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "uiFps"

    .line 57
    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "jsFps"

    .line 58
    invoke-interface {v0, p1, p3, p4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "framesDropped"

    .line 59
    invoke-interface {v0, p1, p5}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "shutters"

    .line 60
    invoke-interface {v0, p1, p6}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p1, "usedRam"

    .line 61
    invoke-interface {v0, p1, p7, p8}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string p1, "usedCpu"

    .line 62
    invoke-interface {v0, p1, p9, p10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 64
    invoke-direct {p0, v0}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->sendEvent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public start(Ljava/lang/Boolean;)V
    .locals 0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->withCPU:Z

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->handler:Landroid/os/Handler;

    iget-object p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    .line 44
    invoke-virtual {p1}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->reset()V

    iget-object p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    .line 45
    invoke-virtual {p1}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->start()V

    iget-object p1, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->mStatsMonitorRunnable:Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;

    .line 46
    invoke-virtual {p1}, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->mFrameCallback:Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;

    .line 51
    invoke-virtual {v0}, Lcom/facebook/react/modules/debug/FpsDebugFrameCallback;->stop()V

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsImpl;->mStatsMonitorRunnable:Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;

    .line 52
    invoke-virtual {v0}, Lnl/skillnation/perfstats/PerformanceStatsImpl$StatsMonitorRunnable;->stop()V

    return-void
.end method
