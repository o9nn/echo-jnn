.class Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/session/MediaControllerImplLegacy;


# direct methods
.method private constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1703
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$1;)V
    .locals 0

    .line 1703
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1707
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getBrowserCompat()Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1709
    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$000(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    :cond_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1720
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->release()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1715
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->release()V

    return-void
.end method
