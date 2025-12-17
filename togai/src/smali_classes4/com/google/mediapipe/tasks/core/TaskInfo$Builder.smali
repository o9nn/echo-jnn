.class public abstract Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/TaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/mediapipe/tasks/core/TaskOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract autoBuild()Lcom/google/mediapipe/tasks/core/TaskInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/mediapipe/tasks/core/TaskInfo<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final build()Lcom/google/mediapipe/tasks/core/TaskInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/mediapipe/tasks/core/TaskInfo<",
            "TT;>;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->autoBuild()Lcom/google/mediapipe/tasks/core/TaskInfo;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskGraphName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->inputStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->outputStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Task graph\'s name, input streams, and output streams should be non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setEnableFlowLimiting(Z)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setInputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setOutputStreams(Ljava/util/List;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setTaskGraphName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setTaskName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setTaskOptions(Lcom/google/mediapipe/tasks/core/TaskOptions;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setTaskRunningModeName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation
.end method
