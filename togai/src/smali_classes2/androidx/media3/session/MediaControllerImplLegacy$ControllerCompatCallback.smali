.class final Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ControllerCompatCallback"
.end annotation


# static fields
.field private static final MSG_HANDLE_PENDING_UPDATES:I = 0x1


# instance fields
.field private final pendingChangesHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroidx/media3/session/MediaControllerImplLegacy;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1730
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    .line 1731
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->pendingChangesHandler:Landroid/os/Handler;

    return-void
.end method

.method private startWaitingForPendingChanges()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->pendingChangesHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 1857
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->pendingChangesHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    .line 1860
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$androidx-media3-session-MediaControllerImplLegacy$ControllerCompatCallback(Landroid/os/Message;)Z
    .locals 3

    .line 1735
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    const/4 v1, 0x0

    .line 1736
    invoke-static {p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->access$500(Landroidx/media3/session/MediaControllerImplLegacy;ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    :cond_0
    return v0
.end method

.method synthetic lambda$onCaptioningEnabledChanged$3$androidx-media3-session-MediaControllerImplLegacy$ControllerCompatCallback(ZLandroidx/media3/session/MediaController$Listener;)V
    .locals 4

    .line 1828
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "androidx.media3.session.ARGUMENT_CAPTIONING_ENABLED"

    .line 1829
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1832
    invoke-virtual {p1}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object p1

    new-instance v1, Landroidx/media3/session/SessionCommand;

    const-string v2, "androidx.media3.session.SESSION_COMMAND_ON_CAPTIONING_ENABLED_CHANGED"

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1831
    invoke-interface {p2, p1, v1, v0}, Landroidx/media3/session/MediaController$Listener;->onCustomCommand(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 1830
    invoke-static {p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$700(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method synthetic lambda$onExtrasChanged$2$androidx-media3-session-MediaControllerImplLegacy$ControllerCompatCallback(Landroid/os/Bundle;Landroidx/media3/session/MediaController$Listener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1814
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/session/MediaController$Listener;->onExtrasChanged(Landroidx/media3/session/MediaController;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$onSessionEvent$1$androidx-media3-session-MediaControllerImplLegacy$ControllerCompatCallback(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/MediaController$Listener;)V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1779
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/SessionCommand;

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v1, p1, v2}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1778
    invoke-interface {p3, v0, v1, p2}, Landroidx/media3/session/MediaController$Listener;->onCustomCommand(Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 1777
    invoke-static {p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$700(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1819
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->copyWithPlaybackInfoCompat(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1820
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->startWaitingForPendingChanges()V

    return-void
.end method

.method public onCaptioningEnabledChanged(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1825
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;Z)V

    .line 1826
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1813
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;Landroid/os/Bundle;)V

    .line 1814
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1794
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->copyWithMediaMetadataCompat(Landroid/support/v4/media/MediaMetadataCompat;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1795
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->startWaitingForPendingChanges()V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1787
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v1

    .line 1788
    invoke-static {p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$400(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    .line 1787
    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->copyWithPlaybackStateCompat(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object p1

    .line 1786
    invoke-static {v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1789
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->startWaitingForPendingChanges()V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1801
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v1

    invoke-static {p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$600(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->copyWithQueue(Ljava/util/List;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object p1

    .line 1800
    invoke-static {v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1802
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->startWaitingForPendingChanges()V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1807
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->copyWithQueueTitle(Ljava/lang/CharSequence;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1808
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->startWaitingForPendingChanges()V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1844
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->copyWithRepeatMode(I)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object p1

    .line 1843
    invoke-static {v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1845
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->startWaitingForPendingChanges()V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1769
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/MediaController;->release()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1774
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->getInstance()Landroidx/media3/session/MediaController;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1775
    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public onSessionReady()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1748
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$100(Landroidx/media3/session/MediaControllerImplLegacy;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1749
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->onConnected()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1755
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1756
    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplLegacy;->access$300(Landroidx/media3/session/MediaControllerImplLegacy;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplLegacy;->access$400(Landroid/support/v4/media/session/PlaybackStateCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1757
    invoke-static {v3}, Landroidx/media3/session/MediaControllerImplLegacy;->access$300(Landroidx/media3/session/MediaControllerImplLegacy;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getRepeatMode()I

    move-result v3

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1758
    invoke-static {v4}, Landroidx/media3/session/MediaControllerImplLegacy;->access$300(Landroidx/media3/session/MediaControllerImplLegacy;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->getShuffleMode()I

    move-result v4

    .line 1755
    invoke-virtual {v1, v2, v3, v4}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->copyWithExtraBinderGetters(Landroid/support/v4/media/session/PlaybackStateCompat;II)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v1

    .line 1754
    invoke-static {v0, v1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1759
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$300(Landroidx/media3/session/MediaControllerImplLegacy;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->isCaptioningEnabled()Z

    move-result v0

    .line 1760
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->onCaptioningEnabledChanged(Z)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->pendingChangesHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 1762
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    const/4 v1, 0x0

    .line 1763
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/media3/session/MediaControllerImplLegacy;->access$500(Landroidx/media3/session/MediaControllerImplLegacy;ZLandroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)V

    :goto_0
    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->this$0:Landroidx/media3/session/MediaControllerImplLegacy;

    .line 1852
    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplLegacy;->access$200(Landroidx/media3/session/MediaControllerImplLegacy;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;->copyWithShuffleMode(I)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    move-result-object p1

    .line 1851
    invoke-static {v0, p1}, Landroidx/media3/session/MediaControllerImplLegacy;->access$202(Landroidx/media3/session/MediaControllerImplLegacy;Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;)Landroidx/media3/session/MediaControllerImplLegacy$LegacyPlayerInfo;

    .line 1853
    invoke-direct {p0}, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->startWaitingForPendingChanges()V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;->pendingChangesHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 1743
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
