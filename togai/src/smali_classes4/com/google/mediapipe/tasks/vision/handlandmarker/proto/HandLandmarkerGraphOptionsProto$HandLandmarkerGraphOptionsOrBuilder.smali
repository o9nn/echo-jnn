.class public interface abstract Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto$HandLandmarkerGraphOptionsOrBuilder;
.super Ljava/lang/Object;
.source "HandLandmarkerGraphOptionsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarkerGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HandLandmarkerGraphOptionsOrBuilder"
.end annotation


# virtual methods
.method public abstract getBaseOptions()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
.end method

.method public abstract getHandDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/handdetector/proto/HandDetectorGraphOptionsProto$HandDetectorGraphOptions;
.end method

.method public abstract getHandLandmarksDetectorGraphOptions()Lcom/google/mediapipe/tasks/vision/handlandmarker/proto/HandLandmarksDetectorGraphOptionsProto$HandLandmarksDetectorGraphOptions;
.end method

.method public abstract getMinTrackingConfidence()F
.end method

.method public abstract hasBaseOptions()Z
.end method

.method public abstract hasHandDetectorGraphOptions()Z
.end method

.method public abstract hasHandLandmarksDetectorGraphOptions()Z
.end method

.method public abstract hasMinTrackingConfidence()Z
.end method
