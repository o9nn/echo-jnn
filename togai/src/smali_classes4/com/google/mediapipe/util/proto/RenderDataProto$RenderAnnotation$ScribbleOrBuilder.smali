.class public interface abstract Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$ScribbleOrBuilder;
.super Ljava/lang/Object;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScribbleOrBuilder"
.end annotation


# virtual methods
.method public abstract getPoint(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getPointCount()I
.end method

.method public abstract getPointList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;",
            ">;"
        }
    .end annotation
.end method
