.class Lcom/google/mediapipe/tasks/core/ModelResourcesCache;
.super Ljava/lang/Object;
.source "ModelResourcesCache.java"


# instance fields
.field private final isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeCreateModelResourcesCache()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeHandle:J

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private native nativeCreateModelResourcesCache()J
.end method

.method private native nativeReleaseModelResourcesCache(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method


# virtual methods
.method public getNativeHandle()J
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeHandle:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isHandleValid()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->isHandleValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeHandle:J

    .line 42
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/tasks/core/ModelResourcesCache;->nativeReleaseModelResourcesCache(J)V

    :cond_0
    return-void
.end method
