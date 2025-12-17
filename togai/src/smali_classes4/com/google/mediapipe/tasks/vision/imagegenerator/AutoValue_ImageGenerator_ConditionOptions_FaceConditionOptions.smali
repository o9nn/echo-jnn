.class final Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;
.super Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;
.source "AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions$Builder;
    }
.end annotation


# instance fields
.field private final faceModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private final minFaceDetectionConfidence:F

.field private final minFacePresenceConfidence:F

.field private final pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/core/BaseOptions;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pluginModelBaseOptions",
            "faceModelBaseOptions",
            "minFaceDetectionConfidence",
            "minFacePresenceConfidence"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->faceModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    iput p3, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFaceDetectionConfidence:F

    iput p4, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFacePresenceConfidence:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/core/BaseOptions;FFLcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/core/BaseOptions;FF)V

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

    .line 62
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 63
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 64
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->faceModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 65
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->faceModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFaceDetectionConfidence:F

    .line 66
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->minFaceDetectionConfidence()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFacePresenceConfidence:F

    .line 67
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions$FaceConditionOptions;->minFacePresenceConfidence()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

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

.method faceModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->faceModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->faceModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFaceDetectionConfidence:F

    .line 80
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFacePresenceConfidence:F

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method minFaceDetectionConfidence()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFaceDetectionConfidence:F

    return v0
.end method

.method minFacePresenceConfidence()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFacePresenceConfidence:F

    return v0
.end method

.method pluginModelBaseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FaceConditionOptions{pluginModelBaseOptions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->pluginModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", faceModelBaseOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->faceModelBaseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minFaceDetectionConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFaceDetectionConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minFacePresenceConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionOptions_FaceConditionOptions;->minFacePresenceConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
