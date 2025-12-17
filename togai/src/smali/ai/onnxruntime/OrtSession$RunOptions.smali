.class public Lai/onnxruntime/OrtSession$RunOptions;
.super Ljava/lang/Object;
.source "OrtSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunOptions"
.end annotation


# instance fields
.field private closed:Z

.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1379
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1381
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->closed:Z

    .line 1395
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-static {v0, v1}, Lai/onnxruntime/OrtSession$RunOptions;->createRunOptions(J)J

    move-result-wide v0

    iput-wide v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    return-void
.end method

.method private native addRunConfigEntry(JJLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 1503
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed RunOptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native close(JJ)V
.end method

.method private static native createRunOptions(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getLogLevel(JJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getLogVerbosityLevel(JJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getRunTag(JJ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setLogLevel(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setLogVerbosityLevel(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setRunTag(JJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setTerminate(JJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method


# virtual methods
.method public addRunConfigEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1496
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 1497
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/OrtSession$RunOptions;->addRunConfigEntry(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 4

    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->closed:Z

    if-nez v0, :cond_0

    .line 1510
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    invoke-static {v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$RunOptions;->close(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->closed:Z

    return-void

    .line 1513
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to close an already closed RunOptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLogLevel()Lai/onnxruntime/OrtLoggingLevel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1425
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 1426
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$RunOptions;->getLogLevel(JJ)I

    move-result v0

    invoke-static {v0}, Lai/onnxruntime/OrtLoggingLevel;->mapFromInt(I)Lai/onnxruntime/OrtLoggingLevel;

    move-result-object v0

    return-object v0
.end method

.method public getLogVerbosityLevel()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1447
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 1448
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$RunOptions;->getLogVerbosityLevel(JJ)I

    move-result v0

    return v0
.end method

.method getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    return-wide v0
.end method

.method public getRunTag()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1469
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 1470
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$RunOptions;->getRunTag(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLogLevel(Lai/onnxruntime/OrtLoggingLevel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1414
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 1415
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    invoke-virtual {p1}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$RunOptions;->setLogLevel(JJI)V

    return-void
.end method

.method public setLogVerbosityLevel(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1436
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 1437
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$RunOptions;->setLogVerbosityLevel(JJI)V

    return-void
.end method

.method public setRunTag(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1458
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 1459
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$RunOptions;->setRunTag(JJLjava/lang/String;)V

    return-void
.end method

.method public setTerminate(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1482
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$RunOptions;->checkClosed()V

    .line 1483
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$RunOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$RunOptions;->setTerminate(JJZ)V

    return-void
.end method
