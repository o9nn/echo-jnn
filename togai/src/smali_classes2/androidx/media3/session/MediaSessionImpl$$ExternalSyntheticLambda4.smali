.class public final synthetic Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/SessionPositionInfo;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/SessionPositionInfo;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/session/SessionPositionInfo;

    iput-boolean p2, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda4;->f$1:Z

    iput-boolean p3, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda4;->f$1:Z

    iget-boolean v2, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda4;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->lambda$dispatchOnPeriodicSessionPositionInfoChanged$14(Landroidx/media3/session/SessionPositionInfo;ZZLandroidx/media3/session/MediaSession$ControllerCb;I)V

    return-void
.end method
