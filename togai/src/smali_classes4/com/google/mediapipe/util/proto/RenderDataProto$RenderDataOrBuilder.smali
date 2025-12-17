.class public interface abstract Lcom/google/mediapipe/util/proto/RenderDataProto$RenderDataOrBuilder;
.super Ljava/lang/Object;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RenderDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getRenderAnnotations(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getRenderAnnotationsCount()I
.end method

.method public abstract getRenderAnnotationsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSceneClass()Ljava/lang/String;
.end method

.method public abstract getSceneClassBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSceneViewport()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderViewport;
.end method

.method public abstract hasSceneClass()Z
.end method

.method public abstract hasSceneViewport()Z
.end method
