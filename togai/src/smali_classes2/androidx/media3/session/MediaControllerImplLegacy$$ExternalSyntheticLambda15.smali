.class public final synthetic Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/session/MediaControllerImplLegacy;

.field public final synthetic f$1:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda15;->f$0:Landroidx/media3/session/MediaControllerImplLegacy;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda15;->f$1:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda15;->f$0:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$$ExternalSyntheticLambda15;->f$1:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->lambda$connectToSession$1$androidx-media3-session-MediaControllerImplLegacy(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method
