.class public final synthetic Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaSessionLegacyStub;

.field public final synthetic f$1:Landroid/support/v4/media/MediaDescriptionCompat;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda20;->f$0:Landroidx/media3/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda20;->f$1:Landroid/support/v4/media/MediaDescriptionCompat;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda20;->f$0:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub$$ExternalSyntheticLambda20;->f$1:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->lambda$onRemoveQueueItem$19$androidx-media3-session-MediaSessionLegacyStub(Landroid/support/v4/media/MediaDescriptionCompat;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void
.end method
