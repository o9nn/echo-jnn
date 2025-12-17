.class public Lnl/skillnation/perfstats/PerformanceStatsModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "PerformanceStatsModule.java"


# instance fields
.field private final performanceStats:Lnl/skillnation/perfstats/PerformanceStatsImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 13
    new-instance v0, Lnl/skillnation/perfstats/PerformanceStatsImpl;

    invoke-direct {v0, p1}, Lnl/skillnation/perfstats/PerformanceStatsImpl;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsModule;->performanceStats:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PerformanceStats"

    return-object v0
.end method

.method public removeListeners(Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    return-void
.end method

.method public start(Ljava/lang/Boolean;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsModule;->performanceStats:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 25
    invoke-virtual {v0, p1}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->start(Ljava/lang/Boolean;)V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    iget-object v0, p0, Lnl/skillnation/perfstats/PerformanceStatsModule;->performanceStats:Lnl/skillnation/perfstats/PerformanceStatsImpl;

    .line 30
    invoke-virtual {v0}, Lnl/skillnation/perfstats/PerformanceStatsImpl;->stop()V

    return-void
.end method
