.class public Lcom/google/mediapipe/framework/GraphProfiler;
.super Ljava/lang/Object;
.source "GraphProfiler.java"


# instance fields
.field private final mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

.field private final nativeProfilerHandle:J


# direct methods
.method constructor <init>(JLcom/google/mediapipe/framework/Graph;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeProfilerHandle",
            "mediapipeGraph"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid profiler, tearDown() might have been called already."

    .line 29
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/mediapipe/framework/GraphProfiler;->nativeProfilerHandle:J

    iput-object p3, p0, Lcom/google/mediapipe/framework/GraphProfiler;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    return-void
.end method

.method private checkContext()V
    .locals 4

    iget-object v0, p0, Lcom/google/mediapipe/framework/GraphProfiler;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 89
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid context, tearDown() might have been called already."

    .line 88
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method

.method private native nativeGetCalculatorProfiles(J)[[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profilingContextHandle"
        }
    .end annotation
.end method

.method private native nativePause(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profilingContextHandle"
        }
    .end annotation
.end method

.method private native nativeReset(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profilingContextHandle"
        }
    .end annotation
.end method

.method private native nativeResume(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profilingContextHandle"
        }
    .end annotation
.end method


# virtual methods
.method public getCalculatorProfiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/CalculatorProfileProto$CalculatorProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/GraphProfiler;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 68
    monitor-enter v0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/google/mediapipe/framework/GraphProfiler;->checkContext()V

    iget-wide v1, p0, Lcom/google/mediapipe/framework/GraphProfiler;->nativeProfilerHandle:J

    .line 70
    invoke-direct {p0, v1, v2}, Lcom/google/mediapipe/framework/GraphProfiler;->nativeGetCalculatorProfiles(J)[[B

    move-result-object v1

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    .line 73
    monitor-exit v0

    return-object v2

    .line 75
    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    invoke-static {v5}, Lcom/google/mediapipe/proto/CalculatorProfileProto$CalculatorProfile;->parseFrom([B)Lcom/google/mediapipe/proto/CalculatorProfileProto$CalculatorProfile;

    move-result-object v5

    .line 78
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 80
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 83
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/framework/GraphProfiler;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 57
    monitor-enter v0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lcom/google/mediapipe/framework/GraphProfiler;->checkContext()V

    iget-wide v1, p0, Lcom/google/mediapipe/framework/GraphProfiler;->nativeProfilerHandle:J

    .line 59
    invoke-direct {p0, v1, v2}, Lcom/google/mediapipe/framework/GraphProfiler;->nativePause(J)V

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/framework/GraphProfiler;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    invoke-direct {p0}, Lcom/google/mediapipe/framework/GraphProfiler;->checkContext()V

    iget-wide v1, p0, Lcom/google/mediapipe/framework/GraphProfiler;->nativeProfilerHandle:J

    .line 43
    invoke-direct {p0, v1, v2}, Lcom/google/mediapipe/framework/GraphProfiler;->nativeReset(J)V

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/framework/GraphProfiler;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    invoke-direct {p0}, Lcom/google/mediapipe/framework/GraphProfiler;->checkContext()V

    iget-wide v1, p0, Lcom/google/mediapipe/framework/GraphProfiler;->nativeProfilerHandle:J

    .line 51
    invoke-direct {p0, v1, v2}, Lcom/google/mediapipe/framework/GraphProfiler;->nativeResume(J)V

    .line 52
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
