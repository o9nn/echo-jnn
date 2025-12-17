.class final Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;
.super Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;
.source "AutoValue_ImageSegmenter_SegmentationOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$Builder;
    }
.end annotation


# instance fields
.field private final imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

.field private final outputHeight:I

.field private final outputWidth:I


# direct methods
.method private constructor <init>(IILcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outputWidth",
            "outputHeight",
            "imageProcessingOptions"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;-><init>()V

    iput p1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputWidth:I

    iput p2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputHeight:I

    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;-><init>(IILcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 53
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputWidth:I

    .line 54
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->outputWidth()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputHeight:I

    .line 55
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->outputHeight()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    .line 56
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagesegmenter/ImageSegmenter$SegmentationOptions;->imageProcessingOptions()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputWidth:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputHeight:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method imageProcessingOptions()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    return-object v0
.end method

.method outputHeight()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputHeight:I

    return v0
.end method

.method outputWidth()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SegmentationOptions{outputWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->outputHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageProcessingOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagesegmenter/AutoValue_ImageSegmenter_SegmentationOptions;->imageProcessingOptions:Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
