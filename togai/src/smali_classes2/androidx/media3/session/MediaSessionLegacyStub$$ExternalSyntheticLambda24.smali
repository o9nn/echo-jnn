.class public final synthetic Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaSessionLegacyStub;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field public final synthetic f$3:Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;ILandroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;->f$0:Landroidx/media3/session/MediaSessionLegacyStub;

    iput p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;->f$1:I

    iput-object p3, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;->f$2:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iput-object p4, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;->f$3:Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;->f$0:Landroidx/media3/session/MediaSessionLegacyStub;

    iget v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;->f$1:I

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;->f$2:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda24;->f$3:Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/session/MediaSessionLegacyStub;->lambda$dispatchSessionTaskWithPlayerCommand$22$androidx-media3-session-MediaSessionLegacyStub(ILandroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    return-void
.end method
