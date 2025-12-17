.class Landroidx/media3/session/MediaLibraryServiceLegacyStub;
.super Landroidx/media3/session/MediaSessionServiceLegacyStub;
.source "MediaLibraryServiceLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;,
        Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;,
        Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MLSLegacyStub"


# instance fields
.field private final browserLegacyCbForBroadcast:Landroidx/media3/session/MediaSession$ControllerCb;

.field private final librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionServiceLegacyStub;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 79
    new-instance p1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForBroadcast;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaLibraryServiceLegacyStub$1;)V

    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->browserLegacyCbForBroadcast:Landroidx/media3/session/MediaSession$ControllerCb;

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)Landroidx/media3/session/MediaLibrarySessionImpl;
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)Lcom/google/common/util/concurrent/AsyncFunction;
    .locals 0

    .line 67
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->createMediaItemsToBrowserItemsAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 67
    invoke-static {p0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendLibraryResultWithMediaItemsWhenReady(Landroidx/media/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method private static cancelAllFutures(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 492
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 493
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 494
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createMediaItemToBrowserItemAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "Landroidx/media3/session/LibraryResult<",
            "Landroidx/media3/common/MediaItem;",
            ">;",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)V

    return-object v0
.end method

.method private createMediaItemsToBrowserItemsAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/AsyncFunction<",
            "Landroidx/media3/session/LibraryResult<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/MediaItem;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;"
        }
    .end annotation

    .line 420
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;)V

    return-object v0
.end method

.method private getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 2

    .line 363
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentBrowserInfo()Landroidx/media/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    return-object v0
.end method

.method private handleBitmapFuturesAllCompletedAndSetOutputFuture(Ljava/util/List;Ljava/util/List;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 476
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 477
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v2, :cond_0

    .line 481
    :try_start_0
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const-string v3, "MLSLegacyStub"

    const-string v4, "Failed to get bitmap"

    .line 483
    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v2, 0x0

    .line 486
    :goto_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-static {v3, v2}, Landroidx/media3/session/MediaUtils;->convertToBrowserItem(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {p3, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private static ignoreFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$createMediaItemToBrowserItemAsyncFunction$13(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 521
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 522
    invoke-interface {p1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$createMediaItemToBrowserItemAsyncFunction$14(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/MediaItem;)V
    .locals 2

    .line 530
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string v0, "MLSLegacyStub"

    const-string v1, "failed to get bitmap"

    .line 532
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 534
    :goto_1
    invoke-static {p2, p0}, Landroidx/media3/session/MediaUtils;->convertToBrowserItem(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$createMediaItemsToBrowserItemsAsyncFunction$10(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/List;)V
    .locals 0

    .line 438
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 439
    invoke-static {p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->cancelAllFutures(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$sendCustomActionResultWhenReady$7(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 2

    .line 372
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/SessionResult;

    const-string v0, "SessionResult must not be null"

    invoke-static {p0, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/SessionResult;

    .line 373
    iget-object p0, p0, Landroidx/media3/session/SessionResult;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const-string v0, "MLSLegacyStub"

    const-string v1, "Custom action failed"

    .line 375
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 376
    invoke-virtual {p1, p0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$sendLibraryResultWithMediaItemWhenReady$8(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 2

    .line 388
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 389
    invoke-virtual {p1, p0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    const-string v0, "MLSLegacyStub"

    const-string v1, "Library operation failed"

    .line 391
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    .line 392
    invoke-virtual {p1, p0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$sendLibraryResultWithMediaItemsWhenReady$9(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 3

    const/4 v0, 0x0

    .line 404
    :try_start_0
    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000

    .line 408
    invoke-static {p0, v1}, Landroidx/media3/session/MediaUtils;->truncateListBySize(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    .line 405
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_1
    const-string v1, "MLSLegacyStub"

    const-string v2, "Library operation failed"

    .line 410
    invoke-static {v1, v2, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private static sendCustomActionResultWhenReady(Landroidx/media/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;)V"
        }
    .end annotation

    .line 368
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda5;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 379
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 368
    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static sendLibraryResultWithMediaItemWhenReady(Landroidx/media/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 385
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda13;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 395
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 385
    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static sendLibraryResultWithMediaItemsWhenReady(Landroidx/media/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 401
    new-instance v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda9;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    .line 414
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 401
    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public createControllerInfo(Landroidx/media/MediaSessionManager$RemoteUserInfo;Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 8

    .line 348
    new-instance v7, Landroidx/media3/session/MediaSession$ControllerInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 352
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getMediaSessionManager()Landroidx/media/MediaSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media/MediaSessionManager;->isTrustedForMediaControl(Landroidx/media/MediaSessionManager$RemoteUserInfo;)Z

    move-result v4

    new-instance v5, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    invoke-direct {v5, p0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media/MediaSessionManager$RemoteUserInfo;)V

    move-object v0, v7

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    return-object v7
.end method

.method public getBrowserLegacyCbForBroadcast()Landroidx/media3/session/MediaSession$ControllerCb;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->browserLegacyCbForBroadcast:Landroidx/media3/session/MediaSession$ControllerCb;

    return-object v0
.end method

.method synthetic lambda$createMediaItemToBrowserItemAsyncFunction$15$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/LibraryResult;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const-string v0, "LibraryResult must not be null"

    .line 502
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 505
    iget v1, p1, Landroidx/media3/session/LibraryResult;->resultCode:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object p1, p1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/MediaItem;

    .line 511
    iget-object v1, p1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 512
    iget-object v3, v1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v3, :cond_1

    .line 513
    invoke-static {p1, v2}, Landroidx/media3/session/MediaUtils;->convertToBrowserItem(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    iget-object v2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 518
    invoke-virtual {v2}, Landroidx/media3/session/MediaLibrarySessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v2

    iget-object v1, v1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-interface {v2, v1}, Landroidx/media3/common/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 519
    new-instance v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 525
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 519
    invoke-virtual {v0, v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 526
    new-instance v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1, v0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda7;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Landroidx/media3/common/MediaItem;)V

    .line 536
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 526
    invoke-interface {v1, v2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0

    .line 506
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-object v0
.end method

.method synthetic lambda$createMediaItemsToBrowserItemsAsyncFunction$11$androidx-media3-session-MediaLibraryServiceLegacyStub(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/collect/ImmutableList;Ljava/util/List;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 1

    .line 447
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 448
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 449
    invoke-direct {p0, p3, p2, p4}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->handleBitmapFuturesAllCompletedAndSetOutputFuture(Ljava/util/List;Ljava/util/List;Lcom/google/common/util/concurrent/SettableFuture;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$createMediaItemsToBrowserItemsAsyncFunction$12$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/LibraryResult;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const-string v0, "LibraryResult must not be null"

    .line 421
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 424
    iget v1, p1, Landroidx/media3/session/LibraryResult;->resultCode:I

    const/4 v7, 0x0

    if-nez v1, :cond_4

    iget-object v1, p1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_2

    .line 429
    :cond_0
    iget-object p1, p1, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    .line 430
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-object v0

    .line 435
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 436
    new-instance v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, v8}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda3;-><init>(Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/List;)V

    .line 442
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 436
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 444
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 445
    new-instance v10, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda4;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p1

    move-object v5, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/collect/ImmutableList;Ljava/util/List;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 454
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v9, v1, :cond_3

    .line 455
    invoke-virtual {p1, v9}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    .line 456
    iget-object v1, v1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 457
    iget-object v2, v1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez v2, :cond_2

    .line 458
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 462
    invoke-virtual {v2}, Landroidx/media3/session/MediaLibrarySessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v2

    iget-object v1, v1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    invoke-interface {v2, v1}, Landroidx/media3/common/util/BitmapLoader;->decodeBitmap([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 463
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v1, v10, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 425
    :cond_4
    :goto_2
    invoke-virtual {v0, v7}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-object v0
.end method

.method synthetic lambda$onCustomAction$6$androidx-media3-session-MediaLibraryServiceLegacyStub(Ljava/lang/String;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .locals 2

    .line 335
    new-instance v0, Landroidx/media3/session/SessionCommand;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, p1, v1}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 336
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 337
    invoke-virtual {p3, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 341
    invoke-virtual {p1, p2, v0, p4}, Landroidx/media3/session/MediaLibrarySessionImpl;->onCustomCommandOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 342
    invoke-static {p3, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendCustomActionResultWhenReady(Landroidx/media/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method synthetic lambda$onGetRoot$0$androidx-media3-session-MediaLibraryServiceLegacyStub(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 108
    invoke-virtual {v0, p2, p3}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetLibraryRootOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p4}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    return-void
.end method

.method synthetic lambda$onLoadChildren$3$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    .line 212
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    const v1, 0xc353

    .line 213
    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 215
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 219
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :try_start_0
    const-string v0, "android.media.browse.extra.PAGE"

    .line 221
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "android.media.browse.extra.PAGE_SIZE"

    .line 222
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v4, :cond_1

    if-lez v5, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 227
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroidx/media3/session/MediaUtils;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v6

    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    move-object v2, p1

    move-object v3, p4

    .line 229
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetChildrenOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 234
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->createMediaItemsToBrowserItemsAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object v0

    .line 233
    invoke-static {p3, v0}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 235
    invoke-static {p2, p3}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendLibraryResultWithMediaItemsWhenReady(Landroidx/media/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p4

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetChildrenOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 254
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->createMediaItemsToBrowserItemsAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 255
    invoke-static {p2, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendLibraryResultWithMediaItemsWhenReady(Landroidx/media/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method synthetic lambda$onLoadItem$4$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 2

    .line 275
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    const v1, 0xc354

    .line 276
    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 278
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 282
    invoke-virtual {v0, p1, p3}, Landroidx/media3/session/MediaLibrarySessionImpl;->onGetItemOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 284
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->createMediaItemToBrowserItemAsyncFunction()Lcom/google/common/util/concurrent/AsyncFunction;

    move-result-object p3

    invoke-static {p1, p3}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 285
    invoke-static {p2, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->sendLibraryResultWithMediaItemWhenReady(Landroidx/media/MediaBrowserServiceCompat$Result;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method synthetic lambda$onSearch$5$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 309
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    const v1, 0xc355

    .line 310
    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 311
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    .line 315
    invoke-static {v0, p1, p3, p4, p2}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->access$400(Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V

    iget-object p2, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 318
    invoke-virtual {p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p4}, Landroidx/media3/session/MediaUtils;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object p2

    iget-object p4, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 319
    invoke-virtual {p4, p1, p3, p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSearchOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method synthetic lambda$onSubscribe$1$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 153
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    const v1, 0xc351

    .line 154
    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 160
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/media3/session/MediaUtils;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object p2

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 161
    invoke-virtual {v0, p1, p3, p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->onSubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method synthetic lambda$onUnsubscribe$2$androidx-media3-session-MediaLibraryServiceLegacyStub(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    const v1, 0xc352

    .line 180
    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 184
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaLibrarySessionImpl;->onUnsubscribeOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->ignoreFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 326
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 p1, 0x0

    .line 328
    invoke-virtual {p3, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    return-void

    .line 331
    :cond_0
    invoke-virtual {p3}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 333
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda14;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/lang/String;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    .line 332
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 9

    .line 86
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 90
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 94
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    const v1, 0xc350

    .line 95
    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p2

    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 101
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroidx/media3/session/MediaUtils;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v4

    .line 102
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 104
    new-instance v6, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v6}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 106
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda12;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/common/util/ConditionVariable;)V

    .line 105
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 113
    :try_start_0
    invoke-virtual {v6}, Landroidx/media3/common/util/ConditionVariable;->block()V

    .line 114
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/session/LibraryResult;

    const-string v0, "LibraryResult must not be null"

    invoke-static {p3, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/session/LibraryResult;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_0

    :catch_1
    move-exception p3

    goto :goto_0

    :catch_2
    move-exception p3

    :goto_0
    const-string v0, "MLSLegacyStub"

    const-string v1, "Couldn\'t get a result from onGetLibraryRoot"

    .line 116
    invoke-static {v0, v1, p3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, p2

    :goto_1
    if-eqz p3, :cond_4

    .line 118
    iget v0, p3, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-nez v0, :cond_4

    iget-object v0, p3, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 121
    iget-object p2, p3, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    if-eqz p2, :cond_3

    iget-object p2, p3, Landroidx/media3/session/LibraryResult;->params:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    invoke-static {p2}, Landroidx/media3/session/MediaUtils;->convertToRootHints(Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object p2

    goto :goto_2

    :cond_3
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 123
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media3/session/ConnectedControllersManager;

    move-result-object v0

    const v1, 0xc355

    .line 124
    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/ConnectedControllersManager;->isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p1

    .line 125
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "android.media.browse.SEARCH_SUPPORTED"

    .line 126
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    new-instance p1, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    iget-object p3, p3, Landroidx/media3/session/LibraryResult;->value:Ljava/lang/Object;

    check-cast p3, Landroidx/media3/common/MediaItem;

    iget-object p3, p3, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1

    :cond_4
    if-eqz p3, :cond_5

    .line 131
    iget p1, p3, Landroidx/media3/session/LibraryResult;->resultCode:I

    if-eqz p1, :cond_5

    goto :goto_3

    .line 133
    :cond_5
    sget-object p2, Landroidx/media3/session/MediaUtils;->defaultBrowserRoot:Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    :goto_3
    return-object p2
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 200
    invoke-virtual {p2, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    .line 203
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onLoadChildren(): Ignoring empty parentId from "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MLSLegacyStub"

    invoke-static {p3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    .line 208
    :cond_1
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 210
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 209
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p2, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    .line 266
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring empty itemId from "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MLSLegacyStub"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    .line 271
    :cond_1
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 273
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V

    .line 272
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSearch(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 294
    invoke-virtual {p3, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    .line 297
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring empty query from "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MLSLegacyStub"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p3, v0}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void

    .line 302
    :cond_1
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession$ControllerInfo;->getControllerCb()Landroidx/media3/session/MediaSession$ControllerCb;

    move-result-object v0

    instance-of v0, v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    if-nez v0, :cond_2

    return-void

    .line 305
    :cond_2
    invoke-virtual {p3}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 307
    invoke-virtual {v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda11;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSubscribe(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 142
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onSubscribe(): Ignoring empty id from "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MLSLegacyStub"

    invoke-static {p2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 151
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 150
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUnsubscribe(Ljava/lang/String;)V
    .locals 3

    .line 168
    invoke-direct {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->getCurrentController()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onUnsubscribe(): Ignoring empty id from "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MLSLegacyStub"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->librarySessionImpl:Landroidx/media3/session/MediaLibrarySessionImpl;

    .line 177
    invoke-virtual {v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    .line 176
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void
.end method
