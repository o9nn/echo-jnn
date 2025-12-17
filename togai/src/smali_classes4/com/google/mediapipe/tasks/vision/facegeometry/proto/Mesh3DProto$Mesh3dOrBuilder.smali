.class public interface abstract Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3dOrBuilder;
.super Ljava/lang/Object;
.source "Mesh3DProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mesh3dOrBuilder"
.end annotation


# virtual methods
.method public abstract getIndexBuffer(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getIndexBufferCount()I
.end method

.method public abstract getIndexBufferList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimitiveType()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$PrimitiveType;
.end method

.method public abstract getVertexBuffer(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getVertexBufferCount()I
.end method

.method public abstract getVertexBufferList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVertexType()Lcom/google/mediapipe/tasks/vision/facegeometry/proto/Mesh3DProto$Mesh3d$VertexType;
.end method

.method public abstract hasPrimitiveType()Z
.end method

.method public abstract hasVertexType()Z
.end method
