.class final Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;
.super Ljava/lang/Object;
.source "OrtTrainingSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtTrainingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrtCheckpointState"
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private closed:Z

.field final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    .line 1053
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z

    return-void
.end method

.method private native addProperty(JJJLjava/lang/String;F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addProperty(JJJLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addProperty(JJJLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 1213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed OrtCheckpointState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native close(JJ)V
.end method

.method private native getFloatProperty(JJJJLjava/lang/String;)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getIntProperty(JJJJLjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getStringProperty(JJJJLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private static native loadCheckpoint(JJLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method static loadCheckpoint(Ljava/lang/String;)Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1089
    sget-boolean v0, Lai/onnxruntime/OnnxRuntime;->trainingEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "checkpoint path must not be null"

    .line 1090
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1091
    new-instance v0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    .line 1092
    invoke-static {v1, v2, v3, v4, p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->loadCheckpoint(JJLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;-><init>(J)V

    return-object v0

    .line 1094
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Training is not enabled in this build of ONNX Runtime."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static loadCheckpoint(Ljava/nio/file/Path;)Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1077
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1078
    invoke-static {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->loadCheckpoint(Ljava/lang/String;)Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;

    move-result-object p0

    return-object p0
.end method

.method private native saveCheckpoint(JJJLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;F)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1125
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 1126
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    move-object v0, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->addProperty(JJJLjava/lang/String;F)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1138
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 1139
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    move-object v0, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->addProperty(JJJLjava/lang/String;I)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1151
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 1152
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->addProperty(JJJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z

    if-nez v0, :cond_0

    .line 1224
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->close(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->logger:Ljava/util/logging/Logger;

    const-string v1, "Closing a checkpoint twice"

    .line 1227
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFloatProperty(Lai/onnxruntime/OrtAllocator;Ljava/lang/String;)F
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1165
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 1166
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    iget-wide v7, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->getFloatProperty(JJJJLjava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getIntProperty(Lai/onnxruntime/OrtAllocator;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1183
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 1184
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    iget-wide v7, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->getIntProperty(JJJJLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getStringProperty(Lai/onnxruntime/OrtAllocator;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1201
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    .line 1202
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    iget-wide v7, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->getStringProperty(JJJJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveCheckpoint(Ljava/nio/file/Path;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1106
    invoke-direct {p0}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->checkClosed()V

    const-string v0, "checkpoint path must not be null"

    .line 1107
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1109
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    sget-wide v4, Lai/onnxruntime/OnnxRuntime;->ortTrainingApiHandle:J

    iget-wide v6, p0, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->nativeHandle:J

    move-object v1, p0

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lai/onnxruntime/OrtTrainingSession$OrtCheckpointState;->saveCheckpoint(JJJLjava/lang/String;Z)V

    return-void
.end method
