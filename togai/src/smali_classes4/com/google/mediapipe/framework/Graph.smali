.class public Lcom/google/mediapipe/framework/Graph;
.super Ljava/lang/Object;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/Graph$PacketBufferItem;
    }
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x14

.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# instance fields
.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private graphRunning:Z

.field private nativeGraphHandle:J

.field private packetBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/mediapipe/framework/Graph$PacketBufferItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private sidePackets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private startRunningGraphCalled:Z

.field private stepMode:Z

.field private streamHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private final terminationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/Graph;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->callbacks:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->stepMode:Z

    iput-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    iput-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/framework/Graph;->terminationLock:Ljava/lang/Object;

    .line 71
    invoke-direct {p0}, Lcom/google/mediapipe/framework/Graph;->nativeCreateGraph()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    return-void
.end method

.method private addPacketToBuffer(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamName",
            "packet",
            "timestamp"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 570
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 573
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 574
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    iget-object p1, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    .line 575
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 576
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/google/mediapipe/framework/Graph;->logger:Lcom/google/common/flogger/FluentLogger;

    .line 577
    invoke-virtual {p3}, Lcom/google/common/flogger/FluentLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object p3

    check-cast p3, Lcom/google/common/flogger/FluentLogger$Api;

    const-string p4, "Stream: %s might be missing."

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p4, p2}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 580
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Graph is not started because of missing streams"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 582
    :cond_3
    new-instance v0, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {v0, p2, p3, p4}, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;-><init>(Lcom/google/mediapipe/framework/Packet;Ljava/lang/Long;Lcom/google/mediapipe/framework/Graph$1;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private hasAllStreamHeaders()Z
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    .line 622
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 623
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private moveBufferedPacketsToInputStream()V
    .locals 12

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 589
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 590
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 591
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;

    :try_start_0
    iget-wide v5, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 594
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    iget-object v4, v3, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->packet:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v4}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v8

    iget-object v4, v3, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->timestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v4, p0

    .line 593
    invoke-direct/range {v4 .. v11}, Lcom/google/mediapipe/framework/Graph;->nativeMovePacketToInputStream(JLjava/lang/String;JJ)V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    iget-object v3, v3, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->packet:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v3}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/mediapipe/framework/Graph;->logger:Lcom/google/common/flogger/FluentLogger;

    .line 596
    invoke-virtual {v2}, Lcom/google/common/flogger/FluentLogger;->atSevere()Lcom/google/common/flogger/LoggingApi;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/FluentLogger$Api;

    .line 597
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/MediaPipeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AddPacket for stream: %s failed: %s."

    .line 596
    invoke-interface {v2, v4, v1, v3}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 598
    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 604
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method

.method private native nativeAddMultiStreamCallback(JLjava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "streamName",
            "callback",
            "observeTimestampBounds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/mediapipe/framework/PacketListCallback;",
            "Z)V"
        }
    .end annotation
.end method

.method private native nativeAddPacketCallback(JLjava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "streamName",
            "callback"
        }
    .end annotation
.end method

.method private native nativeAddPacketToInputStream(JLjava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "streamName",
            "packet",
            "timestamp"
        }
    .end annotation
.end method

.method private native nativeAddSurfaceOutput(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "streamName"
        }
    .end annotation
.end method

.method private native nativeCancelGraph(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method private native nativeCloseAllInputStreams(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method private native nativeCloseAllPacketSources(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method private native nativeCloseInputStream(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "streamName"
        }
    .end annotation
.end method

.method private native nativeCreateGraph()J
.end method

.method private native nativeGetCalculatorGraphConfig(J)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method private native nativeGetProfiler(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method private native nativeLoadBinaryGraph(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "path"
        }
    .end annotation
.end method

.method private native nativeLoadBinaryGraphBytes(J[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation
.end method

.method private native nativeLoadBinaryGraphTemplate(J[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation
.end method

.method private native nativeMovePacketToInputStream(JLjava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "streamName",
            "packet",
            "timestamp"
        }
    .end annotation
.end method

.method private native nativeReleaseGraph(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method private native nativeRunGraphUntilClose(J[Ljava/lang/String;[J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "streamNames",
            "packets"
        }
    .end annotation
.end method

.method private native nativeSetGraphInputStreamBlockingMode(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mode"
        }
    .end annotation
.end method

.method private native nativeSetGraphOptions(J[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation
.end method

.method private native nativeSetGraphType(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "graphType"
        }
    .end annotation
.end method

.method private native nativeSetParentGlContext(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "javaGlContext"
        }
    .end annotation
.end method

.method private native nativeStartRunningGraph(J[Ljava/lang/String;[J[Ljava/lang/String;[J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "sidePacketNames",
            "sidePacketHandles",
            "streamNamesWithHeader",
            "streamHeaderHandles"
        }
    .end annotation
.end method

.method private native nativeUpdatePacketReference(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "referencePacket",
            "newPacket"
        }
    .end annotation
.end method

.method private native nativeWaitUntilGraphDone(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method private native nativeWaitUntilGraphIdle(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method private static splitStreamNamePacketMap(Ljava/util/Map;[Ljava/lang/String;[J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "namePacketMap",
            "streamNames",
            "packets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .line 610
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 614
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 615
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p1, v0

    .line 616
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 611
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Input array length doesn\'t match the map size!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized addConsumablePacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamName",
            "packet",
            "timestamp"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called."

    .line 405
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_1

    .line 408
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->copy()Lcom/google/mediapipe/framework/Packet;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/mediapipe/framework/Graph;->addPacketToBuffer(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)Z

    .line 410
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 415
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p1

    move-wide v6, p3

    .line 414
    invoke-direct/range {v0 .. v7}, Lcom/google/mediapipe/framework/Graph;->nativeMovePacketToInputStream(JLjava/lang/String;JJ)V

    .line 418
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMultiStreamCallback(Ljava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamNames",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/mediapipe/framework/PacketListCallback;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/mediapipe/framework/Graph;->addMultiStreamCallback(Ljava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMultiStreamCallback(Ljava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamNames",
            "callback",
            "observeTimestampBounds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/mediapipe/framework/PacketListCallback;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Invalid context, tearDown() might have been called already."

    .line 203
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 205
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 207
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->callbacks:Ljava/util/List;

    .line 208
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 209
    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/Graph;->nativeAddMultiStreamCallback(JLjava/util/List;Lcom/google/mediapipe/framework/PacketListCallback;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPacketCallback(Ljava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamName",
            "callback"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Invalid context, tearDown() might have been called already."

    .line 168
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 170
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 172
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->callbacks:Ljava/util/List;

    .line 173
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 174
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/Graph;->nativeAddPacketCallback(JLjava/lang/String;Lcom/google/mediapipe/framework/PacketCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addPacketToInputStream(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamName",
            "packet",
            "timestamp"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called."

    .line 380
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_1

    .line 383
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->copy()Lcom/google/mediapipe/framework/Packet;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mediapipe/framework/Graph;->addPacketToBuffer(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;J)Z

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 386
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p1

    move-wide v6, p3

    .line 385
    invoke-direct/range {v0 .. v7}, Lcom/google/mediapipe/framework/Graph;->nativeAddPacketToInputStream(JLjava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStreamNameExpectingHeader(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamName"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 257
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    const/4 v1, 0x0

    .line 258
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addSurfaceOutput(Ljava/lang/String;)Lcom/google/mediapipe/framework/SurfaceOutput;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamName"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Invalid context, tearDown() might have been called."

    .line 221
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 223
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 224
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 226
    new-instance v0, Lcom/google/mediapipe/framework/SurfaceOutput;

    iget-wide v1, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 227
    invoke-direct {p0, v1, v2, p1}, Lcom/google/mediapipe/framework/Graph;->nativeAddSurfaceOutput(JLjava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/framework/SurfaceOutput;-><init>(Lcom/google/mediapipe/framework/Graph;Lcom/google/mediapipe/framework/Packet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancelGraph()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 557
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 559
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeCancelGraph(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeAllInputStreams()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called."

    .line 437
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 439
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeCloseAllInputStreams(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeAllPacketSources()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called."

    .line 447
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 449
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeCloseAllPacketSources(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeInputStream(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamName"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called."

    .line 427
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 429
    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeCloseInputStream(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createGlRunner(Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "javaGlContext"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 533
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "gpu_shared"

    .line 535
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 536
    invoke-virtual {p0, p2, p3}, Lcom/google/mediapipe/framework/Graph;->setParentGlContext(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCalculatorGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;
    .locals 1

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-static {}, Lcom/google/mediapipe/framework/ProtoUtil;->getExtensionRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/Graph;->getCalculatorGraphConfig(Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCalculatorGraphConfig(Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 140
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeGetCalculatorGraphConfig(J)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 145
    :try_start_1
    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 147
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNativeHandle()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProfiler()Lcom/google/mediapipe/framework/GraphProfiler;
    .locals 4

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 564
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 566
    new-instance v0, Lcom/google/mediapipe/framework/GraphProfiler;

    iget-wide v1, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    invoke-direct {p0, v1, v2}, Lcom/google/mediapipe/framework/Graph;->nativeGetProfiler(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/mediapipe/framework/GraphProfiler;-><init>(JLcom/google/mediapipe/framework/Graph;)V

    return-object v0
.end method

.method public declared-synchronized getStepMode()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->stepMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadBinaryGraph(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/framework/Graph;->loadBinaryGraph([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadBinaryGraph(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 93
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 95
    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeLoadBinaryGraph(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadBinaryGraph([B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 100
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 102
    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeLoadBinaryGraphBytes(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadBinaryGraphTemplate(Lcom/google/mediapipe/proto/GraphTemplateProto$CalculatorGraphTemplate;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 112
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/GraphTemplateProto$CalculatorGraphTemplate;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeLoadBinaryGraphTemplate(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadBinaryGraphTemplate([B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 117
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 119
    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeLoadBinaryGraphTemplate(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized runGraphUntilClose()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called."

    .line 309
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 311
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 312
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 313
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [J

    iget-object v2, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 314
    invoke-static {v2, v0, v1}, Lcom/google/mediapipe/framework/Graph;->splitStreamNamePacketMap(Ljava/util/Map;[Ljava/lang/String;[J)V

    iget-wide v2, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 315
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeRunGraphUntilClose(J[Ljava/lang/String;[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGraphInputStreamBlockingMode(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Invalid context, tearDown() might have been called."

    .line 363
    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    xor-int/2addr v0, v1

    .line 365
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 366
    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeSetGraphInputStreamBlockingMode(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGraphOptions(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 129
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeSetGraphOptions(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGraphType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphType"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 124
    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/Graph;->nativeSetGraphType(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInputSidePackets(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sidePackets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Invalid context, tearDown() might have been called."

    .line 236
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 238
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 239
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->copy()Lcom/google/mediapipe/framework/Packet;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 242
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParentGlContext(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaGlContext"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Invalid context, tearDown() might have been called already."

    .line 547
    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    xor-int/2addr v0, v1

    .line 549
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 550
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/Graph;->nativeSetParentGlContext(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setServiceObject(Lcom/google/mediapipe/framework/GraphService;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "service",
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mediapipe/framework/GraphService<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 245
    invoke-interface {p1, v0, v1, p2}, Lcom/google/mediapipe/framework/GraphService;->installServiceObject(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStepMode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stepMode"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/mediapipe/framework/Graph;->stepMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStreamHeader(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamName",
            "streamHeader"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 270
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/mediapipe/framework/Graph;->setStreamHeader(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStreamHeader(Ljava/lang/String;Lcom/google/mediapipe/framework/Packet;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamName",
            "streamHeader",
            "override"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    .line 283
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/Packet;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez p3, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_0

    .line 287
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t override an existing stream header, after graph started running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_1
    iget-object p3, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    .line 296
    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->copy()Lcom/google/mediapipe/framework/Packet;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    if-eqz p1, :cond_3

    .line 297
    invoke-direct {p0}, Lcom/google/mediapipe/framework/Graph;->hasAllStreamHeaders()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Graph;->startRunningGraph()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startRunningGraph()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Invalid context, tearDown() might have been called."

    .line 327
    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/mediapipe/framework/Graph;->startRunningGraphCalled:Z

    .line 330
    invoke-direct {p0}, Lcom/google/mediapipe/framework/Graph;->hasAllStreamHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/mediapipe/framework/Graph;->logger:Lcom/google/common/flogger/FluentLogger;

    .line 332
    invoke-virtual {v0}, Lcom/google/common/flogger/FluentLogger;->atInfo()Lcom/google/common/flogger/LoggingApi;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/FluentLogger$Api;

    const-string v1, "MediaPipe graph won\'t start until all stream headers are available."

    invoke-interface {v0, v1}, Lcom/google/common/flogger/FluentLogger$Api;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 336
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 337
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v6, v0, [J

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 338
    invoke-static {v0, v5, v6}, Lcom/google/mediapipe/framework/Graph;->splitStreamNamePacketMap(Ljava/util/Map;[Ljava/lang/String;[J)V

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    .line 340
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    .line 341
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v8, v0, [J

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    .line 342
    invoke-static {v0, v7, v8}, Lcom/google/mediapipe/framework/Graph;->splitStreamNamePacketMap(Ljava/util/Map;[Ljava/lang/String;[J)V

    iget-wide v3, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    move-object v2, p0

    .line 343
    invoke-direct/range {v2 .. v8}, Lcom/google/mediapipe/framework/Graph;->nativeStartRunningGraph(J[Ljava/lang/String;[J[Ljava/lang/String;[J)V

    iput-boolean v1, p0, Lcom/google/mediapipe/framework/Graph;->graphRunning:Z

    .line 352
    invoke-direct {p0}, Lcom/google/mediapipe/framework/Graph;->moveBufferedPacketsToInputStream()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tearDown()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 476
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 478
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 479
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->sidePackets:Ljava/util/Map;

    .line 481
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    .line 482
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 483
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 484
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v1}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->streamHeaders:Ljava/util/Map;

    .line 487
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 488
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 489
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;

    .line 490
    iget-object v4, v4, Lcom/google/mediapipe/framework/Graph$PacketBufferItem;->packet:Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {v4}, Lcom/google/mediapipe/framework/Packet;->release()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->packetBuffers:Ljava/util/Map;

    .line 493
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->terminationLock:Ljava/lang/Object;

    .line 494
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v4, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    .line 496
    invoke-direct {p0, v4, v5}, Lcom/google/mediapipe/framework/Graph;->nativeReleaseGraph(J)V

    iput-wide v2, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 499
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/mediapipe/framework/Graph;->callbacks:Ljava/util/List;

    .line 500
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 501
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 499
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updatePacketReference(Lcom/google/mediapipe/framework/Packet;Lcom/google/mediapipe/framework/Packet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "referencePacket",
            "newPacket"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 516
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 519
    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide p1

    .line 518
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/Graph;->nativeUpdatePacketReference(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitUntilGraphDone()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called."

    .line 459
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 461
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeWaitUntilGraphDone(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitUntilGraphIdle()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called."

    .line 469
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/mediapipe/framework/Graph;->nativeGraphHandle:J

    .line 471
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/Graph;->nativeWaitUntilGraphIdle(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
