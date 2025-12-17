.class public abstract Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;
.super Ljava/lang/Object;
.source "ImageSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SegmentationOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
    .locals 2

    .line 783
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;-><init>()V

    .line 784
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->builder()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;->build()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->setImageProcessingOptions(Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract imageProcessingOptions()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;
.end method

.method abstract outputHeight()I
.end method

.method abstract outputWidth()I
.end method
