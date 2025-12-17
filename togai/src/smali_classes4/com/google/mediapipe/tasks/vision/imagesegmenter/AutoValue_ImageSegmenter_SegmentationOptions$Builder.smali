.class final Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;
.super Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
.source "AutoValue_ImageSegmenter_SegmentationOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

.field private outputHeight:Ljava/lang/Integer;

.field private outputWidth:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;
    .locals 5

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->outputWidth:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, " outputWidth"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->outputHeight:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " outputHeight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    if-nez v1, :cond_2

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " imageProcessingOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->outputWidth:Ljava/lang/Integer;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->outputHeight:Ljava/lang/Integer;

    .line 114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;-><init>(IILcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$1;)V

    return-object v0

    .line 110
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing required properties:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setImageProcessingOptions(Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageProcessingOptions"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    return-object p0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null imageProcessingOptions"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputHeight(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputHeight"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->outputHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public setOutputWidth(I)Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputWidth"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;->outputWidth:Ljava/lang/Integer;

    return-object p0
.end method
