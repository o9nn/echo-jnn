.class public interface abstract Lcom/google/mediapipe/formats/proto/DetectionProto$DetectionListOrBuilder;
.super Ljava/lang/Object;
.source "DetectionProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/DetectionProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetectionListOrBuilder"
.end annotation


# virtual methods
.method public abstract getDetection(I)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getDetectionCount()I
.end method

.method public abstract getDetectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;",
            ">;"
        }
    .end annotation
.end method
