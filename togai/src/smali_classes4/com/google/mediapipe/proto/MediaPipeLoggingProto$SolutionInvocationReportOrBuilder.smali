.class public interface abstract Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReportOrBuilder;
.super Ljava/lang/Object;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SolutionInvocationReportOrBuilder"
.end annotation


# virtual methods
.method public abstract getDropped()J
.end method

.method public abstract getElapsedTimeMs()J
.end method

.method public abstract getInvocationCount(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getInvocationCountCount()I
.end method

.method public abstract getInvocationCountList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMode()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
.end method

.method public abstract getPipelineAverageLatencyMs()J
.end method

.method public abstract getPipelinePeakLatencyMs()J
.end method

.method public abstract hasDropped()Z
.end method

.method public abstract hasElapsedTimeMs()Z
.end method

.method public abstract hasMode()Z
.end method

.method public abstract hasPipelineAverageLatencyMs()Z
.end method

.method public abstract hasPipelinePeakLatencyMs()Z
.end method
