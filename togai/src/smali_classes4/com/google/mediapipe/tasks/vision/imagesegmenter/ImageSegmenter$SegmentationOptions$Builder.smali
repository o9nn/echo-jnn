.class public abstract Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
.super Ljava/lang/Object;
.source "ImageSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;
.end method

.method public final build()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;
    .locals 2

    .line 764
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;->autoBuild()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->outputWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->outputHeight()I

    move-result v1

    if-lez v1, :cond_1

    .line 769
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->imageProcessingOptions()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->regionOfInterest()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 770
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageSegmenter doesn\'t support region-of-interest."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both outputWidth and outputHeight must be larger than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setImageProcessingOptions(Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setOutputHeight(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setOutputWidth(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
