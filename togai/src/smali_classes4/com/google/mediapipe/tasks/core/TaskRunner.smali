.class public Lcom/google/mediapipe/tasks/core/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskRunner"

.field private static final TIMESATMP_UNITS_PER_SECOND:J = 0xf4240L


# instance fields
.field private errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

.field private final graph:Lcom/google/mediapipe/framework/Graph;

.field private final graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastSeenTimestamp:J

.field private final modelResourcesCache:Lcom/google/mediapipe/tasks/core/ModelResourcesCache;

.field private final outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/tasks/core/OutputHandler<",
            "+",
            "Lcom/google/mediapipe/tasks/core/TaskResult;",
            "*>;"
        }
    .end annotation
.end field

.field private final packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

.field private final statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/google/mediapipe/framework/Graph;Lcom/google/mediapipe/tasks/core/ModelResourcesCache;Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "graph",
            "modelResourcesCache",
            "outputHandler",
            "statsLogger"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/framework/Graph;",
            "Lcom/google/mediapipe/tasks/core/ModelResourcesCache;",
            "Lcom/google/mediapipe/tasks/core/OutputHandler<",
            "+",
            "Lcom/google/mediapipe/tasks/core/TaskResult;",
            "*>;",
            "Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;",
            ")V"
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    iput-object p3, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->modelResourcesCache:Lcom/google/mediapipe/tasks/core/ModelResourcesCache;

    .line 276
    new-instance p2, Lcom/google/mediapipe/framework/AndroidPacketCreator;

    invoke-direct {p2, p1}, Lcom/google/mediapipe/framework/AndroidPacketCreator;-><init>(Lcom/google/mediapipe/framework/Graph;)V

    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    iput-object p4, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    const/4 p1, 0x1

    .line 278
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 279
    invoke-interface {p4}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->logSessionStart()V

    return-void
.end method

.method private declared-synchronized addPackets(Ljava/util/Map;J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputs",
            "inputTimestamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 213
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v1

    const-string v2, "The task graph hasn\'t been successfully started or error occurs during graph initializaton."

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    .line 211
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 221
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/google/mediapipe/framework/Graph;->addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V

    const/4 v2, 0x0

    .line 223
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/framework/Packet;

    if-eqz p2, :cond_2

    .line 237
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_3
    iget-object p3, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    if-nez p3, :cond_5

    sget-object p3, Lcom/google/mediapipe/tasks/core/TaskRunner;->TAG:Ljava/lang/String;

    const-string v0, "Mediapipe error: "

    .line 228
    invoke-static {p3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    :try_start_4
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/framework/Packet;

    if-eqz p2, :cond_3

    .line 237
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 241
    :cond_4
    monitor-exit p0

    return-void

    .line 230
    :cond_5
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 233
    :goto_3
    :try_start_6
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/mediapipe/framework/Packet;

    if-eqz p3, :cond_6

    .line 237
    invoke-virtual {p3}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_4

    .line 240
    :cond_7
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static create(Landroid/content/Context;Lcom/google/mediapipe/tasks/core/TaskInfo;Lcom/google/mediapipe/tasks/core/OutputHandler;)Lcom/google/mediapipe/tasks/core/TaskRunner;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "taskInfo",
            "outputHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/mediapipe/tasks/core/TaskInfo<",
            "+",
            "Lcom/google/mediapipe/tasks/core/TaskOptions;",
            ">;",
            "Lcom/google/mediapipe/tasks/core/OutputHandler<",
            "+",
            "Lcom/google/mediapipe/tasks/core/TaskResult;",
            "*>;)",
            "Lcom/google/mediapipe/tasks/core/TaskRunner;"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskRunningModeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsProtoLogger;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/logging/TasksStatsProtoLogger;

    move-result-object v0

    .line 60
    invoke-static {p0}, Lcom/google/mediapipe/framework/AndroidAssetUtil;->initializeNativeAssetManager(Landroid/content/Context;)Z

    .line 61
    new-instance p0, Lcom/google/mediapipe/framework/Graph;

    invoke-direct {p0}, Lcom/google/mediapipe/framework/Graph;-><init>()V

    .line 62
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->generateGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V

    .line 63
    new-instance v1, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;

    invoke-direct {v1}, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;-><init>()V

    .line 64
    new-instance v2, Lcom/google/mediapipe/tasks/core/ModelResourcesCacheService;

    invoke-direct {v2}, Lcom/google/mediapipe/tasks/core/ModelResourcesCacheService;-><init>()V

    invoke-virtual {p0, v2, v1}, Lcom/google/mediapipe/framework/Graph;->setServiceObject(Lcom/google/mediapipe/framework/GraphService;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->outputStreamNames()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;)V

    .line 71
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/core/OutputHandler;->handleTimestampBoundChanges()Z

    move-result v3

    .line 65
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/mediapipe/framework/Graph;->addMultiStreamCallback(Ljava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V

    .line 72
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->startRunningGraph()V

    .line 74
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V

    .line 75
    new-instance p1, Lcom/google/mediapipe/tasks/core/TaskRunner;

    invoke-direct {p1, p0, v1, p2, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;-><init>(Lcom/google/mediapipe/framework/Graph;Lcom/google/mediapipe/tasks/core/ModelResourcesCache;Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;)V

    return-object p1
.end method

.method private generateSyntheticTimestamp()J
    .locals 4

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xf4240

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    return-wide v0
.end method

.method static synthetic lambda$create$0(Lcom/google/mediapipe/tasks/core/OutputHandler;Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;Ljava/util/List;)V
    .locals 2

    .line 68
    invoke-virtual {p0, p2}, Lcom/google/mediapipe/tasks/core/OutputHandler;->run(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 69
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->recordInvocationEnd(J)V

    return-void
.end method

.method private reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p1}, Lcom/google/mediapipe/tasks/core/ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    return-void

    .line 287
    :cond_0
    throw p1
.end method

.method private validateInputTimstamp(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputTimestamp"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    .line 251
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->FAILED_PRECONDITION:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 253
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v1

    const-string v2, "The received packets having a smaller timestamp than the processed timestamp."

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    .line 251
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    :cond_0
    iput-wide p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 181
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 186
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->closeAllPacketSources()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 187
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphDone()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    .line 188
    invoke-interface {v0}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->logSessionEnd()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->modelResourcesCache:Lcom/google/mediapipe/tasks/core/ModelResourcesCache;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->release()V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 199
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->tearDown()V
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 201
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    :goto_1
    return-void
.end method

.method public getCalculatorGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 206
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getCalculatorGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object v0

    return-object v0
.end method

.method public getPacketCreator()Lcom/google/mediapipe/framework/AndroidPacketCreator;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->packetCreator:Lcom/google/mediapipe/framework/AndroidPacketCreator;

    return-object v0
.end method

.method public declared-synchronized process(Ljava/util/Map;)Lcom/google/mediapipe/tasks/core/TaskResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)",
            "Lcom/google/mediapipe/tasks/core/TaskResult;"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->generateSyntheticTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    .line 105
    invoke-interface {v2, v0, v1}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->recordCpuInputArrival(J)V

    .line 106
    invoke-direct {p0, p1, v0, v1}, Lcom/google/mediapipe/tasks/core/TaskRunner;->addPackets(Ljava/util/Map;J)V

    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 107
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V

    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;

    .line 108
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/OutputHandler;->getLatestOutputTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->lastSeenTimestamp:J

    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;

    .line 109
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/OutputHandler;->retrieveCachedTaskResult()Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process(Ljava/util/Map;J)Lcom/google/mediapipe/tasks/core/TaskResult;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputs",
            "inputTimestamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;J)",
            "Lcom/google/mediapipe/tasks/core/TaskResult;"
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/google/mediapipe/tasks/core/TaskRunner;->validateInputTimstamp(J)V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    .line 127
    invoke-interface {v0, p2, p3}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->recordCpuInputArrival(J)V

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/core/TaskRunner;->addPackets(Ljava/util/Map;J)V

    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 129
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V

    iget-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->outputHandler:Lcom/google/mediapipe/tasks/core/OutputHandler;

    .line 130
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/OutputHandler;->retrieveCachedTaskResult()Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public restart()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 160
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->closeAllPacketSources()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 161
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphDone()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    .line 162
    invoke-interface {v0}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->logSessionEnd()V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 168
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->startRunningGraph()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graph:Lcom/google/mediapipe/framework/Graph;

    .line 170
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->waitUntilGraphIdle()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->graphStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    .line 172
    invoke-interface {v0}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->logSessionStart()V
    :try_end_1
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 174
    invoke-direct {p0, v0}, Lcom/google/mediapipe/tasks/core/TaskRunner;->reportError(Lcom/google/mediapipe/framework/MediaPipeException;)V

    :goto_1
    return-void
.end method

.method public declared-synchronized send(Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputs",
            "inputTimestamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/google/mediapipe/tasks/core/TaskRunner;->validateInputTimstamp(J)V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->statsLogger:Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;

    .line 148
    invoke-interface {v0, p2, p3}, Lcom/google/mediapipe/tasks/core/logging/TasksStatsLogger;->recordCpuInputArrival(J)V

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/core/TaskRunner;->addPackets(Ljava/util/Map;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setErrorListener(Lcom/google/mediapipe/tasks/core/ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/TaskRunner;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    return-void
.end method
