.class public interface abstract Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationDataOrBuilder;
.super Ljava/lang/Object;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
.end method

.method public abstract getFormat()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$Format;
.end method

.method public abstract getMask()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
.end method

.method public abstract getRelativeBoundingBox()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
.end method

.method public abstract getRelativeKeypoints(I)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getRelativeKeypointsCount()I
.end method

.method public abstract getRelativeKeypointsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasBoundingBox()Z
.end method

.method public abstract hasFormat()Z
.end method

.method public abstract hasMask()Z
.end method

.method public abstract hasRelativeBoundingBox()Z
.end method
