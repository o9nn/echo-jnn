.class final Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;
.super Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;
.source "AutoValue_ImageGenerator_ConditionImageResult.java"


# instance fields
.field private final conditionImage:Lcom/google/mediapipe/framework/image/MPImage;

.field private final timestampMs:J


# direct methods
.method constructor <init>(Lcom/google/mediapipe/framework/image/MPImage;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "conditionImage",
            "timestampMs"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->conditionImage:Lcom/google/mediapipe/framework/image/MPImage;

    iput-wide p2, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->timestampMs:J

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null conditionImage"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public conditionImage()Lcom/google/mediapipe/framework/image/MPImage;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->conditionImage:Lcom/google/mediapipe/framework/image/MPImage;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
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

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 46
    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->conditionImage:Lcom/google/mediapipe/framework/image/MPImage;

    .line 47
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;->conditionImage()Lcom/google/mediapipe/framework/image/MPImage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->timestampMs:J

    .line 48
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionImageResult;->timestampMs()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->conditionImage:Lcom/google/mediapipe/framework/image/MPImage;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->timestampMs:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public timestampMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->timestampMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConditionImageResult{conditionImage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->conditionImage:Lcom/google/mediapipe/framework/image/MPImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ConditionImageResult;->timestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
