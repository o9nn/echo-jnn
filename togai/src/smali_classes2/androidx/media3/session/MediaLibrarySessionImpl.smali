.class Landroidx/media3/session/MediaLibrarySessionImpl;
.super Landroidx/media3/session/MediaSessionImpl;
.source "MediaLibrarySessionImpl.java"


# static fields
.field private static final RECENT_LIBRARY_ROOT_MEDIA_ID:Ljava/lang/String; = "androidx.media3.session.recent.root"

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field private final callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

.field private final instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

.field private final subscriptions:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media3/session/MediaSession$ControllerCb;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Player;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/util/BitmapLoader;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct/range {p0 .. p9}, Landroidx/media3/session/MediaSessionImpl;-><init>(Landroidx/media3/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;)V

    iput-object p1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    iput-object p7, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    .line 95
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->subscriptions:Landroidx/collection/ArrayMap;

    return-void
.end method

.method private getRecentMediaItemAtDeviceBootTime(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    .line 413
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v2, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 415
    invoke-interface {v1, v2, p1}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onPlaybackResumption(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 416
    new-instance v1, Landroidx/media3/session/MediaLibrarySessionImpl$1;

    invoke-direct {v1, p0, v0, p2}, Landroidx/media3/session/MediaLibrarySessionImpl$1;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 439
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 416
    invoke-static {p1, v1, p2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private isSubscribed(Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)Z
    .locals 2

    .line 346
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->subscriptions:Landroidx/collection/ArrayMap;

    .line 347
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_1

    .line 348
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 349
    :cond_1
    :goto_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 351
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic lambda$notifySearchResultChanged$2(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-interface {p3, p4, p0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onSearchResultChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method private maybeUpdateLegacyErrorState(Landroidx/media3/session/LibraryResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/LibraryResult<",
            "*>;)V"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    .line 357
    iget v1, p1, Landroidx/media3/session/LibraryResult;->resultCode:I

    const/16 v2, -0x66

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object v1, v1, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    const-string v3, "android.media.extras.ERROR_RESOLUTION_ACTION_INTENT"

    .line 359
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    .line 363
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getLegacyStatusCode()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 366
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroidx/media3/session/R$string;->authentication_required:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object p1, p1, Landroidx/media3/session/MediaLibraryService$LibraryParams;->extras:Landroid/os/Bundle;

    const/4 v3, 0x3

    .line 364
    invoke-virtual {v0, v3, v2, p1}, Landroidx/media3/session/PlayerWrapper;->setLegacyErrorStatus(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 368
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getLegacyStatusCode()I

    move-result p1

    if-eqz p1, :cond_1

    .line 371
    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->clearLegacyErrorStatus()V

    .line 372
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeSubscription(Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)V
    .locals 2

    .line 398
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->subscriptions:Landroidx/collection/ArrayMap;

    .line 399
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 401
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 402
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->subscriptions:Landroidx/collection/ArrayMap;

    .line 403
    invoke-virtual {p2, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 378
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 380
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const-string v0, "MSImplBase"

    const-string v1, "Library operation failed"

    .line 382
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static verifyResultItems(Landroidx/media3/session/LibraryResult;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;I)V"
        }
    .end annotation

    .line 389
    iget v0, p0, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-nez v0, :cond_1

    .line 390
    iget-object p0, p0, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 391
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", pageSize="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected createLegacyBrowserService(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media3/session/MediaSessionServiceLegacyStub;
    .locals 1

    .line 327
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    .line 328
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->initialize(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-object v0
.end method

.method protected dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V
    .locals 2

    .line 334
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    .line 335
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getBrowserLegacyCbForBroadcast()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;->run(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MSImplBase"

    const-string v1, "Exception in using media1 API"

    .line 340
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-super {p0}, Landroidx/media3/session/MediaSessionImpl;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method protected getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;
    .locals 1

    .line 321
    invoke-super {p0}, Landroidx/media3/session/MediaSessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaSessionServiceLegacyStub;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    return-object v0
.end method

.method protected bridge synthetic getLegacyBrowserService()Landroidx/media3/session/MediaSessionServiceLegacyStub;
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    move-result-object v0

    return-object v0
.end method

.method public isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 2

    .line 110
    invoke-super {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getLegacyBrowserService()Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method synthetic lambda$notifyChildrenChanged$0$androidx-media3-session-MediaLibrarySessionImpl(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p4, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->isSubscribed(Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p4, p5, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb;->onChildrenChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$notifyChildrenChanged$1$androidx-media3-session-MediaLibrarySessionImpl(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p4, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->isSubscribed(Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-interface {p4, p5, p1, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb;->onChildrenChanged(ILjava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    return-void
.end method

.method synthetic lambda$onGetChildrenOnHandler$5$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 0

    .line 211
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/LibraryResult;

    if-eqz p1, :cond_0

    .line 213
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->maybeUpdateLegacyErrorState(Landroidx/media3/session/LibraryResult;)V

    .line 214
    invoke-static {p1, p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->verifyResultItems(Landroidx/media3/session/LibraryResult;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onGetChildrenOnHandler$6$androidx-media3-session-MediaLibrarySessionImpl(Ljava/lang/Runnable;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onGetItemOnHandler$7$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 227
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/LibraryResult;

    if-eqz p1, :cond_0

    .line 229
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->maybeUpdateLegacyErrorState(Landroidx/media3/session/LibraryResult;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onGetItemOnHandler$8$androidx-media3-session-MediaLibrarySessionImpl(Ljava/lang/Runnable;)V
    .locals 1

    .line 232
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onGetLibraryRootOnHandler$3$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 170
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/LibraryResult;

    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->maybeUpdateLegacyErrorState(Landroidx/media3/session/LibraryResult;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onGetLibraryRootOnHandler$4$androidx-media3-session-MediaLibrarySessionImpl(Ljava/lang/Runnable;)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onGetSearchResultOnHandler$13$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 0

    .line 308
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/LibraryResult;

    if-eqz p1, :cond_0

    .line 310
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->maybeUpdateLegacyErrorState(Landroidx/media3/session/LibraryResult;)V

    .line 311
    invoke-static {p1, p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->verifyResultItems(Landroidx/media3/session/LibraryResult;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onGetSearchResultOnHandler$14$androidx-media3-session-MediaLibrarySessionImpl(Ljava/lang/Runnable;)V
    .locals 1

    .line 314
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onSearchOnHandler$11$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 289
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/LibraryResult;

    if-eqz p1, :cond_0

    .line 291
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->maybeUpdateLegacyErrorState(Landroidx/media3/session/LibraryResult;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onSearchOnHandler$12$androidx-media3-session-MediaLibrarySessionImpl(Ljava/lang/Runnable;)V
    .locals 1

    .line 294
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onSubscribeOnHandler$9$androidx-media3-session-MediaLibrarySessionImpl(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)V
    .locals 0

    .line 261
    invoke-static {p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->tryGetFutureResult(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/LibraryResult;

    if-eqz p1, :cond_0

    .line 262
    iget p1, p1, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-eqz p1, :cond_1

    .line 263
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/media3/session/MediaLibrarySessionImpl;->removeSubscription(Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onUnsubscribeOnHandler$10$androidx-media3-session-MediaLibrarySessionImpl(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V
    .locals 0

    .line 277
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-direct {p0, p1, p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->removeSubscription(Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)V

    return-void
.end method

.method public notifyChildrenChanged(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 1

    .line 130
    new-instance v0, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public notifyChildrenChanged(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 1

    .line 120
    new-instance v0, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public notifySearchResultChanged(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V
    .locals 1

    .line 142
    new-instance v0, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p2, p3, p4}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    return-void
.end method

.method public onGetChildrenOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "androidx.media3.session.recent.root"

    .line 185
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->canResumePlaybackOnStart()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, -0x6

    .line 187
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getPlaybackState()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 193
    invoke-direct {p0, p1, p5}, Landroidx/media3/session/MediaLibrarySessionImpl;->getRecentMediaItemAtDeviceBootTime(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_0

    .line 194
    :cond_1
    new-instance p1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {p1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string p2, "androidx.media3.session.recent.item"

    .line 198
    invoke-virtual {p1, p2}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    new-instance p2, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {p2}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    const/4 p4, 0x0

    .line 201
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p2

    .line 202
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object p2

    .line 203
    invoke-virtual {p2}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object p2

    .line 199
    invoke-virtual {p1, p2}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 196
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 195
    invoke-static {p1, p5}, Landroidx/media3/session/LibraryResult;->ofItemList(Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    .line 194
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 208
    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onGetChildren(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 209
    new-instance p2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, p4}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    new-instance p3, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public onGetItemOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 224
    invoke-interface {v0, v1, p1, p2}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onGetItem(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 225
    new-instance p2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;)V

    new-instance v0, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {p1, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public onGetLibraryRootOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 148
    iget-boolean v0, p2, Landroidx/media3/session/MediaLibraryService$LibraryParams;->isRecent:Z

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->canResumePlaybackOnStart()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x6

    .line 153
    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_0

    .line 154
    :cond_0
    new-instance p1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {p1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v0, "androidx.media3.session.recent.root"

    .line 157
    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    const/4 v1, 0x1

    .line 160
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setIsBrowsable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->setIsPlayable(Ljava/lang/Boolean;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    .line 158
    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 155
    invoke-static {p1, p2}, Landroidx/media3/session/LibraryResult;->ofItem(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    .line 154
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 167
    invoke-interface {v0, v1, p1, p2}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onGetLibraryRoot(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 168
    new-instance p2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;)V

    new-instance v0, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {p1, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public onGetSearchResultOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "II",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 305
    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onGetSearchResult(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 306
    new-instance p2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, p4}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    new-instance p3, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public onSearchOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 286
    invoke-interface {v0, v1, p1, p2, p3}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onSearch(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 287
    new-instance p2, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;)V

    new-instance p3, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V

    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1
.end method

.method public onSubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaLibraryService$LibraryParams;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 238
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    .line 239
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->subscriptions:Landroidx/collection/ArrayMap;

    .line 240
    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_0

    .line 242
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->subscriptions:Landroidx/collection/ArrayMap;

    .line 243
    invoke-virtual {v3, v0, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_0
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v2, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 255
    invoke-interface {v1, v2, p1, p2, p3}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onSubscribe(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string p3, "onSubscribe must return non-null future"

    .line 254
    invoke-static {p1, p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 259
    new-instance p3, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1, v0, p2}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerCb;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 259
    invoke-interface {p1, p3, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 246
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onUnsubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->callback:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->instance:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;

    .line 274
    invoke-interface {v0, v1, p1, p2}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->onUnsubscribe(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 276
    new-instance v1, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/session/MediaLibrarySessionImpl$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 276
    invoke-interface {v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
