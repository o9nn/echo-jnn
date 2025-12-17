.class public abstract Lai/onnxruntime/OnnxTensorLike;
.super Ljava/lang/Object;
.source "OnnxTensorLike.java"

# interfaces
.implements Lai/onnxruntime/OnnxValue;


# instance fields
.field protected final allocatorHandle:J

.field protected closed:Z

.field protected final info:Lai/onnxruntime/TensorInfo;

.field protected final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(JJLai/onnxruntime/TensorInfo;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    iput-wide p3, p0, Lai/onnxruntime/OnnxTensorLike;->allocatorHandle:J

    iput-object p5, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lai/onnxruntime/OnnxTensorLike;->closed:Z

    return-void
.end method


# virtual methods
.method protected checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OnnxTensorLike;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed OnnxValue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInfo()Lai/onnxruntime/TensorInfo;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxTensorLike;->info:Lai/onnxruntime/TensorInfo;

    return-object v0
.end method

.method public bridge synthetic getInfo()Lai/onnxruntime/ValueInfo;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensorLike;->getInfo()Lai/onnxruntime/TensorInfo;

    move-result-object v0

    return-object v0
.end method

.method getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    return-wide v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OnnxTensorLike;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
