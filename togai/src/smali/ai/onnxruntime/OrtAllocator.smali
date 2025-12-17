.class Lai/onnxruntime/OrtAllocator;
.super Ljava/lang/Object;
.source "OrtAllocator.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private closed:Z

.field final handle:J

.field private final isDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(JZ)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/onnxruntime/OrtAllocator;->closed:Z

    iput-wide p1, p0, Lai/onnxruntime/OrtAllocator;->handle:J

    iput-boolean p3, p0, Lai/onnxruntime/OrtAllocator;->isDefault:Z

    return-void
.end method

.method private native closeAllocator(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-boolean v0, p0, Lai/onnxruntime/OrtAllocator;->closed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lai/onnxruntime/OrtAllocator;->isDefault:Z

    if-nez v0, :cond_0

    .line 68
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtAllocator;->handle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtAllocator;->closeAllocator(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtAllocator;->closed:Z

    :cond_0
    return-void

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to close an already closed OrtAllocator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lai/onnxruntime/OrtAllocator;->closed:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lai/onnxruntime/OrtAllocator;->isDefault:Z

    return v0
.end method
