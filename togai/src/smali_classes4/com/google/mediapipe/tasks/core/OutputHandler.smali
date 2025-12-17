.class public Lcom/google/mediapipe/tasks/core/OutputHandler;
.super Ljava/lang/Object;
.source "OutputHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/OutputHandler$ProgressListener;,
        Lcom/google/mediapipe/tasks/core/OutputHandler$ValueListener;,
        Lcom/google/mediapipe/tasks/core/OutputHandler$PureResultListener;,
        Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;,
        Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT::",
        "Lcom/google/mediapipe/tasks/core/TaskResult;",
        "InputT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OutputHandler"


# instance fields
.field protected cachedTaskResult:Lcom/google/mediapipe/tasks/core/TaskResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutputT;"
        }
    .end annotation
.end field

.field protected errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

.field private handleTimestampBoundChanges:Z

.field protected latestOutputTimestamp:J

.field private outputPacketConverter:Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter<",
            "TOutputT;TInputT;>;"
        }
    .end annotation
.end field

.field private resultListener:Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "TOutputT;TInputT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->latestOutputTimestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->handleTimestampBoundChanges:Z

    return-void
.end method


# virtual methods
.method public getLatestOutputTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->latestOutputTimestamp:J

    return-wide v0
.end method

.method handleTimestampBoundChanges()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->handleTimestampBoundChanges:Z

    return v0
.end method

.method public retrieveCachedTaskResult()Lcom/google/mediapipe/tasks/core/TaskResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutputT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->cachedTaskResult:Lcom/google/mediapipe/tasks/core/TaskResult;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->cachedTaskResult:Lcom/google/mediapipe/tasks/core/TaskResult;

    return-object v0
.end method

.method run(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->outputPacketConverter:Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;

    .line 143
    invoke-interface {v0, p1}, Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;->convertToTaskResult(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskResult;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->resultListener:Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->cachedTaskResult:Lcom/google/mediapipe/tasks/core/TaskResult;

    const/4 v0, 0x0

    .line 146
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/framework/Packet;

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->latestOutputTimestamp:J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->outputPacketConverter:Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;

    .line 148
    invoke-interface {v1, p1}, Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;->convertToTaskInput(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->resultListener:Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;

    .line 149
    invoke-interface {v1, v0, p1}, Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;->run(Lcom/google/mediapipe/tasks/core/TaskResult;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/mediapipe/framework/MediaPipeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0, p1}, Lcom/google/mediapipe/tasks/core/ErrorListener;->onError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occurs when getting MediaPipe task result. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OutputHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
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

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->errorListener:Lcom/google/mediapipe/tasks/core/ErrorListener;

    return-void
.end method

.method public setHandleTimestampBoundChanges(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handleTimestampBoundChanges"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->handleTimestampBoundChanges:Z

    return-void
.end method

.method public setOutputPacketConverter(Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "converter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter<",
            "TOutputT;TInputT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->outputPacketConverter:Lcom/google/mediapipe/tasks/core/OutputHandler$OutputPacketConverter;

    return-void
.end method

.method public setResultListener(Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "TOutputT;TInputT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/OutputHandler;->resultListener:Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener;

    return-void
.end method
