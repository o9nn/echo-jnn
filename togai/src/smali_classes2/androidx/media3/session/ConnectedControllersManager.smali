.class final Landroidx/media3/session/ConnectedControllersManager;
.super Ljava/lang/Object;
.source "ConnectedControllersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;,
        Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final controllerInfoMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "TT;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerRecords:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final sessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media3/session/MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    .line 62
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private flushCommandQueue(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 258
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 263
    :goto_0
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v9, 0x0

    .line 264
    invoke-virtual {v7, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    iget-object v1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;

    if-nez v3, :cond_1

    .line 267
    iput-boolean v9, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueueIsFlushing:Z

    return-void

    .line 270
    :cond_1
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 272
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v11

    iget-object v1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->controllerKey:Ljava/lang/Object;

    .line 274
    invoke-virtual {p0, v1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v12

    new-instance v13, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda1;

    move-object v1, v13

    move-object v2, p0

    move-object v4, v10

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/session/ConnectedControllersManager;Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 273
    invoke-virtual {v0, v12, v13}, Landroidx/media3/session/MediaSessionImpl;->callWithControllerForCurrentRequestSet(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 271
    invoke-static {v11, v1}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 289
    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic lambda$removeController$0(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->onDisconnectedOnHandler(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void
.end method


# virtual methods
.method public addController(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 81
    monitor-enter v0

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    .line 84
    invoke-virtual {v1, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 85
    new-instance v2, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    new-instance v3, Landroidx/media3/session/SequencedFutureManager;

    invoke-direct {v3}, Landroidx/media3/session/SequencedFutureManager;-><init>()V

    invoke-direct {v2, p1, v3, p3, p4}, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;-><init>(Ljava/lang/Object;Landroidx/media3/session/SequencedFutureManager;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    invoke-virtual {v1, p2, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 91
    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 92
    iput-object p3, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 93
    iput-object p4, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 95
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addToCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 237
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 238
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    invoke-interface {p1, p2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 242
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

.method public flushCommandQueue(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 246
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 247
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    if-eqz p1, :cond_1

    .line 248
    iget-boolean v1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueueIsFlushing:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueue:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 251
    iput-boolean v1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->commandQueueIsFlushing:Z

    .line 252
    invoke-direct {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V

    .line 253
    monitor-exit v0

    return-void

    .line 249
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAvailablePlayerCommands(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/common/Player$Commands;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 113
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 114
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    monitor-exit v0

    return-object p1

    .line 118
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getConnectedControllers()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/MediaSession$ControllerInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 155
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    .line 156
    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media3/session/MediaSession$ControllerInfo;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 231
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    .line 232
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/MediaSession$ControllerInfo;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 233
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSequencedFutureManager(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 176
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 177
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getSequencedFutureManager(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/media3/session/SequencedFutureManager;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 192
    monitor-enter v0

    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 194
    invoke-virtual {v2, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 195
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 196
    iget-object v1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    :cond_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 195
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isConnected(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 161
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 162
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isPlayerCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 219
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 220
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 222
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 224
    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getPlayerWrapper()Landroidx/media3/session/PlayerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 221
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 210
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 211
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {p1, p2}, Landroidx/media3/session/SessionCommands;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 212
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isSessionCommandAvailable(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 201
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 202
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    invoke-virtual {p1, p2}, Landroidx/media3/session/SessionCommands;->contains(Landroidx/media3/session/SessionCommand;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 203
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method synthetic lambda$flushCommandQueue$1$androidx-media3-session-ConnectedControllersManager(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 280
    monitor-enter v0

    .line 281
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 282
    invoke-direct {p0, p2}, Landroidx/media3/session/ConnectedControllersManager;->flushCommandQueue(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 284
    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method synthetic lambda$flushCommandQueue$2$androidx-media3-session-ConnectedControllersManager(Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    .line 277
    invoke-interface {p1}, Landroidx/media3/session/ConnectedControllersManager$AsyncCommand;->run()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/session/ConnectedControllersManager;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 288
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 278
    invoke-interface {p1, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public removeController(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 131
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 132
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    if-nez v1, :cond_0

    .line 134
    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerInfoMap:Landroidx/collection/ArrayMap;

    .line 136
    iget-object v3, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->controllerKey:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v0, v1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v0}, Landroidx/media3/session/SequencedFutureManager;->release()V

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->sessionImpl:Ljava/lang/ref/WeakReference;

    .line 140
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->getApplicationHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Landroidx/media3/session/ConnectedControllersManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    .line 144
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 137
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeController(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->getController(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->removeController(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    :cond_0
    return-void
.end method

.method public updateCommandsFromSession(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/ConnectedControllersManager;->lock:Ljava/lang/Object;

    .line 102
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/ConnectedControllersManager;->controllerRecords:Landroidx/collection/ArrayMap;

    .line 103
    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    if-eqz p1, :cond_0

    .line 105
    iput-object p2, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->sessionCommands:Landroidx/media3/session/SessionCommands;

    .line 106
    iput-object p3, p1, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->playerCommands:Landroidx/media3/common/Player$Commands;

    .line 108
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
