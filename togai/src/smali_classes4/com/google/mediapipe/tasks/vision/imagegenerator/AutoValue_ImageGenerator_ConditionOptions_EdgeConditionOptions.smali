.class final Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;
.super Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;
.source "AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions$Builder;
    }
.end annotation


# instance fields
.field private final apertureSize:I

.field private final l2Gradient:Z

.field private final pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private final threshold1:F

.field private final threshold2:F


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;FFIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pluginModelBaseOptions",
            "threshold1",
            "threshold2",
            "apertureSize",
            "l2Gradient"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    iput p2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold1:F

    iput p3, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold2:F

    iput p4, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->apertureSize:I

    iput-boolean p5, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->l2Gradient:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;FFIZLcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions$1;)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p5}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;FFIZ)V

    return-void
.end method


# virtual methods
.method apertureSize()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->apertureSize:I

    return v0
.end method

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

    .line 72
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 73
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 74
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold1:F

    .line 75
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->threshold1()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold2:F

    .line 76
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->threshold2()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->apertureSize:I

    .line 77
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->apertureSize()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->l2Gradient:Z

    .line 78
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$EdgeConditionOptions;->l2Gradient()Z

    move-result p1

    if-ne v1, p1, :cond_1

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

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold1:F

    .line 89
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold2:F

    .line 91
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->apertureSize:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->l2Gradient:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method l2Gradient()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->l2Gradient:Z

    return v0
.end method

.method pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object v0
.end method

.method threshold1()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold1:F

    return v0
.end method

.method threshold2()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold2:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EdgeConditionOptions{pluginModelBaseOptions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threshold1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", threshold2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->threshold2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apertureSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->apertureSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", l2Gradient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_EdgeConditionOptions;->l2Gradient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
