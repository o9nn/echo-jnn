.class public interface abstract Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEventOrBuilder;
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
    name = "SolutionEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getErrorDetails()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;
.end method

.method public abstract getEventDetailsCase()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
.end method

.method public abstract getEventName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;
.end method

.method public abstract getInvocationReport()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
.end method

.method public abstract getSessionClone()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
.end method

.method public abstract getSessionEnd()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;
.end method

.method public abstract getSessionStart()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;
.end method

.method public abstract getSolutionName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;
.end method

.method public abstract hasErrorDetails()Z
.end method

.method public abstract hasEventName()Z
.end method

.method public abstract hasInvocationReport()Z
.end method

.method public abstract hasSessionClone()Z
.end method

.method public abstract hasSessionEnd()Z
.end method

.method public abstract hasSessionStart()Z
.end method

.method public abstract hasSolutionName()Z
.end method
