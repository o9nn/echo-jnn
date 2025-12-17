.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReportOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4822
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$6700()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V
    .locals 0

    .line 4815
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllInvocationCount(Ljava/lang/Iterable;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;",
            ">;)",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;"
        }
    .end annotation

    .line 5215
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5216
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$8100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addInvocationCount(ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 5201
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5202
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 5203
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    .line 5202
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$8000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-object p0
.end method

.method public addInvocationCount(ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 5175
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5176
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$8000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-object p0
.end method

.method public addInvocationCount(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 5188
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5189
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-object p0
.end method

.method public addInvocationCount(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5162
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5163
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDropped()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1

    .line 5089
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5090
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-object p0
.end method

.method public clearElapsedTimeMs()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1

    .line 5037
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5038
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-object p0
.end method

.method public clearInvocationCount()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1

    .line 5227
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5228
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$8200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-object p0
.end method

.method public clearMode()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1

    .line 4873
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 4874
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$6900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-object p0
.end method

.method public clearPipelineAverageLatencyMs()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1

    .line 4929
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 4930
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-object p0
.end method

.method public clearPipelinePeakLatencyMs()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1

    .line 4985
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 4986
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDropped()J
    .locals 2

    .line 5064
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getDropped()J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedTimeMs()J
    .locals 2

    .line 5012
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getElapsedTimeMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInvocationCount(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5125
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getInvocationCount(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    move-result-object p1

    return-object p1
.end method

.method public getInvocationCountCount()I
    .locals 1

    .line 5115
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getInvocationCountCount()I

    move-result v0

    return v0
.end method

.method public getInvocationCountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;",
            ">;"
        }
    .end annotation

    .line 5103
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 5104
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getInvocationCountList()Ljava/util/List;

    move-result-object v0

    .line 5103
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
    .locals 1

    .line 4848
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getMode()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    move-result-object v0

    return-object v0
.end method

.method public getPipelineAverageLatencyMs()J
    .locals 2

    .line 4902
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getPipelineAverageLatencyMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPipelinePeakLatencyMs()J
    .locals 2

    .line 4958
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getPipelinePeakLatencyMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasDropped()Z
    .locals 1

    .line 5052
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->hasDropped()Z

    move-result v0

    return v0
.end method

.method public hasElapsedTimeMs()Z
    .locals 1

    .line 5000
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->hasElapsedTimeMs()Z

    move-result v0

    return v0
.end method

.method public hasMode()Z
    .locals 1

    .line 4836
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->hasMode()Z

    move-result v0

    return v0
.end method

.method public hasPipelineAverageLatencyMs()Z
    .locals 1

    .line 4889
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->hasPipelineAverageLatencyMs()Z

    move-result v0

    return v0
.end method

.method public hasPipelinePeakLatencyMs()Z
    .locals 1

    .line 4945
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->hasPipelinePeakLatencyMs()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "message"
        }
    .end annotation

    .line 4815
    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->internalMergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4815
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeInvocationCount(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5239
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5240
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$8300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;I)V

    return-object p0
.end method

.method public setDropped(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5076
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5077
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;J)V

    return-object p0
.end method

.method public setElapsedTimeMs(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5024
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5025
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;J)V

    return-object p0
.end method

.method public setInvocationCount(ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 5149
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5150
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 5151
    invoke-virtual {p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    .line 5150
    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-object p0
.end method

.method public setInvocationCount(ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 5136
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 5137
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-object p0
.end method

.method public setMode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4860
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 4861
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$6800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)V

    return-object p0
.end method

.method public setPipelineAverageLatencyMs(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4915
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 4916
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;J)V

    return-object p0
.end method

.method public setPipelinePeakLatencyMs(J)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4971
    invoke-virtual {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->copyOnWrite()V

    .line 4972
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->access$7200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;J)V

    return-object p0
.end method
