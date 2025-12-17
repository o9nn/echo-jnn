.class public interface abstract Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$RasterizationOrBuilder;
.super Ljava/lang/Object;
.source "RasterizationProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RasterizationOrBuilder"
.end annotation


# virtual methods
.method public abstract getInterval(I)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getIntervalCount()I
.end method

.method public abstract getIntervalList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
            ">;"
        }
    .end annotation
.end method
