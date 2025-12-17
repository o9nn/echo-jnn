.class public interface abstract Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto$TensorsToSegmentationCalculatorOptionsOrBuilder;
.super Ljava/lang/Object;
.source "TensorsToSegmentationCalculatorOptionsProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/TensorsToSegmentationCalculatorOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TensorsToSegmentationCalculatorOptionsOrBuilder"
.end annotation


# virtual methods
.method public abstract containsLabelItems(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract getLabelItems()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLabelItemsCount()I
.end method

.method public abstract getLabelItemsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLabelItemsOrDefault(JLcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation
.end method

.method public abstract getLabelItemsOrThrow(J)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract getSegmenterOptions()Lcom/google/mediapipe/tasks/vision/imagesegmenter/proto/SegmenterOptionsProto$SegmenterOptions;
.end method

.method public abstract hasSegmenterOptions()Z
.end method
