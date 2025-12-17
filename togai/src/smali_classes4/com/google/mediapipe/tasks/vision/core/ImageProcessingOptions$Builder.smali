.class public abstract Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;
.super Ljava/lang/Object;
.source "ImageProcessingOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;
.end method

.method public final build()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;
    .locals 5

    .line 62
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;->autoBuild()Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->regionOfInterest()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->regionOfInterest()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 65
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_1

    .line 70
    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->right:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 72
    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected RectF values in [0,1], found: %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected left < right and top < bottom, found: %s."

    .line 67
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->rotationDegrees()I

    move-result v1

    rem-int/lit8 v1, v1, 0x5a

    if-nez v1, :cond_3

    return-object v0

    .line 76
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 79
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions;->rotationDegrees()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Expected rotation to be a multiple of 90\u00b0, found: %d."

    .line 77
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract setRegionOfInterest(Landroid/graphics/RectF;)Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setRotationDegrees(I)Lcom/google/mediapipe/tasks/vision/core/ImageProcessingOptions$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
