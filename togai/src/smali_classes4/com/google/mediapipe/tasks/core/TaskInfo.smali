.class public abstract Lcom/google/mediapipe/tasks/core/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    }
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addStreamNamePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagIndexName"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "throttled_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/TaskInfo;->stripTagIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static builder()Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/mediapipe/tasks/core/TaskOptions;",
            ">()",
            "Lcom/google/mediapipe/tasks/core/TaskInfo$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/core/AutoValue_TaskInfo$Builder;->setTaskName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;->setTaskRunningModeName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/TaskInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private stripTagIndex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagIndexName"
        }
    .end annotation

    const/16 v0, 0x3a

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method abstract enableFlowLimiting()Z
.end method

.method generateGraphConfig()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;
    .locals 8

    .line 114
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;->newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskOptions()Lcom/google/mediapipe/tasks/core/TaskOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/TaskOptions;->convertToCalculatorOptionsProto()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v1

    .line 116
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskOptions()Lcom/google/mediapipe/tasks/core/TaskOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/core/TaskOptions;->convertToAnyProto()Lcom/google/protobuf/Any;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-nez v2, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    xor-int/2addr v5, v6

    if-eqz v5, :cond_8

    .line 123
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskGraphName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->setCalculator(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    move-result-object v5

    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v5, v1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->setOptions(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    :cond_2
    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {v5, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->addNodeOptions(Lcom/google/protobuf/Any;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->outputStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    invoke-virtual {v5, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->addOutputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    .line 132
    invoke-virtual {v0, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->addOutputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;

    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->enableFlowLimiting()Z

    move-result v1

    if-nez v1, :cond_6

    .line 135
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->inputStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 136
    invoke-virtual {v5, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->addInputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    .line 137
    invoke-virtual {v0, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->addInputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;

    goto :goto_3

    .line 139
    :cond_5
    invoke-virtual {v5}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->addNode(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;

    .line 140
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    return-object v0

    .line 143
    :cond_6
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    move-result-object v1

    const-string v2, "FlowLimiterCalculator"

    .line 144
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->setCalculator(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    move-result-object v1

    .line 146
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;->newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;

    move-result-object v2

    const-string v6, "FINISHED"

    invoke-virtual {v2, v6}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->setTagIndex(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->setBackEdge(Z)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    .line 145
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->addInputStreamInfo(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    move-result-object v1

    .line 148
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->newBuilder()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    move-result-object v2

    sget-object v6, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 151
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->newBuilder()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;

    move-result-object v7

    .line 152
    invoke-virtual {v7, v4}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->setMaxInFlight(I)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;

    move-result-object v7

    .line 153
    invoke-virtual {v7, v4}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->setMaxInQueue(I)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;

    move-result-object v4

    .line 154
    invoke-virtual {v4}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 149
    invoke-virtual {v2, v6, v4}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;->setExtension(Lcom/google/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    .line 155
    invoke-virtual {v2}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->setOptions(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->inputStreams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 157
    invoke-virtual {v0, v4}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->addInputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;

    .line 158
    invoke-direct {p0, v4}, Lcom/google/mediapipe/tasks/core/TaskInfo;->stripTagIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->addInputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    .line 159
    invoke-direct {p0, v4}, Lcom/google/mediapipe/tasks/core/TaskInfo;->addStreamNamePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-direct {p0, v4}, Lcom/google/mediapipe/tasks/core/TaskInfo;->stripTagIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->addOutputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    .line 161
    invoke-virtual {v5, v4}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->addInputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    goto :goto_4

    .line 163
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "FINISHED:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->outputStreams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/mediapipe/tasks/core/TaskInfo;->stripTagIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->addInputStream(Ljava/lang/String;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    .line 165
    invoke-virtual {v1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->addNode(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;

    .line 166
    invoke-virtual {v5}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->addNode(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;

    .line 167
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;

    return-object v0

    .line 118
    :cond_8
    new-instance v0, Lcom/google/mediapipe/framework/MediaPipeException;

    sget-object v1, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->INVALID_ARGUMENT:Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;

    .line 119
    invoke-virtual {v1}, Lcom/google/mediapipe/framework/MediaPipeException$StatusCode;->ordinal()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Only one of convertTo*Proto() method should be implemented for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->taskOptions()Lcom/google/mediapipe/tasks/core/TaskOptions;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/MediaPipeException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method abstract inputStreams()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method outputStreamNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->outputStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/core/TaskInfo;->outputStreams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x3a

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method abstract outputStreams()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract taskGraphName()Ljava/lang/String;
.end method

.method abstract taskName()Ljava/lang/String;
.end method

.method abstract taskOptions()Lcom/google/mediapipe/tasks/core/TaskOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method abstract taskRunningModeName()Ljava/lang/String;
.end method
