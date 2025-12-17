.class public abstract Landroidx/media3/session/MediaSessionService;
.super Landroid/app/Service;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;,
        Landroidx/media3/session/MediaSessionService$Listener;,
        Landroidx/media3/session/MediaSessionService$Api31;,
        Landroidx/media3/session/MediaSessionService$MediaSessionListener;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "androidx.media3.session.MediaSessionService"

.field private static final TAG:Ljava/lang/String; = "MSSImpl"


# instance fields
.field private actionFactory:Landroidx/media3/session/DefaultActionFactory;

.field private defaultMethodCalled:Z

.field private listener:Landroidx/media3/session/MediaSessionService$Listener;

.field private final lock:Ljava/lang/Object;

.field private final mainHandler:Landroid/os/Handler;

.field private mediaNotificationManager:Landroidx/media3/session/MediaNotificationManager;

.field private mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field private stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 188
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->mainHandler:Landroid/os/Handler;

    .line 191
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/session/MediaSessionService;->defaultMethodCalled:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/session/MediaSessionService;)Landroidx/media3/session/MediaNotificationManager;
    .locals 0

    .line 140
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object p0

    return-object p0
.end method

.method private getActionFactory()Landroidx/media3/session/DefaultActionFactory;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 566
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->actionFactory:Landroidx/media3/session/DefaultActionFactory;

    if-nez v1, :cond_0

    .line 568
    new-instance v1, Landroidx/media3/session/DefaultActionFactory;

    invoke-direct {v1, p0}, Landroidx/media3/session/DefaultActionFactory;-><init>(Landroid/app/Service;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->actionFactory:Landroidx/media3/session/DefaultActionFactory;

    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->actionFactory:Landroidx/media3/session/DefaultActionFactory;

    .line 570
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 571
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getListener()Landroidx/media3/session/MediaSessionService$Listener;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 576
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->listener:Landroidx/media3/session/MediaSessionService$Listener;

    .line 577
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 578
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 551
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationManager:Landroidx/media3/session/MediaNotificationManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    if-nez v1, :cond_0

    .line 554
    new-instance v1, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;

    .line 555
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->build()Landroidx/media3/session/DefaultMediaNotificationProvider;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    .line 557
    :cond_0
    new-instance v1, Landroidx/media3/session/MediaNotificationManager;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    .line 559
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getActionFactory()Landroidx/media3/session/DefaultActionFactory;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroidx/media3/session/MediaNotificationManager;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotification$Provider;Landroidx/media3/session/MediaNotification$ActionFactory;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationManager:Landroidx/media3/session/MediaNotificationManager;

    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationManager:Landroidx/media3/session/MediaNotificationManager;

    .line 561
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$removeSession$1(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;)V
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaNotificationManager;->removeSession(Landroidx/media3/session/MediaSession;)V

    .line 303
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->clearListener()V

    return-void
.end method

.method private onForegroundServiceStartNotAllowedException()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->mainHandler:Landroid/os/Handler;

    .line 583
    new-instance v1, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/MediaSessionService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final addSession(Landroidx/media3/session/MediaSession;)V
    .locals 4

    const-string v0, "session must not be null"

    .line 261
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->isReleased()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "session is already released"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 264
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    .line 265
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v3, "Session ID should be unique"

    .line 266
    invoke-static {v1, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    .line 267
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 272
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mainHandler:Landroid/os/Handler;

    .line 273
    new-instance v2, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;)V

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 268
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final clearListener()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 350
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->listener:Landroidx/media3/session/MediaSessionService$Listener;

    .line 352
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getServiceBinder()Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 523
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    .line 524
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getSessions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/MediaSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 314
    monitor-enter v0

    .line 315
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isSessionAdded(Landroidx/media3/session/MediaSession;)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 326
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    .line 327
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic lambda$addSession$0$androidx-media3-session-MediaSessionService(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;)V
    .locals 1

    .line 276
    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaNotificationManager;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 277
    new-instance p1, Landroidx/media3/session/MediaSessionService$MediaSessionListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/media3/session/MediaSessionService$MediaSessionListener;-><init>(Landroidx/media3/session/MediaSessionService;Landroidx/media3/session/MediaSessionService$1;)V

    invoke-virtual {p2, p1}, Landroidx/media3/session/MediaSession;->setListener(Landroidx/media3/session/MediaSession$Listener;)V

    return-void
.end method

.method synthetic lambda$onForegroundServiceStartNotAllowedException$2$androidx-media3-session-MediaSessionService()V
    .locals 1

    .line 585
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getListener()Landroidx/media3/session/MediaSessionService$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    invoke-interface {v0}, Landroidx/media3/session/MediaSessionService$Listener;->onForegroundServiceStartNotAllowedException()V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 372
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 376
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "androidx.media3.session.MediaSessionService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 381
    :cond_2
    invoke-static {}, Landroidx/media3/session/MediaSession$ControllerInfo;->createLegacyControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    .line 382
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionService;->onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 387
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionService;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 394
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getLegacyBrowserServiceBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 378
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionService;->getServiceBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 205
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 206
    monitor-enter v0

    .line 207
    :try_start_0
    new-instance v1, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    invoke-direct {v1, p0}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;-><init>(Landroidx/media3/session/MediaSessionService;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    .line 454
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 455
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/session/MediaSessionService;->stub:Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    .line 460
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 417
    :cond_0
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getActionFactory()Landroidx/media3/session/DefaultActionFactory;

    move-result-object p3

    .line 418
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    invoke-static {v0}, Landroidx/media3/session/MediaSession;->getSession(Landroid/net/Uri;)Landroidx/media3/session/MediaSession;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 420
    :goto_0
    invoke-virtual {p3, p1}, Landroidx/media3/session/DefaultActionFactory;->isMediaAction(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    .line 422
    invoke-static {}, Landroidx/media3/session/MediaSession$ControllerInfo;->createLegacyControllerInfo()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    .line 423
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionService;->onGetSession(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object v0

    if-nez v0, :cond_2

    return p2

    .line 427
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionService;->addSession(Landroidx/media3/session/MediaSession;)V

    .line 429
    :cond_3
    invoke-virtual {p3, p1}, Landroidx/media3/session/DefaultActionFactory;->getKeyEvent(Landroid/content/Intent;)Landroid/view/KeyEvent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 431
    invoke-virtual {v0}, Landroidx/media3/session/MediaSession;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_6

    .line 433
    invoke-virtual {p3, p1}, Landroidx/media3/session/DefaultActionFactory;->isCustomAction(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 434
    invoke-virtual {p3, p1}, Landroidx/media3/session/DefaultActionFactory;->getCustomAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    return p2

    .line 438
    :cond_5
    invoke-virtual {p3, p1}, Landroidx/media3/session/DefaultActionFactory;->getCustomActionExtras(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    .line 439
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object p3

    invoke-virtual {p3, v0, v1, p1}, Landroidx/media3/session/MediaNotificationManager;->onCustomAction(Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    :goto_1
    return p2
.end method

.method public onUpdateNotification(Landroidx/media3/session/MediaSession;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/session/MediaSessionService;->defaultMethodCalled:Z

    return-void
.end method

.method public onUpdateNotification(Landroidx/media3/session/MediaSession;Z)V
    .locals 1

    .line 500
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionService;->onUpdateNotification(Landroidx/media3/session/MediaSession;)V

    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionService;->defaultMethodCalled:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaNotificationManager;->updateNotification(Landroidx/media3/session/MediaSession;Z)V

    :cond_0
    return-void
.end method

.method onUpdateNotificationInternal(Landroidx/media3/session/MediaSession;Z)Z
    .locals 1

    .line 537
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaNotificationManager;->shouldRunInForeground(Landroidx/media3/session/MediaSession;Z)Z

    move-result p2

    .line 538
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionService;->onUpdateNotification(Landroidx/media3/session/MediaSession;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 540
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_0

    invoke-static {p1}, Landroidx/media3/session/MediaSessionService$Api31;->instanceOfForegroundServiceStartNotAllowedException(Ljava/lang/IllegalStateException;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "MSSImpl"

    const-string v0, "Failed to start foreground"

    .line 541
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->onForegroundServiceStartNotAllowedException()V

    const/4 p1, 0x0

    return p1

    .line 545
    :cond_0
    throw p1
.end method

.method public final removeSession(Landroidx/media3/session/MediaSession;)V
    .locals 3

    const-string v0, "session must not be null"

    .line 293
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 294
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    .line 295
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "session not found"

    invoke-static {v1, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->sessions:Ljava/util/Map;

    .line 296
    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    invoke-direct {p0}, Landroidx/media3/session/MediaSessionService;->getMediaNotificationManager()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaSessionService;->mainHandler:Landroid/os/Handler;

    .line 299
    new-instance v2, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Landroidx/media3/session/MediaSessionService$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;)V

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 297
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setListener(Landroidx/media3/session/MediaSessionService$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 338
    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/session/MediaSessionService;->listener:Landroidx/media3/session/MediaSessionService$Listener;

    .line 340
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final setMediaNotificationProvider(Landroidx/media3/session/MediaNotification$Provider;)V
    .locals 1

    .line 516
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionService;->lock:Ljava/lang/Object;

    .line 517
    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/session/MediaSessionService;->mediaNotificationProvider:Landroidx/media3/session/MediaNotification$Provider;

    .line 519
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
