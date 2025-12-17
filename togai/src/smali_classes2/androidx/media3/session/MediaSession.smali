.class public Landroidx/media3/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSession$Callback;,
        Landroidx/media3/session/MediaSession$ControllerInfo;,
        Landroidx/media3/session/MediaSession$Listener;,
        Landroidx/media3/session/MediaSession$BuilderBase;,
        Landroidx/media3/session/MediaSession$ControllerCb;,
        Landroidx/media3/session/MediaSession$ConnectionResult;,
        Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;,
        Landroidx/media3/session/MediaSession$Builder;
    }
.end annotation


# static fields
.field private static final SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATIC_LOCK:Ljava/lang/Object;


# instance fields
.field private final impl:Landroidx/media3/session/MediaSessionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.session"

    .line 232
    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Player;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaSession$Callback;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/util/BitmapLoader;",
            ")V"
        }
    .end annotation

    const-string v0, "Session ID must be unique. ID="

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Landroidx/media3/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    .line 591
    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/media3/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    .line 592
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 595
    invoke-virtual {v2, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-virtual/range {p0 .. p8}, Landroidx/media3/session/MediaSession;->createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaSessionImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    return-void

    .line 593
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 596
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static getSession(Landroid/net/Uri;)Landroidx/media3/session/MediaSession;
    .locals 4

    sget-object v0, Landroidx/media3/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    .line 636
    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    .line 637
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession;

    .line 638
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p0}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    monitor-exit v0

    return-object v2

    .line 642
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final broadcastCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 2

    .line 863
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    iget v0, p1, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "command must be a custom command"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 868
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->broadcastCustomCommand(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    return-void
.end method

.method final clearListener()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 1006
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->clearMediaSessionListener()V

    return-void
.end method

.method createImpl(Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;)Landroidx/media3/session/MediaSessionImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Player;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaSession$Callback;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/util/BitmapLoader;",
            ")",
            "Landroidx/media3/session/MediaSessionImpl;"
        }
    .end annotation

    .line 618
    new-instance v10, Landroidx/media3/session/MediaSessionImpl;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/media3/session/MediaSessionImpl;-><init>(Landroidx/media3/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;)V

    return-object v10
.end method

.method public final getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 903
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getBitmapLoader()Landroidx/media3/common/util/BitmapLoader;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectedControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 727
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getControllerForCurrentRequest()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 749
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getControllerForCurrentRequest()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCustomLayout()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 848
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getCustomLayout()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 717
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getImpl()Landroidx/media3/session/MediaSessionImpl;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    return-object v0
.end method

.method final getLegacyBrowserServiceBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 976
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getLegacyBrowserServiceBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayer()Landroidx/media3/common/Player;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 712
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->getWrappedPlayer()Landroidx/media3/common/Player;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 654
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method final getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 935
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    return-object v0
.end method

.method public final getSessionCompatToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 944
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public final getToken()Landroidx/media3/session/SessionToken;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 722
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getToken()Landroidx/media3/session/SessionToken;

    move-result-object v0

    return-object v0
.end method

.method final getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 1011
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method final handleControllerConnectionFromService(Landroidx/media3/session/IMediaController;IILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 965
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/session/MediaSessionImpl;->connectFromService(Landroidx/media3/session/IMediaController;IILjava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method final isReleased()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 707
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 3

    :try_start_0
    sget-object v0, Landroidx/media3/session/MediaSession;->STATIC_LOCK:Ljava/lang/Object;

    .line 697
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Landroidx/media3/session/MediaSession;->SESSION_ID_TO_SESSION_MAP:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 698
    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 700
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 699
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final sendCustomCommand(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/SessionCommand;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 925
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget v0, p2, Landroidx/media3/session/SessionCommand;->commandCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "command must be a custom command"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 931
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/session/MediaSessionImpl;->sendCustomCommand(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final setAvailableCommands(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 1

    const-string v0, "controller must not be null"

    .line 833
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sessionCommands must not be null"

    .line 834
    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "playerCommands must not be null"

    .line 835
    invoke-static {p3, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 836
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/session/MediaSessionImpl;->setAvailableCommands(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public final setCustomLayout(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media3/session/SessionResult;",
            ">;"
        }
    .end annotation

    const-string v0, "controller must not be null"

    .line 778
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "layout must not be null"

    .line 779
    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 780
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->setCustomLayout(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final setCustomLayout(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/session/CommandButton;",
            ">;)V"
        }
    .end annotation

    const-string v0, "layout must not be null"

    .line 811
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 812
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->setCustomLayout(Ljava/util/List;)V

    return-void
.end method

.method final setLegacyControllerConnectionTimeoutMs(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 953
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->setLegacyControllerConnectionTimeoutMs(J)V

    return-void
.end method

.method final setListener(Landroidx/media3/session/MediaSession$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 997
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->setMediaSessionListener(Landroidx/media3/session/MediaSession$Listener;)V

    return-void
.end method

.method public final setPlayer(Landroidx/media3/common/Player;)V
    .locals 4

    .line 678
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-interface {p1}, Landroidx/media3/common/Player;->canAdvertiseSession()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 680
    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/media3/session/MediaSession;->getPlayer()Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 681
    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 682
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->setPlayer(Landroidx/media3/common/Player;)V

    return-void
.end method

.method public final setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 665
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->setSessionActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final setSessionExtras(Landroid/os/Bundle;)V
    .locals 1

    .line 879
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 880
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->setSessionExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setSessionExtras(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "controller must not be null"

    .line 895
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 897
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->setSessionExtras(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method final setSessionPositionUpdateDelayMs(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSession;->impl:Landroidx/media3/session/MediaSessionImpl;

    .line 988
    invoke-virtual {v0, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->setSessionPositionUpdateDelayMsOnHandler(J)V

    return-void
.end method
