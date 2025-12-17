.class public interface abstract Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto$LandmarksDetectionResultOrBuilder;
.super Ljava/lang/Object;
.source "LandmarksDetectionResultProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/LandmarksDetectionResultProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LandmarksDetectionResultOrBuilder"
.end annotation


# virtual methods
.method public abstract getClassifications()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
.end method

.method public abstract getLandmarks()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
.end method

.method public abstract getRect()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
.end method

.method public abstract getWorldLandmarks()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
.end method

.method public abstract hasClassifications()Z
.end method

.method public abstract hasLandmarks()Z
.end method

.method public abstract hasRect()Z
.end method

.method public abstract hasWorldLandmarks()Z
.end method
