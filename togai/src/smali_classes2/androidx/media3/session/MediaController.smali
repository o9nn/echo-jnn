.class public Landroidx/media3/session/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroidx/media3/common/Player;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaController$Listener;,
        Landroidx/media3/session/MediaController$ConnectionCallback;,
        Landroidx/media3/session/MediaController$MediaControllerImpl;,
        Landroidx/media3/session/MediaController$Builder;
    }
.end annotation


# static fields
.field public static final RELEASE_UNBIND_TIMEOUT_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "MediaController"

.field private static final WRONG_THREAD_ERROR_MESSAGE:Ljava/lang/String; = "MediaController method is called from a wrong thread. See javadoc of MediaController for details."


# instance fields
.field final applicationHandler:Landroid/os/Handler;

.field final connectionCallback:Landroidx/media3/session/MediaController$ConnectionCallback;

.field private connectionNotified:Z

.field private final impl:Landroidx/media3/session/MediaController$MediaControllerImpl;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field final listener:Landroidx/media3/session/MediaController$Listener;

.field private released:Z

.field private timeDiffMs:J

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroidx/media3/session/MediaController$Listener;Landroid/os/Looper;Landroidx/media3/session/MediaController$ConnectionCallback;Landroidx/media3/common/util/BitmapLoader;)V
    .locals 6

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context must not be null"

    .line 462
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "token must not be null"

    .line 463
    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaController;->window:Landroidx/media3/common/Timeline$Window;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/session/MediaController;->timeDiffMs:J

    iput-object p4, p0, Landroidx/media3/session/MediaController;->listener:Landroidx/media3/session/MediaController$Listener;

    .line 471
    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    iput-object p6, p0, Landroidx/media3/session/MediaController;->connectionCallback:Landroidx/media3/session/MediaController$ConnectionCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p7

    .line 474
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaController;->createImpl(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaController$MediaControllerImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 475
    invoke-interface {p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->connect()V

    return-void
.end method

.method private static createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 1907
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/16 v1, -0x64

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static releaseFuture(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "+",
            "Landroidx/media3/session/MediaController;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 541
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 547
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaController;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->release()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string v0, "MediaController"

    const-string v1, "MediaController future failed (so we couldn\'t release it)"

    .line 549
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private verifyApplicationThread()V
    .locals 2

    .line 1928
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "MediaController method is called from a wrong thread. See javadoc of MediaController for details."

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    const-string v0, "listener must not be null"

    .line 1851
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1852
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final addMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1

    .line 1097
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1098
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring addMediaItem()."

    .line 1099
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1102
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->addMediaItem(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final addMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1

    .line 1087
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1088
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring addMediaItem()."

    .line 1089
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1092
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->addMediaItem(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final addMediaItems(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1117
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1118
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring addMediaItems()."

    .line 1119
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1122
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public final addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1107
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1108
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring addMediaItems()."

    .line 1109
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1112
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final canAdvertiseSession()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final clearMediaItems()V
    .locals 2

    .line 1147
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1148
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring clearMediaItems()."

    .line 1149
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1152
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->clearMediaItems()V

    return-void
.end method

.method public final clearVideoSurface()V
    .locals 2

    .line 1560
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1561
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring clearVideoSurface()."

    .line 1562
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1565
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->clearVideoSurface()V

    return-void
.end method

.method public final clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1570
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1571
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring clearVideoSurface()."

    .line 1572
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1575
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->clearVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1600
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1601
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring clearVideoSurfaceHolder()."

    .line 1602
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1605
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1620
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1621
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring clearVideoSurfaceView()."

    .line 1622
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1625
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 1640
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1641
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring clearVideoTextureView()."

    .line 1642
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1645
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->clearVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method createImpl(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaController$MediaControllerImpl;
    .locals 7

    .line 486
    invoke-virtual {p2}, Landroidx/media3/session/SessionToken;->isLegacySession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    new-instance p3, Landroidx/media3/session/MediaControllerImplLegacy;

    .line 488
    invoke-static {p5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v6, p5

    check-cast v6, Landroidx/media3/common/util/BitmapLoader;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplLegacy;-><init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;)V

    return-object p3

    .line 490
    :cond_0
    new-instance p5, Landroidx/media3/session/MediaControllerImplBase;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;-><init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;)V

    return-object p5
.end method

.method public final decreaseDeviceVolume()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1752
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1753
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring decreaseDeviceVolume()."

    .line 1754
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1757
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->decreaseDeviceVolume()V

    return-void
.end method

.method public final decreaseDeviceVolume(I)V
    .locals 1

    .line 1762
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1763
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring decreaseDeviceVolume()."

    .line 1764
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1767
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->decreaseDeviceVolume(I)V

    return-void
.end method

.method public final getApplicationLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    .line 1826
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 874
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 875
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 876
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 878
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public final getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 1

    .line 1869
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1870
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1871
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1873
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public final getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;
    .locals 1

    .line 1899
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1900
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1901
    sget-object v0, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1903
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v0

    return-object v0
.end method

.method public final getBufferedPercentage()I
    .locals 1

    .line 771
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 772
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getBufferedPercentage()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getBufferedPosition()J
    .locals 2

    .line 764
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 765
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getBufferedPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getConnectedToken()Landroidx/media3/session/SessionToken;
    .locals 1

    .line 565
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getConnectedToken()Landroidx/media3/session/SessionToken;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getContentBufferedPosition()J
    .locals 2

    .line 823
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 824
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getContentDuration()J
    .locals 2

    .line 797
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 798
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getContentDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public final getContentPosition()J
    .locals 2

    .line 810
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 811
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getContentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentAdGroupIndex()I
    .locals 1

    .line 835
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 836
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentAdGroupIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 841
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 842
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentAdIndexInAdGroup()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 1

    .line 1650
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1651
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    :goto_0
    return-object v0
.end method

.method public final getCurrentLiveOffset()J
    .locals 2

    .line 783
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 784
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentLiveOffset()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public final getCurrentManifest()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 3

    .line 1259
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1260
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1262
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaController;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    :goto_0
    return-object v0
.end method

.method public final getCurrentMediaItemIndex()I
    .locals 1

    .line 1293
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1294
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getCurrentPeriodIndex()I
    .locals 1

    .line 1277
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1278
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentPeriodIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 758
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 759
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 988
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 989
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    :goto_0
    return-object v0
.end method

.method public final getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    .line 1801
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1802
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    :goto_0
    return-object v0
.end method

.method public final getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1288
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getCustomLayout()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    .line 965
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 966
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCustomLayout()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 1

    .line 1674
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1675
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1676
    sget-object v0, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1678
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceVolume()I
    .locals 1

    .line 1684
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1685
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1688
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getDeviceVolume()I

    move-result v0

    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 752
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 753
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public final getMaxSeekToPreviousPosition()J
    .locals 2

    .line 1492
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1493
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getMediaItemAt(I)Landroidx/media3/common/MediaItem;
    .locals 2

    .line 1272
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaController;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p1
.end method

.method public final getMediaItemCount()I
    .locals 1

    .line 1267
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    return v0
.end method

.method public final getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 1795
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1796
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    :goto_0
    return-object v0
.end method

.method public final getNextMediaItemIndex()I
    .locals 1

    .line 1339
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1340
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getNextMediaItemIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getNextWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1327
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getPlayWhenReady()Z
    .locals 1

    .line 720
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 721
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 868
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 869
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    :goto_0
    return-object v0
.end method

.method public final getPlaybackState()I
    .locals 1

    .line 734
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 735
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getPlaybackState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final getPlaybackSuppressionReason()I
    .locals 1

    .line 726
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 727
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 728
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getPlaybackSuppressionReason()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 706
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 707
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 1081
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1082
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    :goto_0
    return-object v0
.end method

.method public final getPreviousMediaItemIndex()I
    .locals 1

    .line 1316
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1317
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getPreviousMediaItemIndex()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getPreviousWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1304
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getRepeatMode()I
    .locals 1

    .line 1515
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1516
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getRepeatMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSeekBackIncrement()J
    .locals 2

    .line 650
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 651
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getSeekBackIncrement()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getSeekForwardIncrement()J
    .locals 2

    .line 677
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 678
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getSeekForwardIncrement()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 700
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getShuffleModeEnabled()Z
    .locals 1

    .line 1531
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1532
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getShuffleModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 1

    .line 1554
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1555
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getSurfaceSize()Landroidx/media3/common/util/Size;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    :goto_0
    return-object v0
.end method

.method final getTimeDiffMs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/session/MediaController;->timeDiffMs:J

    return-wide v0
.end method

.method public final getTotalBufferedDuration()J
    .locals 2

    .line 777
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 778
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getTotalBufferedDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 1807
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1808
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1809
    sget-object v0, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1811
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 1

    .line 1547
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1548
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    :goto_0
    return-object v0
.end method

.method public final getVolume()F
    .locals 1

    .line 1657
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1658
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getVolume()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public final hasNext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1360
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasNextMediaItem()Z
    .locals 1

    .line 1391
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1392
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->hasNextMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasNextWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1380
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1350
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasPreviousMediaItem()Z
    .locals 1

    .line 1385
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1386
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->hasPreviousMediaItem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPreviousWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1370
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public final increaseDeviceVolume()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1729
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1730
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring increaseDeviceVolume()."

    .line 1731
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1734
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->increaseDeviceVolume()V

    return-void
.end method

.method public final increaseDeviceVolume(I)V
    .locals 1

    .line 1739
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1740
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring increaseDeviceVolume()."

    .line 1741
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1744
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->increaseDeviceVolume(I)V

    return-void
.end method

.method public final isCommandAvailable(I)Z
    .locals 1

    .line 1864
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result p1

    return p1
.end method

.method public final isConnected()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 570
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final isCurrentMediaItemDynamic()Z
    .locals 3

    .line 1207
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1208
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1209
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaController;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentMediaItemLive()Z
    .locals 3

    .line 1224
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1225
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1226
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaController;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentMediaItemSeekable()Z
    .locals 3

    .line 1241
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1242
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaController;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentWindowDynamic()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1202
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowLive()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1219
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowSeekable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1236
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public final isDeviceMuted()Z
    .locals 1

    .line 1693
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1694
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1697
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isDeviceMuted()Z

    move-result v0

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 746
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 747
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 740
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 741
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPlayingAd()Z
    .locals 1

    .line 829
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 830
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSessionCommandAvailable(I)Z
    .locals 1

    .line 1883
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/SessionCommands;->contains(I)Z

    move-result p1

    return p1
.end method

.method public final isSessionCommandAvailable(Landroidx/media3/session/SessionCommand;)Z
    .locals 1

    .line 1888
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getAvailableSessionCommands()Landroidx/media3/session/SessionCommands;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$release$0$androidx-media3-session-MediaController(Landroidx/media3/session/MediaController$Listener;)V
    .locals 0

    .line 526
    invoke-interface {p1, p0}, Landroidx/media3/session/MediaController$Listener;->onDisconnected(Landroidx/media3/session/MediaController;)V

    return-void
.end method

.method public final moveMediaItem(II)V
    .locals 1

    .line 1157
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1158
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring moveMediaItem()."

    .line 1159
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1162
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->moveMediaItem(II)V

    return-void
.end method

.method public final moveMediaItems(III)V
    .locals 1

    .line 1167
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1168
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring moveMediaItems()."

    .line 1169
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1172
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/session/MediaController$MediaControllerImpl;->moveMediaItems(III)V

    return-void
.end method

.method public final next()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1412
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->seekToNextMediaItem()V

    return-void
.end method

.method final notifyAccepted()V
    .locals 3

    .line 1921
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-boolean v0, p0, Landroidx/media3/session/MediaController;->connectionNotified:Z

    xor-int/2addr v0, v2

    .line 1922
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v2, p0, Landroidx/media3/session/MediaController;->connectionNotified:Z

    iget-object v0, p0, Landroidx/media3/session/MediaController;->connectionCallback:Landroidx/media3/session/MediaController$ConnectionCallback;

    .line 1924
    invoke-interface {v0}, Landroidx/media3/session/MediaController$ConnectionCallback;->onAccepted()V

    return-void
.end method

.method final notifyControllerListener(Landroidx/media3/common/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/session/MediaController$Listener;",
            ">;)V"
        }
    .end annotation

    .line 1916
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/session/MediaController;->listener:Landroidx/media3/session/MediaController$Listener;

    .line 1917
    invoke-interface {p1, v0}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final pause()V
    .locals 2

    .line 585
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 586
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring pause()."

    .line 587
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 590
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->pause()V

    return-void
.end method

.method public final play()V
    .locals 2

    .line 575
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 576
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring play()."

    .line 577
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 580
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->play()V

    return-void
.end method

.method public final prepare()V
    .locals 2

    .line 595
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 596
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring prepare()."

    .line 597
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 600
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->prepare()V

    return-void
.end method

.method public final previous()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1402
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->seekToPreviousMediaItem()V

    return-void
.end method

.method public final release()V
    .locals 4

    .line 513
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    iget-boolean v0, p0, Landroidx/media3/session/MediaController;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/session/MediaController;->released:Z

    iget-object v1, p0, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    .line 518
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 520
    invoke-interface {v1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaController"

    const-string v3, "Exception while releasing impl"

    .line 523
    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-boolean v1, p0, Landroidx/media3/session/MediaController;->connectionNotified:Z

    if-eqz v1, :cond_1

    .line 526
    new-instance v0, Landroidx/media3/session/MediaController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaController$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaController;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaController;->notifyControllerListener(Landroidx/media3/common/util/Consumer;)V

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Landroidx/media3/session/MediaController;->connectionNotified:Z

    iget-object v0, p0, Landroidx/media3/session/MediaController;->connectionCallback:Landroidx/media3/session/MediaController$ConnectionCallback;

    .line 529
    invoke-interface {v0}, Landroidx/media3/session/MediaController$ConnectionCallback;->onRejected()V

    :goto_1
    return-void
.end method

.method public final removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 1857
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "listener must not be null"

    .line 1858
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1859
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->removeListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final removeMediaItem(I)V
    .locals 1

    .line 1127
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1128
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring removeMediaItem()."

    .line 1129
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1132
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->removeMediaItem(I)V

    return-void
.end method

.method public final removeMediaItems(II)V
    .locals 1

    .line 1137
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1138
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring removeMediaItems()."

    .line 1139
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1142
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->removeMediaItems(II)V

    return-void
.end method

.method public final replaceMediaItem(ILandroidx/media3/common/MediaItem;)V
    .locals 1

    .line 1177
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1178
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring replaceMediaItem()."

    .line 1179
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1182
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->replaceMediaItem(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final replaceMediaItems(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1187
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1188
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring replaceMediaItems()."

    .line 1189
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1192
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/session/MediaController$MediaControllerImpl;->replaceMediaItems(IILjava/util/List;)V

    return-void
.end method

.method final runOnApplicationLooper(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaController;->applicationHandler:Landroid/os/Handler;

    .line 1912
    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final seekBack()V
    .locals 2

    .line 662
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 663
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekBack()."

    .line 664
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 667
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekBack()V

    return-void
.end method

.method public final seekForward()V
    .locals 2

    .line 689
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 690
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekForward()."

    .line 691
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 694
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekForward()V

    return-void
.end method

.method public final seekTo(IJ)V
    .locals 1

    .line 635
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 636
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring seekTo()."

    .line 637
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 640
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekTo(IJ)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    .line 625
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 626
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring seekTo()."

    .line 627
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 630
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekTo(J)V

    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 2

    .line 605
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 606
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekTo()."

    .line 607
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 610
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekToDefaultPosition()V

    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .locals 1

    .line 615
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 616
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring seekTo()."

    .line 617
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 620
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekToDefaultPosition(I)V

    return-void
.end method

.method public final seekToNext()V
    .locals 2

    .line 1505
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1506
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekToNext()."

    .line 1507
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1510
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekToNext()V

    return-void
.end method

.method public final seekToNextMediaItem()V
    .locals 2

    .line 1459
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1460
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekToNextMediaItem()."

    .line 1461
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1464
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekToNextMediaItem()V

    return-void
.end method

.method public final seekToNextWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1448
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->seekToNextMediaItem()V

    return-void
.end method

.method public final seekToPrevious()V
    .locals 2

    .line 1476
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1477
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekToPrevious()."

    .line 1478
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1481
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekToPrevious()V

    return-void
.end method

.method public final seekToPreviousMediaItem()V
    .locals 2

    .line 1433
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1434
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring seekToPreviousMediaItem()."

    .line 1435
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1438
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekToPreviousMediaItem()V

    return-void
.end method

.method public final seekToPreviousWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1422
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->seekToPreviousMediaItem()V

    return-void
.end method

.method public final sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 944
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "command must not be null"

    .line 945
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    iget v0, p1, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "command must be a custom command"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 949
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 950
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->sendCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 952
    :cond_1
    invoke-static {}, Landroidx/media3/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final setDeviceMuted(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1775
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1776
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setDeviceMuted()."

    .line 1777
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1780
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setDeviceMuted(Z)V

    return-void
.end method

.method public final setDeviceMuted(ZI)V
    .locals 1

    .line 1785
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1786
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setDeviceMuted()."

    .line 1787
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1790
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setDeviceMuted(ZI)V

    return-void
.end method

.method public final setDeviceVolume(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1706
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1707
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setDeviceVolume()."

    .line 1708
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1711
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setDeviceVolume(I)V

    return-void
.end method

.method public final setDeviceVolume(II)V
    .locals 1

    .line 1716
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1717
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setDeviceVolume()."

    .line 1718
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1721
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setDeviceVolume(II)V

    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 1

    .line 994
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "mediaItems must not be null"

    .line 995
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setMediaItem()."

    .line 997
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1000
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;J)V
    .locals 1

    .line 1005
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "mediaItems must not be null"

    .line 1006
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setMediaItem()."

    .line 1008
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1011
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setMediaItem(Landroidx/media3/common/MediaItem;J)V

    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;Z)V
    .locals 1

    .line 1016
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "mediaItems must not be null"

    .line 1017
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setMediaItems()."

    .line 1019
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1022
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setMediaItem(Landroidx/media3/common/MediaItem;Z)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1027
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "mediaItems must not be null"

    .line 1028
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    .line 1029
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1030
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "items must not contain null, index="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1032
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setMediaItems()."

    .line 1033
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1036
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 1056
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "mediaItems must not be null"

    .line 1057
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    .line 1058
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1059
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "items must not contain null, index="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1061
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setMediaItems()."

    .line 1062
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1065
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 1041
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "mediaItems must not be null"

    .line 1042
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    .line 1043
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1044
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "items must not contain null, index="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "MediaController"

    const-string p2, "The controller is not connected. Ignoring setMediaItems()."

    .line 1047
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1050
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 1

    .line 712
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 713
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 714
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    .line 847
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "playbackParameters must not be null"

    .line 848
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setPlaybackParameters()."

    .line 850
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 853
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1

    .line 858
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 859
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setPlaybackSpeed()."

    .line 860
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 863
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setPlaybackSpeed(F)V

    return-void
.end method

.method public final setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 1

    .line 1070
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "playlistMetadata must not be null"

    .line 1071
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setPlaylistMetadata()."

    .line 1073
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1076
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public final setRating(Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 918
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "rating must not be null"

    .line 919
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 921
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setRating(Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 923
    :cond_0
    invoke-static {}, Landroidx/media3/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final setRating(Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Rating;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 895
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const-string v0, "mediaId must not be null"

    .line 896
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mediaId must not be empty"

    .line 897
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "rating must not be null"

    .line 898
    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 900
    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setRating(Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 902
    :cond_0
    invoke-static {}, Landroidx/media3/session/MediaController;->createDisconnectedFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatMode(I)V
    .locals 1

    .line 1521
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1522
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setRepeatMode()."

    .line 1523
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1526
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setRepeatMode(I)V

    return-void
.end method

.method public final setShuffleModeEnabled(Z)V
    .locals 1

    .line 1537
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1538
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setShuffleMode()."

    .line 1539
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1542
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method final setTimeDiffMs(J)V
    .locals 0

    .line 1844
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    iput-wide p1, p0, Landroidx/media3/session/MediaController;->timeDiffMs:J

    return-void
.end method

.method public final setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    .line 1816
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1817
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring setTrackSelectionParameters()."

    .line 1818
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1820
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public final setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1580
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1581
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setVideoSurface()."

    .line 1582
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1585
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1590
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1591
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setVideoSurfaceHolder()."

    .line 1592
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1595
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1610
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1611
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setVideoSurfaceView()."

    .line 1612
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1615
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final setVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 1630
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 1631
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setVideoTextureView()."

    .line 1632
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1635
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public final setVolume(F)V
    .locals 2

    .line 1663
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "volume must be between 0 and 1"

    .line 1664
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1665
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "MediaController"

    const-string v0, "The controller is not connected. Ignoring setVolume()."

    .line 1666
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 1669
    invoke-interface {v0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->setVolume(F)V

    return-void
.end method

.method public final stop()V
    .locals 2

    .line 496
    invoke-direct {p0}, Landroidx/media3/session/MediaController;->verifyApplicationThread()V

    .line 497
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MediaController"

    const-string v1, "The controller is not connected. Ignoring stop()."

    .line 498
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaController;->impl:Landroidx/media3/session/MediaController$MediaControllerImpl;

    .line 501
    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->stop()V

    return-void
.end method
