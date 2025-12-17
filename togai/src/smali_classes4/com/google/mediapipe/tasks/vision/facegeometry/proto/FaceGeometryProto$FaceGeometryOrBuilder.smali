.class public interface abstract Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto$FaceGeometryOrBuilder;
.super Ljava/lang/Object;
.source "FaceGeometryProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/FaceGeometryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FaceGeometryOrBuilder"
.end annotation


# virtual methods
.method public abstract getMesh()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d;
.end method

.method public abstract getPoseTransformMatrix()Lcom/google/mediapipe/formats/proto/MatrixDataProto$MatrixData;
.end method

.method public abstract hasMesh()Z
.end method

.method public abstract hasPoseTransformMatrix()Z
.end method
