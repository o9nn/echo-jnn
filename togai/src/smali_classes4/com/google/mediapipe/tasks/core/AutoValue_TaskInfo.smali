.class final Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;
.super Lcom/google/mediapipe/tasks/core/TaskInfo;
.source "AutoValue_TaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/mediapipe/tasks/core/TaskOptions;",
        ">",
        "Lcom/google/mediapipe/tasks/core/TaskInfo<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final enableFlowLimiting:Z

.field private final inputStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final outputStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final taskGraphName:Ljava/lang/String;

.field private final taskName:Ljava/lang/String;

.field private final taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final taskRunningModeName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/mediapipe/tasks/core/TaskOptions;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskName",
            "taskRunningModeName",
            "taskGraphName",
            "taskOptions",
            "inputStreams",
            "outputStreams",
            "enableFlowLimiting"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskRunningModeName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskGraphName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;

    iput-object p5, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->inputStreams:Ljava/util/List;

    iput-object p6, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->outputStreams:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->enableFlowLimiting:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/mediapipe/tasks/core/TaskOptions;Ljava/util/List;Ljava/util/List;ZLcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$1;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p7}, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/mediapipe/tasks/core/TaskOptions;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method enableFlowLimiting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->enableFlowLimiting:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 92
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/core/TaskInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 93
    check-cast p1, Lcom/google/mediapipe/tasks/core/TaskInfo;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskRunningModeName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskRunningModeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskGraphName:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskGraphName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;

    .line 97
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskOptions()Lcom/google/mediapipe/tasks/core/TaskOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->inputStreams:Ljava/util/List;

    .line 98
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->inputStreams()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->outputStreams:Ljava/util/List;

    .line 99
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->outputStreams()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->enableFlowLimiting:Z

    .line 100
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->enableFlowLimiting()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskName:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskRunningModeName:Ljava/lang/String;

    .line 111
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskGraphName:Ljava/lang/String;

    .line 113
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->inputStreams:Ljava/util/List;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->outputStreams:Ljava/util/List;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->enableFlowLimiting:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method inputStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->inputStreams:Ljava/util/List;

    return-object v0
.end method

.method outputStreams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->outputStreams:Ljava/util/List;

    return-object v0
.end method

.method taskGraphName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskGraphName:Ljava/lang/String;

    return-object v0
.end method

.method taskName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method taskOptions()Lcom/google/mediapipe/tasks/core/TaskOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;

    return-object v0
.end method

.method taskRunningModeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskRunningModeName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskInfo{taskName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskRunningModeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskRunningModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskGraphName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskGraphName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->taskOptions:Lcom/google/mediapipe/tasks/core/TaskOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputStreams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->inputStreams:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStreams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->outputStreams:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableFlowLimiting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo;->enableFlowLimiting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
