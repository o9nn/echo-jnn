.class final Landroidx/media3/session/MediaSessionStub;
.super Landroidx/media3/session/IMediaSession$Stub;
.source "MediaSessionStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$SessionTask;,
        Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$Controller2Cb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSessionStub"

.field public static final VERSION_INT:I = 0x2


# instance fields
.field private final connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private nextUniqueTrackGroupIdPrefix:I

.field private final pendingControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManager:Landroidx/media/MediaSessionManager;

.field private trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "Landroidx/media3/common/TrackGroup;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroidx/media3/session/IMediaSession$Stub;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/media/MediaSessionManager;->getSessionManager(Landroid/content/Context;)Landroidx/media/MediaSessionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionManager:Landroidx/media/MediaSessionManager;

    .line 130
    new-instance v0, Landroidx/media3/session/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 132
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    .line 133
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    return-void
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "II",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    .line 336
    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "I",
            "Landroidx/media3/session/SessionCommand;",
            "I",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    move-object v9, p0

    .line 355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    iget-object v0, v9, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 359
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v8, :cond_2

    .line 360
    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v9, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 364
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 395
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 369
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v12, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda69;

    move-object v1, v12

    move-object v2, p0

    move-object/from16 v4, p3

    move v5, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda69;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;IILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;)V

    .line 368
    invoke-static {v0, v12}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    throw v0
.end method

.method private dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "I",
            "Landroidx/media3/session/SessionCommand;",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 345
    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method private generateUniqueTrackGroupId(Landroidx/media3/common/TrackGroup;)Ljava/lang/String;
    .locals 3

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/session/MediaSessionStub;->nextUniqueTrackGroupIdPrefix:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/session/MediaSessionStub;->nextUniqueTrackGroupIdPrefix:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;TK;>;",
            "Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;",
            ")",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;TK;>;"
        }
    .end annotation

    .line 200
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)V

    return-object v0
.end method

.method private static handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;",
            ">;TK;>;",
            "Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;",
            ")",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;TK;>;"
        }
    .end annotation

    .line 226
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda60;

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda60;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)V

    return-object v0
.end method

.method private static handleSessionTaskWhenReady(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(TK;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "I",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;TK;>;",
            "Landroidx/media3/common/util/Consumer<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    .line 408
    :cond_0
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 409
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p2

    .line 410
    new-instance p3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda38;

    invoke-direct {p3, p0, p2, p4, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda38;-><init>(Landroidx/media3/session/MediaSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/util/Consumer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 423
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 410
    invoke-interface {p1, p3, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method static synthetic lambda$addMediaItem$35(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1113
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addMediaItem$36(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0

    .line 1115
    invoke-virtual {p0, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$addMediaItemWithIndex$37(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1138
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addMediaItems$39(Ljava/util/List;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1168
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addMediaItems$40(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0

    .line 1169
    invoke-virtual {p0, p2}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$addMediaItemsWithIndex$41(Ljava/util/List;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1197
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$decreaseDeviceVolume$59(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1502
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume()V

    return-void
.end method

.method static synthetic lambda$decreaseDeviceVolumeWithFlags$60(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1515
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->decreaseDeviceVolume(I)V

    return-void
.end method

.method static synthetic lambda$getChildren$68(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    move-object v0, p4

    move-object v1, p5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 1682
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetChildrenOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getItem$67(Ljava/lang/String;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1646
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetItemOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getLibraryRoot$66(Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1626
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetLibraryRootOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getSearchResult$70(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    move-object v0, p4

    move-object v1, p5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 1743
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetSearchResultOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$handleMediaItemsWhenReady$4(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 1

    .line 213
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    .line 214
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;->run(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$handleMediaItemsWhenReady$5(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda71;

    invoke-direct {v1, p0, p2, p1, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda71;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V

    .line 210
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 208
    invoke-static {v0, p0, p1}, Landroidx/media3/common/util/Util;->postOrRunWithCompletion(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$handleMediaItemsWhenReady$6(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 201
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/16 p1, -0x64

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    .line 206
    :cond_0
    invoke-interface {p0, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p4, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda53;

    invoke-direct {p4, p2, p3, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda53;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)V

    .line 205
    invoke-static {p0, p4}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$handleMediaItemsWithStartPositionWhenReady$7(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V
    .locals 1

    .line 239
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    .line 240
    invoke-interface {p1, p0, p2}, Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;->run(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$handleMediaItemsWithStartPositionWhenReady$8(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p2, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda29;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    .line 236
    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    new-instance p1, Landroidx/media3/session/SessionResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 234
    invoke-static {v0, p0, p1}, Landroidx/media3/common/util/Util;->postOrRunWithCompletion(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$handleMediaItemsWithStartPositionWhenReady$9(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 227
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/16 p1, -0x64

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    .line 232
    :cond_0
    invoke-interface {p0, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p4, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2, p3, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)V

    .line 231
    invoke-static {p0, p4}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$handleSessionTaskWhenReady$16(Landroidx/media3/session/MediaSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/util/Consumer;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1

    .line 412
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 413
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    .line 417
    :cond_0
    :try_start_0
    invoke-interface {p2, p3}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 418
    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 420
    invoke-virtual {p1, p0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method static synthetic lambda$increaseDeviceVolume$57(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1476
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume()V

    return-void
.end method

.method static synthetic lambda$increaseDeviceVolumeWithFlags$58(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1489
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->increaseDeviceVolume(I)V

    return-void
.end method

.method static synthetic lambda$moveMediaItem$45(IILandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1256
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->moveMediaItem(II)V

    return-void
.end method

.method static synthetic lambda$moveMediaItems$46(IIILandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1273
    invoke-virtual {p3, p0, p1, p2}, Landroidx/media3/session/PlayerWrapper;->moveMediaItems(III)V

    return-void
.end method

.method static synthetic lambda$onCustomCommand$25(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 833
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$queueSessionTaskWithPlayerCommand$12(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 0

    .line 319
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$queueSessionTaskWithPlayerCommand$13(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 323
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method static synthetic lambda$replaceMediaItem$47(Landroidx/media3/common/MediaItem;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1296
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$replaceMediaItems$49(Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1336
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onAddMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$search$69(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1708
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSearchOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$seekTo$23(JLandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 770
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->seekTo(J)V

    return-void
.end method

.method static synthetic lambda$seekToDefaultPosition$21(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 741
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition()V

    return-void
.end method

.method static synthetic lambda$sendLibraryResultWhenReady$10(Landroidx/media3/session/MediaSession$ControllerInfo;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2

    const-string v0, "MediaSessionStub"

    .line 269
    :try_start_0
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/LibraryResult;

    const-string v1, "LibraryResult must not be null"

    invoke-static {p2, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/LibraryResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    const-string v1, "Library operation failed"

    .line 274
    invoke-static {v0, v1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, -0x1

    .line 275
    invoke-static {p2}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p2

    goto :goto_1

    :catch_2
    move-exception p2

    const-string v1, "Library operation cancelled"

    .line 271
    invoke-static {v0, v1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x1

    .line 272
    invoke-static {p2}, Landroidx/media3/session/LibraryResult;->ofError(I)Landroidx/media3/session/LibraryResult;

    move-result-object p2

    .line 277
    :goto_1
    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/LibraryResult;)V

    return-void
.end method

.method static synthetic lambda$sendLibraryResultWhenReady$11(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 261
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda22;

    invoke-direct {v0, p2, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/session/MediaSessionStub;->handleSessionTaskWhenReady(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$sendSessionResultSuccess$0(Landroidx/media3/common/util/Consumer;Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 152
    invoke-interface {p0, p1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$sendSessionResultSuccess$1(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 158
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;->run(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 162
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p2, p3, p0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    .line 164
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$sendSessionResultWhenReady$2(Landroidx/media3/session/MediaSession$ControllerInfo;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2

    const-string v0, "MediaSessionStub"

    .line 180
    :try_start_0
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/SessionResult;

    const-string v1, "SessionResult must not be null"

    invoke-static {p2, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/SessionResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    const-string v1, "Session operation failed"

    .line 185
    invoke-static {v0, v1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    new-instance v0, Landroidx/media3/session/SessionResult;

    .line 188
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/UnsupportedOperationException;

    if-eqz p2, :cond_0

    const/4 p2, -0x6

    goto :goto_1

    :cond_0
    const/4 p2, -0x1

    .line 190
    :goto_1
    invoke-direct {v0, p2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    move-object p2, v0

    goto :goto_2

    :catch_2
    move-exception p2

    const-string v1, "Session operation cancelled"

    .line 182
    invoke-static {v0, v1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    new-instance p2, Landroidx/media3/session/SessionResult;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    .line 192
    :goto_2
    invoke-static {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void
.end method

.method static synthetic lambda$sendSessionResultWhenReady$3(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 172
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda31;

    invoke-direct {v0, p2, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda31;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/session/MediaSessionStub;->handleSessionTaskWhenReady(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDeviceMuted$61(ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1528
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(Z)V

    return-void
.end method

.method static synthetic lambda$setDeviceMutedWithFlags$62(ZILandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1541
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->setDeviceMuted(ZI)V

    return-void
.end method

.method static synthetic lambda$setDeviceVolume$55(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1450
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(I)V

    return-void
.end method

.method static synthetic lambda$setDeviceVolumeWithFlags$56(IILandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1463
    invoke-virtual {p2, p0, p1}, Landroidx/media3/session/PlayerWrapper;->setDeviceVolume(II)V

    return-void
.end method

.method static synthetic lambda$setMediaItemWithResetPosition$31(Landroidx/media3/common/MediaItem;ZLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 977
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result p0

    :goto_0
    move v3, p0

    if-eqz p1, :cond_1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 983
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide p0

    :goto_1
    move-wide v4, p0

    move-object v0, p2

    move-object v1, p3

    .line 975
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setMediaItemWithStartPosition$30(Landroidx/media3/common/MediaItem;JLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 946
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p3

    move-object v1, p4

    move-wide v4, p1

    .line 944
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setMediaItemsWithResetPosition$32(Ljava/util/List;ZLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    if-eqz p1, :cond_0

    const/4 p4, -0x1

    goto :goto_0

    .line 1026
    :cond_0
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result p4

    :goto_0
    move v3, p4

    if-eqz p1, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    .line 1029
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    :goto_1
    move-wide v4, v0

    move-object v0, p2

    move-object v1, p3

    move-object v2, p0

    .line 1021
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setMediaItemsWithStartIndex$33(Ljava/util/List;IJLandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    const/4 p6, -0x1

    if-ne p1, p6, :cond_0

    .line 1063
    invoke-virtual {p4}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p1

    :goto_0
    if-ne p1, p6, :cond_1

    .line 1066
    invoke-virtual {p4}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide p2

    :cond_1
    move-wide v5, p2

    move-object v1, p4

    move-object v2, p5

    move-object v3, p0

    .line 1059
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaSessionImpl;->onSetMediaItemsOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setPlayWhenReady$63(ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1554
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlayWhenReady(Z)V

    return-void
.end method

.method static synthetic lambda$setPlaybackParameters$29(Landroidx/media3/common/PlaybackParameters;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 911
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$setPlaybackSpeed$28(FLandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 896
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlaybackSpeed(F)V

    return-void
.end method

.method static synthetic lambda$setPlaylistMetadata$34(Landroidx/media3/common/MediaMetadata;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1090
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$setRating$27(Landroidx/media3/common/Rating;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 884
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setRatingWithMediaId$26(Ljava/lang/String;Landroidx/media3/common/Rating;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 862
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onSetRatingOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/common/Rating;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setRepeatMode$51(ILandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1399
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic lambda$setShuffleModeEnabled$52(ZLandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1412
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$setVideoSurface$53(Landroid/view/Surface;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1425
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic lambda$setVolume$54(FLandroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1437
    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->setVolume(F)V

    return-void
.end method

.method static synthetic lambda$stop$18(Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 630
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->stop()V

    return-void
.end method

.method static synthetic lambda$subscribe$71(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1769
    invoke-virtual {p2, p3, p0, p1}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$unsubscribe$72(Ljava/lang/String;Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1787
    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->onUnsubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I
    .locals 2

    const/16 v0, 0x11

    .line 429
    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 430
    invoke-virtual {v1, p1, v0}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    const/16 v1, 0x10

    .line 432
    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getCurrentMediaItemIndex()I

    move-result p1

    add-int/2addr p3, p1

    :cond_0
    return p3
.end method

.method private queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/IMediaController;",
            "II",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;)V"
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 290
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v8, :cond_2

    .line 291
    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 295
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 300
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda51;

    move-object v3, v2

    move-object v4, p0

    move v6, p3

    move v7, p2

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda51;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    .line 299
    invoke-static {p1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    throw p1
.end method

.method private static sendLibraryResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/LibraryResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "I",
            "Landroidx/media3/session/LibraryResult<",
            "*>;)V"
        }
    .end annotation

    .line 251
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onLibraryResult(ILandroidx/media3/session/LibraryResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to send result to browser "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaSessionStub"

    invoke-static {p2, p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "K:",
            "Landroidx/media3/session/MediaLibrarySessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/LibraryResult<",
            "TV;>;>;TK;>;)",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 260
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda78;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda78;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-object v0
.end method

.method private static sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V
    .locals 1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-interface {v0, p1, p2}, Landroidx/media3/session/MediaSession$ControllerCb;->onSessionResult(ILandroidx/media3/session/SessionResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to send result to controller "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaSessionStub"

    invoke-static {p2, p0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/session/PlayerWrapper;",
            ">;)",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 152
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/common/util/Consumer;)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p0

    return-object p0
.end method

.method private static sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;",
            ")",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 157
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)V

    return-object v0
.end method

.method private static sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">(",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;TK;>;)",
            "Landroidx/media3/session/MediaSessionStub$SessionTask<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;TK;>;"
        }
    .end annotation

    .line 171
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda36;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-object v0
.end method

.method private updateOverridesUsingUniqueTrackGroupIds(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 5

    .line 1826
    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 1830
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    .line 1831
    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/TrackSelectionOverride;

    .line 1832
    iget-object v2, v1, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    .line 1833
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v3

    iget-object v2, v2, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/TrackGroup;

    if-eqz v2, :cond_1

    .line 1834
    iget-object v3, v1, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v3, v3, Landroidx/media3/common/TrackGroup;->length:I

    iget v4, v2, Landroidx/media3/common/TrackGroup;->length:I

    if-ne v3, v4, :cond_1

    .line 1836
    new-instance v3, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v1, v1, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v3, v2, v1}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_0

    .line 1839
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_0

    .line 1842
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/MediaItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda67;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda67;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance p3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda68;

    invoke-direct {p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda68;-><init>()V

    .line 1111
    invoke-static {v0, p3}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 1110
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x14

    .line 1106
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 1103
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addMediaItemWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p4}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/MediaItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda72;

    invoke-direct {v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda72;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance p4, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda73;

    invoke-direct {p4, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda73;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1136
    invoke-static {v0, p4}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 1135
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x14

    .line 1131
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 1128
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1154
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 1156
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    .line 1155
    invoke-static {v0, p3}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda77;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda77;-><init>(Ljava/util/List;)V

    new-instance p3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda81;

    invoke-direct {p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda81;-><init>()V

    .line 1166
    invoke-static {v0, p3}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 1165
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x14

    .line 1161
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 1158
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addMediaItemsWithIndex(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1183
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 1185
    invoke-static {p4}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p4

    .line 1184
    invoke-static {v0, p4}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda49;

    invoke-direct {v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda49;-><init>(Ljava/util/List;)V

    new-instance p4, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda50;

    invoke-direct {p4, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda50;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1195
    invoke-static {v0, p4}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 1194
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x14

    .line 1190
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 1187
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearMediaItems(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1239
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda3;-><init>()V

    .line 1243
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/16 v1, 0x14

    .line 1239
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public connect(Landroidx/media3/session/IMediaController;IILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 7

    .line 449
    new-instance v1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v1, p4, p5, p6}, Landroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 451
    new-instance p4, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object p5, p0, Landroidx/media3/session/MediaSessionStub;->sessionManager:Landroidx/media/MediaSessionManager;

    .line 456
    invoke-virtual {p5, v1}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v4

    new-instance v5, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-direct {v5, p1}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media3/session/IMediaController;)V

    move-object v0, p4

    move v2, p2

    move v3, p3

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    iget-object p2, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 459
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/MediaSessionImpl;

    if-eqz p2, :cond_1

    .line 460
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    .line 469
    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p5, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda13;

    invoke-direct {p5, p0, p4, p2, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/IMediaController;)V

    .line 470
    invoke-static {p3, p5}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 462
    :try_start_0
    invoke-interface {p1, p2}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public connect(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 599
    :cond_0
    :try_start_0
    sget-object p2, Landroidx/media3/session/ConnectionRequest;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {p2, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/ConnectionRequest;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 605
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    .line 606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    if-eqz p3, :cond_1

    goto :goto_0

    .line 609
    :cond_1
    iget p3, p2, Landroidx/media3/session/ConnectionRequest;->pid:I

    :goto_0
    move v5, p3

    .line 611
    :try_start_1
    iget v2, p2, Landroidx/media3/session/ConnectionRequest;->libraryVersion:I

    iget v3, p2, Landroidx/media3/session/ConnectionRequest;->controllerInterfaceVersion:I

    iget-object v4, p2, Landroidx/media3/session/ConnectionRequest;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroidx/media3/session/ConnectionRequest;->connectionHints:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/session/MediaSessionStub;->connect(Landroidx/media3/session/IMediaController;IILjava/lang/String;IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    throw p1

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for ConnectionRequest"

    .line 601
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public decreaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1498
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda14;-><init>()V

    .line 1502
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/16 v1, 0x1a

    .line 1498
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public decreaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1511
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda30;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda30;-><init>(I)V

    .line 1515
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x22

    .line 1511
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public flushCommandQueue(Landroidx/media3/session/IMediaController;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1562
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 1564
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v2, :cond_3

    .line 1565
    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 1568
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1571
    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda39;

    invoke-direct {v3, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 1570
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1576
    throw p1
.end method

.method generateAndCacheUniqueTrackGroupIds(Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 7

    .line 1791
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->currentTracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v0}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1792
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 1793
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->builder()Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 1794
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1795
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Tracks$Group;

    .line 1796
    invoke-virtual {v4}, Landroidx/media3/common/Tracks$Group;->getMediaTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    .line 1797
    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    .line 1799
    invoke-direct {p0, v5}, Landroidx/media3/session/MediaSessionStub;->generateUniqueTrackGroupId(Landroidx/media3/common/TrackGroup;)Ljava/lang/String;

    move-result-object v6

    .line 1801
    :cond_0
    invoke-virtual {v2, v5, v6}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    .line 1802
    invoke-virtual {v4, v6}, Landroidx/media3/common/Tracks$Group;->copyWithId(Ljava/lang/String;)Landroidx/media3/common/Tracks$Group;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1804
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    .line 1805
    new-instance v0, Landroidx/media3/common/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroidx/media3/session/PlayerInfo;->copyWithCurrentTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    .line 1806
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v0, v0, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 1809
    :cond_2
    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 1810
    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->clearOverrides()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v0

    .line 1811
    iget-object v1, p1, Landroidx/media3/session/PlayerInfo;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v1, v1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/TrackSelectionOverride;

    .line 1812
    iget-object v3, v2, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v4, p0, Landroidx/media3/session/MediaSessionStub;->trackGroupIdMap:Lcom/google/common/collect/ImmutableBiMap;

    .line 1813
    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1815
    new-instance v5, Landroidx/media3/common/TrackSelectionOverride;

    .line 1816
    invoke-virtual {v3, v4}, Landroidx/media3/common/TrackGroup;->copyWithId(Ljava/lang/String;)Landroidx/media3/common/TrackGroup;

    move-result-object v3

    iget-object v2, v2, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v5, v3, v2}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    .line 1815
    invoke-virtual {v0, v5}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_1

    .line 1818
    :cond_3
    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->addOverride(Landroidx/media3/common/TrackSelectionOverride;)Landroidx/media3/common/TrackSelectionParameters$Builder;

    goto :goto_1

    .line 1821
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;->build()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/session/PlayerInfo;->copyWithTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    return-object p1
.end method

.method public getChildren(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1661
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    const-string p1, "getChildren(): Ignoring empty parentId"

    .line 1662
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-gez p4, :cond_2

    const-string p1, "getChildren(): Ignoring negative page"

    .line 1666
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ge p5, v0, :cond_3

    const-string p1, "getChildren(): Ignoring pageSize less than 1"

    .line 1670
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p6, :cond_4

    const/4 p6, 0x0

    goto :goto_0

    .line 1675
    :cond_4
    sget-object v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p6}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p6

    check-cast p6, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 1676
    :goto_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda52;

    invoke-direct {v0, p3, p4, p5, p6}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda52;-><init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1680
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const p4, 0xc353

    .line 1676
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/media3/session/ConnectedControllersManager<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    return-object v0
.end method

.method public getItem(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1636
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "MediaSessionStub"

    const-string p2, "getItem(): Ignoring empty mediaId"

    .line 1637
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1640
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda64;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda64;-><init>(Ljava/lang/String;)V

    .line 1644
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const v0, 0xc354

    .line 1640
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public getLibraryRoot(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    const/4 p3, 0x0

    goto :goto_0

    .line 1619
    :cond_1
    sget-object v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 1620
    :goto_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda80;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda80;-><init>(Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1624
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const v0, 0xc350

    .line 1620
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public getSearchResult(Landroidx/media3/session/IMediaController;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1722
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    const-string p1, "getSearchResult(): Ignoring empty query"

    .line 1723
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-gez p4, :cond_2

    const-string p1, "getSearchResult(): Ignoring negative page"

    .line 1727
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-ge p5, v0, :cond_3

    const-string p1, "getSearchResult(): Ignoring pageSize less than 1"

    .line 1731
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p6, :cond_4

    const/4 p6, 0x0

    goto :goto_0

    .line 1736
    :cond_4
    sget-object v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p6}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p6

    check-cast p6, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 1737
    :goto_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda10;

    invoke-direct {v0, p3, p4, p5, p6}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1741
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const p4, 0xc356

    .line 1737
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public increaseDeviceVolume(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1472
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda23;-><init>()V

    .line 1476
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/16 v1, 0x1a

    .line 1472
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public increaseDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1485
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda18;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda18;-><init>(I)V

    .line 1489
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x22

    .line 1485
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method synthetic lambda$addMediaItemWithIndex$38$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0

    .line 1141
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p1

    .line 1140
    invoke-virtual {p2, p1, p4}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$addMediaItemsWithIndex$42$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0

    .line 1200
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p1

    .line 1199
    invoke-virtual {p2, p1, p4}, Landroidx/media3/session/PlayerWrapper;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$connect$17$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/IMediaController;)V
    .locals 18

    .line 0
    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v1, "Controller "

    const/4 v15, 0x0

    :try_start_0
    iget-object v2, v12, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    .line 475
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 550
    :try_start_1
    invoke-interface {v14, v15}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    .line 480
    :cond_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    .line 481
    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->getCallbackBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 483
    invoke-virtual {v13, v0}, Landroidx/media3/session/MediaSessionImpl;->onConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v3

    .line 487
    iget-boolean v4, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->isTrusted()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_1

    .line 550
    :try_start_3
    invoke-interface {v14, v15}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    .line 490
    :cond_1
    :try_start_4
    iget-boolean v4, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->isAccepted:Z

    if-nez v4, :cond_2

    .line 492
    sget-object v3, Landroidx/media3/session/SessionCommands;->EMPTY:Landroidx/media3/session/SessionCommands;

    sget-object v4, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    .line 493
    invoke-static {v3, v4}, Landroidx/media3/session/MediaSession$ConnectionResult;->accept(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v3

    :cond_2
    iget-object v4, v12, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 497
    invoke-virtual {v4, v0}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "MediaSessionStub"

    .line 498
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " has sent connection request multiple times"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, v12, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 505
    iget-object v4, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v5, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1, v2, v0, v4, v5}, Landroidx/media3/session/ConnectedControllersManager;->addController(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    iget-object v1, v12, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 512
    invoke-virtual {v1, v0}, Landroidx/media3/session/ConnectedControllersManager;->getSequencedFutureManager(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v1

    .line 511
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroidx/media3/session/SequencedFutureManager;

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v1

    .line 517
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->createPlayerInfoForBundling()Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    .line 518
    invoke-virtual {v12, v2}, Landroidx/media3/session/MediaSessionStub;->generateAndCacheUniqueTrackGroupIds(Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v11

    .line 519
    new-instance v17, Landroidx/media3/session/ConnectionState;

    const v2, 0x3baa1154

    const/4 v4, 0x2

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v5

    .line 525
    iget-object v6, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->customLayout:Lcom/google/common/collect/ImmutableList;

    if-eqz v6, :cond_4

    .line 526
    iget-object v6, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->customLayout:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 527
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getCustomLayout()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    :goto_0
    iget-object v7, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->availableSessionCommands:Landroidx/media3/session/SessionCommands;

    iget-object v8, v3, Landroidx/media3/session/MediaSession$ConnectionResult;->availablePlayerCommands:Landroidx/media3/common/Player$Commands;

    .line 530
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object v9

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/session/SessionToken;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    move-object/from16 v1, v17

    move v3, v4

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v11}, Landroidx/media3/session/ConnectionState;-><init>(IILandroidx/media3/session/IMediaSession;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;Landroidx/media3/session/PlayerInfo;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_5

    .line 550
    :try_start_5
    invoke-interface {v14, v15}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    return-void

    .line 541
    :cond_5
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroidx/media3/session/SequencedFutureManager;->obtainNextSequenceNumber()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroidx/media3/session/ConnectionState;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 540
    invoke-interface {v14, v1, v2}, Landroidx/media3/session/IMediaController;->onConnected(ILandroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v1, 0x1

    goto :goto_1

    :catch_3
    move v1, v15

    .line 546
    :goto_1
    :try_start_7
    invoke-virtual {v13, v0}, Landroidx/media3/session/MediaSessionImpl;->onPostConnectOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v1, :cond_6

    .line 550
    :try_start_8
    invoke-interface {v14, v15}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    :cond_6
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move v1, v15

    :goto_2
    if-nez v1, :cond_7

    :try_start_9
    invoke-interface {v14, v15}, Landroidx/media3/session/IMediaController;->onDisconnected(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 556
    :catch_5
    :cond_7
    throw v0
.end method

.method synthetic lambda$dispatchSessionTaskWithSessionCommand$15$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;IILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 371
    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x4

    if-eqz p2, :cond_1

    iget-object p4, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 375
    invoke-virtual {p4, p1, p2}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 377
    new-instance p2, Landroidx/media3/session/SessionResult;

    invoke-direct {p2, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void

    :cond_1
    iget-object p2, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 384
    invoke-virtual {p2, p1, p4}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 385
    new-instance p2, Landroidx/media3/session/SessionResult;

    invoke-direct {p2, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void

    .line 392
    :cond_2
    invoke-interface {p5, p6, p1, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->run(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$flushCommandQueue$64$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 1572
    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void
.end method

.method synthetic lambda$play$20$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 695
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->onPlayRequested()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 700
    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->getMediaItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 705
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->prepareAndPlayForPlaybackResumption(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/common/Player;)V

    goto :goto_0

    .line 707
    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/Util;->handlePlayButtonAction(Landroidx/media3/common/Player;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$queueSessionTaskWithPlayerCommand$14$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 302
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/ConnectedControllersManager;->isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    new-instance p2, Landroidx/media3/session/SessionResult;

    const/4 p4, -0x4

    invoke-direct {p2, p4}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void

    .line 310
    :cond_0
    invoke-virtual {p4, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->onPlayerCommandRequestOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    new-instance p2, Landroidx/media3/session/SessionResult;

    invoke-direct {p2, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p3, p2}, Landroidx/media3/session/MediaSessionStub;->sendSessionResult(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void

    :cond_1
    const/16 v0, 0x1b

    if-ne p2, v0, :cond_2

    .line 317
    new-instance p2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda45;

    invoke-direct {p2, p5, p4, p1, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda45;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    .line 318
    invoke-virtual {p4, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 320
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 322
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda46;

    invoke-direct {v0, p5, p4, p1, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda46;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-virtual {p2, p1, v0}, Landroidx/media3/session/ConnectedControllersManager;->addToCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$release$19$androidx-media3-session-MediaSessionStub(Landroidx/media3/session/IMediaController;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 647
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->removeController(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$removeMediaItem$43$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 1214
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->removeMediaItem(I)V

    return-void
.end method

.method synthetic lambda$removeMediaItems$44$androidx-media3-session-MediaSessionStub(IILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 1230
    invoke-direct {p0, p4, p3, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p1

    .line 1231
    invoke-direct {p0, p4, p3, p2}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p2

    .line 1229
    invoke-virtual {p3, p1, p2}, Landroidx/media3/session/PlayerWrapper;->removeMediaItems(II)V

    return-void
.end method

.method synthetic lambda$replaceMediaItem$48$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 2

    .line 1298
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1300
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p1

    const/4 p3, 0x0

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/MediaItem;

    .line 1299
    invoke-virtual {p2, p1, p3}, Landroidx/media3/session/PlayerWrapper;->replaceMediaItem(ILandroidx/media3/common/MediaItem;)V

    goto :goto_0

    .line 1303
    :cond_0
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    add-int/2addr p1, v1

    .line 1304
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p1

    .line 1302
    invoke-virtual {p2, v0, p1, p4}, Landroidx/media3/session/PlayerWrapper;->replaceMediaItems(IILjava/util/List;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$replaceMediaItems$50$androidx-media3-session-MediaSessionStub(IILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 0

    .line 1339
    invoke-direct {p0, p4, p3, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p1

    .line 1340
    invoke-direct {p0, p4, p3, p2}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p2

    .line 1338
    invoke-virtual {p3, p1, p2, p5}, Landroidx/media3/session/PlayerWrapper;->replaceMediaItems(IILjava/util/List;)V

    return-void
.end method

.method synthetic lambda$seekToDefaultPositionWithMediaItemIndex$22$androidx-media3-session-MediaSessionStub(ILandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 757
    invoke-direct {p0, p3, p2, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p1

    .line 756
    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->seekToDefaultPosition(I)V

    return-void
.end method

.method synthetic lambda$seekToWithMediaItemIndex$24$androidx-media3-session-MediaSessionStub(IJLandroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 787
    invoke-direct {p0, p5, p4, p1}, Landroidx/media3/session/MediaSessionStub;->maybeCorrectMediaItemIndex(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p1

    .line 786
    invoke-virtual {p4, p1, p2, p3}, Landroidx/media3/session/PlayerWrapper;->seekTo(IJ)V

    return-void
.end method

.method synthetic lambda$setTrackSelectionParameters$65$androidx-media3-session-MediaSessionStub(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/session/PlayerWrapper;)V
    .locals 0

    .line 1601
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionStub;->updateOverridesUsingUniqueTrackGroupIds(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p1

    .line 1602
    invoke-virtual {p2, p1}, Landroidx/media3/session/PlayerWrapper;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public moveMediaItem(Landroidx/media3/session/IMediaController;III)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1252
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda75;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda75;-><init>(II)V

    .line 1256
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x14

    .line 1252
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public moveMediaItems(Landroidx/media3/session/IMediaController;IIII)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1269
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda19;

    invoke-direct {v0, p3, p4, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda19;-><init>(III)V

    .line 1273
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x14

    .line 1269
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public onControllerResult(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/session/SessionResult;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/session/SessionResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object v2, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 670
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/media3/session/ConnectedControllersManager;->getSequencedFutureManager(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 676
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 674
    :cond_1
    :try_start_2
    invoke-virtual {p1, p2, p3}, Landroidx/media3/session/SequencedFutureManager;->setFutureResult(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 676
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 677
    throw p1

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for SessionResult"

    .line 663
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCustomCommand(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/session/SessionCommand;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/session/SessionCommand;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda20;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    .line 831
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p4

    .line 827
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for SessionCommand"

    .line 824
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pause(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 718
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda42;-><init>()V

    .line 719
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/4 v1, 0x1

    .line 718
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public play(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 685
    invoke-interface {p1}, Landroidx/media3/session/IMediaController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 689
    :cond_1
    new-instance v1, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda47;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 693
    invoke-static {v1}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/4 v1, 0x1

    .line 689
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public prepare(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 728
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda63;-><init>()V

    .line 729
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/4 v1, 0x2

    .line 728
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->connectedControllersManager:Landroidx/media3/session/ConnectedControllersManager;

    .line 561
    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->getConnectedControllers()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 562
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 563
    invoke-virtual {v1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 566
    :try_start_0
    invoke-interface {v1, v2}, Landroidx/media3/session/MediaSession$ControllerCb;->onDisconnected(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->pendingControllers:Ljava/util/Set;

    .line 572
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_1
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    .line 573
    invoke-virtual {v1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 576
    :try_start_1
    invoke-interface {v1, v2}, Landroidx/media3/session/MediaSession$ControllerCb;->onDisconnected(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public release(Landroidx/media3/session/IMediaController;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 639
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p2, p0, Landroidx/media3/session/MediaSessionStub;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 641
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/MediaSessionImpl;

    if-eqz p2, :cond_2

    .line 642
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v2, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/IMediaController;)V

    .line 645
    invoke-static {p2, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    throw p1
.end method

.method public removeMediaItem(Landroidx/media3/session/IMediaController;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1208
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda59;

    invoke-direct {v0, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda59;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1212
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x14

    .line 1208
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public removeMediaItems(Landroidx/media3/session/IMediaController;III)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1223
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda79;

    invoke-direct {v0, p0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda79;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    .line 1227
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x14

    .line 1223
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public replaceMediaItem(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 1284
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p4}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/MediaItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda40;

    invoke-direct {v0, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda40;-><init>(Landroidx/media3/common/MediaItem;)V

    new-instance p4, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda41;

    invoke-direct {p4, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda41;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 1294
    invoke-static {v0, p4}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 1293
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x14

    .line 1289
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 1286
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public replaceMediaItems(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 1322
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 1324
    invoke-static {p5}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p5

    .line 1323
    invoke-static {v0, p5}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda55;

    invoke-direct {v0, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda55;-><init>(Lcom/google/common/collect/ImmutableList;)V

    new-instance p5, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda66;

    invoke-direct {p5, p0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda66;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    .line 1334
    invoke-static {v0, p5}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 1333
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x14

    .line 1329
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 1326
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public search(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1695
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "MediaSessionStub"

    const-string p2, "search(): Ignoring empty query"

    .line 1696
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p4, :cond_2

    const/4 p4, 0x0

    goto :goto_0

    .line 1701
    :cond_2
    sget-object v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p4}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p4

    check-cast p4, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 1702
    :goto_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda48;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda48;-><init>(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1706
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const p4, 0xc355

    .line 1702
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekBack(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 795
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda58;-><init>()V

    .line 796
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/16 v1, 0xb

    .line 795
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekForward(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 804
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda37;-><init>()V

    .line 808
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/16 v1, 0xc

    .line 804
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekTo(Landroidx/media3/session/IMediaController;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 766
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda8;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda8;-><init>(J)V

    .line 770
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/4 p4, 0x5

    .line 766
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekToDefaultPosition(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 737
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda32;-><init>()V

    .line 741
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/4 v1, 0x4

    .line 737
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekToDefaultPositionWithMediaItemIndex(Landroidx/media3/session/IMediaController;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 750
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaSessionStub;I)V

    .line 754
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0xa

    .line 750
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekToNext(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1385
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda12;-><init>()V

    .line 1386
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/16 v1, 0x9

    .line 1385
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekToNextMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1361
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda44;-><init>()V

    .line 1365
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/16 v1, 0x8

    .line 1361
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekToPrevious(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1373
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda57;-><init>()V

    .line 1377
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/4 v1, 0x7

    .line 1373
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekToPreviousMediaItem(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1349
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda25;-><init>()V

    .line 1353
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/4 v1, 0x6

    .line 1349
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public seekToWithMediaItemIndex(Landroidx/media3/session/IMediaController;IIJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 780
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda61;

    invoke-direct {v0, p0, p3, p4, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda61;-><init>(Landroidx/media3/session/MediaSessionStub;IJ)V

    .line 784
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0xa

    .line 780
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setDeviceMuted(Landroidx/media3/session/IMediaController;IZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1524
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda65;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda65;-><init>(Z)V

    .line 1528
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x1a

    .line 1524
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setDeviceMutedWithFlags(Landroidx/media3/session/IMediaController;IZI)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1537
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda26;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda26;-><init>(ZI)V

    .line 1541
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x22

    .line 1537
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setDeviceVolume(Landroidx/media3/session/IMediaController;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1446
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda21;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda21;-><init>(I)V

    .line 1450
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x19

    .line 1446
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setDeviceVolumeWithFlags(Landroidx/media3/session/IMediaController;III)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1459
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda33;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda33;-><init>(II)V

    .line 1463
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x21

    .line 1459
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setMediaItem(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 917
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/session/MediaSessionStub;->setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public setMediaItemWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 963
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/MediaItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda82;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda82;-><init>(Landroidx/media3/common/MediaItem;Z)V

    new-instance p3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;-><init>()V

    .line 973
    invoke-static {v0, p3}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 972
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x1f

    .line 968
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 965
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItemWithStartPosition(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 932
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/MediaItem;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda62;

    invoke-direct {v0, p3, p4, p5}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda62;-><init>(Landroidx/media3/common/MediaItem;J)V

    new-instance p3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;-><init>()V

    .line 942
    invoke-static {v0, p3}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 941
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x1f

    .line 937
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 934
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItems(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 1

    const/4 v0, 0x1

    .line 992
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/session/MediaSessionStub;->setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V

    return-void
.end method

.method public setMediaItemsWithResetPosition(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1007
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 1009
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    .line 1008
    invoke-static {v0, p3}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda7;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;Z)V

    new-instance p3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;-><init>()V

    .line 1019
    invoke-static {v0, p3}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 1018
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x14

    .line 1014
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 1011
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMediaItemsWithStartIndex(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 1047
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->getList(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    .line 1046
    invoke-static {v0, p3}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda70;

    invoke-direct {v0, p3, p4, p5, p6}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda70;-><init>(Ljava/util/List;IJ)V

    new-instance p3, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda1;-><init>()V

    .line 1057
    invoke-static {v0, p3}, Landroidx/media3/session/MediaSessionStub;->handleMediaItemsWithStartPositionWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    .line 1056
    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 p4, 0x14

    .line 1052
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaItem"

    .line 1049
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayWhenReady(Landroidx/media3/session/IMediaController;IZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1550
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda16;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda16;-><init>(Z)V

    .line 1554
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/4 v0, 0x1

    .line 1550
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 905
    :cond_0
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    .line 906
    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/PlaybackParameters;

    .line 907
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda15;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/common/PlaybackParameters;)V

    .line 911
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0xd

    .line 907
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaybackSpeed(Landroidx/media3/session/IMediaController;IF)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 892
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda54;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda54;-><init>(F)V

    .line 896
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0xd

    .line 892
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/MediaMetadata;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/MediaMetadata;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda34;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/common/MediaMetadata;)V

    .line 1090
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x13

    .line 1086
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for MediaMetadata"

    .line 1083
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRating(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 873
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/Rating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p3}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p3

    check-cast p3, Landroidx/media3/common/Rating;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/common/Rating;)V

    .line 882
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const v0, 0x9c4a

    .line 878
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for Rating"

    .line 875
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRatingWithMediaId(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    .line 845
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaSessionStub"

    if-eqz v0, :cond_1

    const-string p1, "setRatingWithMediaId(): Ignoring empty mediaId"

    .line 846
    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 851
    :cond_1
    :try_start_0
    sget-object v0, Landroidx/media3/common/Rating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p4}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/Rating;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Landroidx/media3/common/Rating;)V

    .line 860
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const p4, 0x9c4a

    .line 856
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Ignoring malformed Bundle for Rating"

    .line 853
    invoke-static {v1, p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRepeatMode(Landroidx/media3/session/IMediaController;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1395
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda28;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda28;-><init>(I)V

    .line 1399
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0xf

    .line 1395
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setShuffleModeEnabled(Landroidx/media3/session/IMediaController;IZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1408
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda2;-><init>(Z)V

    .line 1412
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0xe

    .line 1408
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1589
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/TrackSelectionParameters;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/common/TrackSelectionParameters;)V

    .line 1598
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x1d

    .line 1594
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaSessionStub"

    const-string p3, "Ignoring malformed Bundle for TrackSelectionParameters"

    .line 1591
    invoke-static {p2, p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setVideoSurface(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1421
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda27;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda27;-><init>(Landroid/view/Surface;)V

    .line 1425
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x1b

    .line 1421
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public setVolume(Landroidx/media3/session/IMediaController;IF)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1433
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda35;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda35;-><init>(F)V

    .line 1437
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const/16 v0, 0x18

    .line 1433
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public stop(Landroidx/media3/session/IMediaController;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 629
    :cond_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda56;-><init>()V

    .line 630
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendSessionResultSuccess(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object v0

    const/4 v1, 0x3

    .line 629
    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->queueSessionTaskWithPlayerCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public subscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1756
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "MediaSessionStub"

    const-string p2, "subscribe(): Ignoring empty parentId"

    .line 1757
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p4, :cond_2

    const/4 p4, 0x0

    goto :goto_0

    .line 1762
    :cond_2
    sget-object v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p4}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p4

    check-cast p4, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    .line 1763
    :goto_0
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda76;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda76;-><init>(Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    .line 1767
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const p4, 0xc351

    .line 1763
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public unsubscribe(Landroidx/media3/session/IMediaController;ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1777
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "MediaSessionStub"

    const-string/jumbo p2, "unsubscribe(): Ignoring empty parentId"

    .line 1778
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1781
    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda74;

    invoke-direct {v0, p3}, Landroidx/media3/session/MediaSessionStub$$ExternalSyntheticLambda74;-><init>(Ljava/lang/String;)V

    .line 1785
    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->sendLibraryResultWhenReady(Landroidx/media3/session/MediaSessionStub$SessionTask;)Landroidx/media3/session/MediaSessionStub$SessionTask;

    move-result-object p3

    const v0, 0xc352

    .line 1781
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->dispatchSessionTaskWithSessionCommand(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method
