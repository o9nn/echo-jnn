.class final Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;
.super Landroidx/media3/session/IMediaSessionService$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSessionServiceStub"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final mediaSessionManager:Landroidx/media/MediaSessionManager;

.field private final pendingControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/session/IMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionService;)V
    .locals 2

    .line 620
    invoke-direct {p0}, Landroidx/media3/session/IMediaSessionService$Stub;-><init>()V

    .line 621
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    .line 622
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 623
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    .line 624
    invoke-static {p1}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->mediaSessionManager:Landroidx/media/MediaSessionManager;

    .line 626
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public connect(Landroidx/media3/session/IMediaController;Landroid/os/Bundle;)V
    .locals 11

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 639
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/session/ConnectionRequest;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p2}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroidx/media3/session/ConnectionRequest;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    .line 646
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 648
    :try_start_1
    invoke-interface {p1, p2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 655
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    .line 656
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 657
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    if-eqz p2, :cond_2

    goto :goto_0

    .line 658
    :cond_2
    iget p2, v4, Landroidx/media3/session/ConnectionRequest;->pid:I

    :goto_0
    move v6, p2

    .line 659
    new-instance v3, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object p2, v4, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    invoke-direct {v3, p2, v6, v7}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->mediaSessionManager:Landroidx/media/MediaSessionManager;

    .line 661
    invoke-virtual {p2, v3}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v5

    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    .line 662
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_2
    iget-object p2, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    .line 664
    new-instance v10, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;Landroidx/media3/session/IMediaController;Landroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;ZII)V

    invoke-virtual {p2, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 717
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    throw p1

    :catch_1
    move-exception p1

    const-string p2, "MSSImpl"

    const-string v0, "Ignoring malformed Bundle for ConnectionRequest"

    .line 643
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method synthetic lambda$connect$0$androidx-media3-session-MediaSessionService$MediaSessionServiceStub(Landroidx/media3/session/IMediaController;Landroidx/media/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;ZII)V
    .locals 19

    .line 0
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p3

    iget-object v2, v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    .line 666
    invoke-interface {v2, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    .line 669
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSessionService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    .line 708
    :try_start_1
    invoke-interface {v10, v11}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 673
    :cond_0
    :try_start_2
    new-instance v4, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v14, v0, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iget v15, v0, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    const/16 v17, 0x0

    iget-object v5, v0, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    move-object v12, v4

    move-object/from16 v13, p2

    move/from16 v16, p4

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 684
    :try_start_3
    invoke-virtual {v3, v4}, Landroidx/media3/session/MediaSessionService;->onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v4, :cond_1

    .line 708
    :try_start_4
    invoke-interface {v10, v11}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    .line 689
    :cond_1
    :try_start_5
    invoke-virtual {v3, v4}, Landroidx/media3/session/MediaSessionService;->addSession(Landroidx/media3/session/MediaSession;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 692
    :try_start_6
    iget v5, v0, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iget v6, v0, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    iget-object v7, v0, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    move-object v2, v4

    move-object/from16 v3, p1

    move v4, v5

    move v5, v6

    move-object v6, v7

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Landroidx/media3/session/MediaSession;->handleControllerConnectionFromService(Landroidx/media3/session/IMediaController;IILjava/lang/String;IILandroid/os/Bundle;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v2, v11

    goto :goto_2

    :catch_2
    move-exception v0

    move v2, v11

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    :try_start_7
    const-string v3, "MSSImpl"

    const-string v4, "Failed to add a session to session service"

    .line 702
    invoke-static {v3, v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_2

    .line 708
    :try_start_8
    invoke-interface {v10, v11}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    :try_start_9
    invoke-interface {v10, v11}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 714
    :catch_5
    :cond_3
    throw v0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->serviceReference:Ljava/lang/ref/WeakReference;

    .line 722
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 723
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->pendingControllers:Ljava/util/Set;

    .line 724
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/IMediaController;

    const/4 v2, 0x0

    .line 726
    :try_start_0
    invoke-interface {v1, v2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method
