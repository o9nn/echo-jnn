.class public final synthetic Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    invoke-static {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->lambda$setCustomLayout$5(Ljava/util/List;Landroidx/media3/session/MediaSession$ControllerCb;I)V

    return-void
.end method
