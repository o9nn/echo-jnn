.class public abstract Lai/onnxruntime/OrtProviderOptions;
.super Ljava/lang/Object;
.source "OrtProviderOptions.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected closed:Z

.field protected final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lai/onnxruntime/OrtProviderOptions;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtProviderOptions;->logger:Ljava/util/logging/Logger;

    .line 18
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lai/onnxruntime/OrtProviderOptions;->nativeHandle:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    return-void
.end method

.method protected static getApiHandle()J
    .locals 2

    .line 46
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    return-wide v0
.end method

.method protected static loadLibraryAndCreate(Lai/onnxruntime/OrtProvider;Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 101
    sget-object v0, Lai/onnxruntime/OrtProviderOptions$1;->$SwitchMap$ai$onnxruntime$OrtProvider:[I

    invoke-virtual {p0}, Lai/onnxruntime/OrtProvider;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractTensorRT()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find TensorRT shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_2
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractROCM()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 122
    :cond_3
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find ROCm shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_4
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractOpenVINO()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    .line 116
    :cond_5
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find OpenVINO shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_6
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractDNNL()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    .line 110
    :cond_7
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find DNNL shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_8
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractCUDA()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 134
    :goto_0
    invoke-interface {p1}, Lai/onnxruntime/OrtProviderOptions$OrtProviderSupplier;->create()J

    move-result-wide p0

    return-wide p0

    .line 104
    :cond_9
    new-instance p0, Lai/onnxruntime/OrtException;

    sget-object p1, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v0, "Failed to find CUDA shared provider"

    invoke-direct {p0, p1, v0}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed OrtProviderOptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4

    iget-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    if-nez v0, :cond_0

    .line 68
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtProviderOptions;->nativeHandle:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtProviderOptions;->close(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lai/onnxruntime/OrtProviderOptions;->logger:Ljava/util/logging/Logger;

    const-string v1, "Closing an already closed tensor."

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected abstract close(JJ)V
.end method

.method public abstract getProvider()Lai/onnxruntime/OrtProvider;
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OrtProviderOptions;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
