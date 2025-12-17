.class public interface abstract Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto$PoseLandmarkerGraphOptionsOrBuilder;
.super Ljava/lang/Object;
.source "PoseLandmarkerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarkerGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PoseLandmarkerGraphOptionsOrBuilder"
.end annotation


# virtual methods
.method public abstract getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
.end method

.method public abstract getMinTrackingConfidence()F
.end method

.method public abstract getPoseDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/posedetector/proto/PoseDetectorGraphOptionsProto$PoseDetectorGraphOptions;
.end method

.method public abstract getPoseLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/poselandmarker/proto/PoseLandmarksDetectorGraphOptionsProto$PoseLandmarksDetectorGraphOptions;
.end method

.method public abstract hasBaseOptions()Z
.end method

.method public abstract hasMinTrackingConfidence()Z
.end method

.method public abstract hasPoseDetectorGraphOptions()Z
.end method

.method public abstract hasPoseLandmarksDetectorGraphOptions()Z
.end method
