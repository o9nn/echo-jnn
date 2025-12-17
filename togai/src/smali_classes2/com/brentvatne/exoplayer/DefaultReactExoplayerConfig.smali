.class public Lcom/brentvatne/exoplayer/DefaultReactExoplayerConfig;
.super Ljava/lang/Object;
.source "DefaultReactExoplayerConfig.java"

# interfaces
.implements Lcom/brentvatne/exoplayer/ReactExoplayerConfig;


# instance fields
.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

.field private disableDisconnectError:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brentvatne/exoplayer/DefaultReactExoplayerConfig;->disableDisconnectError:Z

    .line 15
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->build()Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object p1

    iput-object p1, p0, Lcom/brentvatne/exoplayer/DefaultReactExoplayerConfig;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    return-void
.end method


# virtual methods
.method public buildLoadErrorHandlingPolicy(I)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/DefaultReactExoplayerConfig;->disableDisconnectError:Z

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/brentvatne/exoplayer/ReactExoplayerLoadErrorHandlingPolicy;

    invoke-direct {v0, p1}, Lcom/brentvatne/exoplayer/ReactExoplayerLoadErrorHandlingPolicy;-><init>(I)V

    return-object v0

    .line 23
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    return-object v0
.end method

.method public getBandwidthMeter()Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;
    .locals 1

    iget-object v0, p0, Lcom/brentvatne/exoplayer/DefaultReactExoplayerConfig;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    return-object v0
.end method

.method public getDisableDisconnectError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/brentvatne/exoplayer/DefaultReactExoplayerConfig;->disableDisconnectError:Z

    return v0
.end method

.method public setDisableDisconnectError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/brentvatne/exoplayer/DefaultReactExoplayerConfig;->disableDisconnectError:Z

    return-void
.end method
