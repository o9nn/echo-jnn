.class public final Lai/onnxruntime/OrtEnvironment$ThreadingOptions;
.super Ljava/lang/Object;
.source "OrtEnvironment.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadingOptions"
.end annotation


# instance fields
.field private closed:Z

.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 463
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 465
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closed:Z

    .line 475
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-static {v0, v1}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->createThreadingOptions(J)J

    move-result-wide v0

    iput-wide v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    return-void
.end method

.method static synthetic access$000(Lai/onnxruntime/OrtEnvironment$ThreadingOptions;)J
    .locals 2

    .line 460
    iget-wide v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    return-wide v0
.end method

.method private checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed ThreadingOptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native closeThreadingOptions(JJ)V
.end method

.method private static native createThreadingOptions(J)J
.end method

.method private native setGlobalDenormalAsZero(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setGlobalInterOpNumThreads(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setGlobalIntraOpNumThreads(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setGlobalSpinControl(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-boolean v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closed:Z

    if-nez v0, :cond_0

    .line 489
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closeThreadingOptions(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->closed:Z

    return-void

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to close a closed ThreadingOptions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGlobalDenormalAsZero()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 552
    invoke-direct {p0}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->checkClosed()V

    .line 553
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->setGlobalDenormalAsZero(JJ)V

    return-void
.end method

.method public setGlobalInterOpNumThreads(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->checkClosed()V

    if-ltz p1, :cond_0

    .line 511
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->setGlobalInterOpNumThreads(JJI)V

    return-void

    .line 509
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of threads must be non-negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGlobalIntraOpNumThreads(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 524
    invoke-direct {p0}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->checkClosed()V

    if-ltz p1, :cond_0

    .line 528
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->setGlobalIntraOpNumThreads(JJI)V

    return-void

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of threads must be non-negative."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGlobalSpinControl(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 541
    invoke-direct {p0}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->checkClosed()V

    .line 542
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtEnvironment$ThreadingOptions;->setGlobalSpinControl(JJI)V

    return-void
.end method
