.class final Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;
.super Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;
.source "AutoValue_FaceLandmarkerResult.java"


# instance fields
.field private final faceBlendshapes:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final faceLandmarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;",
            ">;>;"
        }
    .end annotation
.end field

.field private final facialTransformationMatrixes:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "[F>;>;"
        }
    .end annotation
.end field

.field private final timestampMs:J


# direct methods
.method constructor <init>(JLjava/util/List;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "timestampMs",
            "faceLandmarks",
            "faceBlendshapes",
            "facialTransformationMatrixes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;",
            ">;>;",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;>;>;",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "[F>;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;-><init>()V

    iput-wide p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->timestampMs:J

    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceLandmarks:Ljava/util/List;

    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceBlendshapes:Ljava/util/Optional;

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->facialTransformationMatrixes:Ljava/util/Optional;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null facialTransformationMatrixes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null faceBlendshapes"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null faceLandmarks"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
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

    .line 74
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 75
    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;

    iget-wide v3, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->timestampMs:J

    .line 76
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;->timestampMs()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceLandmarks:Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;->faceLandmarks()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceBlendshapes:Ljava/util/Optional;

    .line 78
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;->faceBlendshapes()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->facialTransformationMatrixes:Ljava/util/Optional;

    .line 79
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;->facialTransformationMatrixes()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

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

.method public faceBlendshapes()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/Category;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceBlendshapes:Ljava/util/Optional;

    return-object v0
.end method

.method public faceLandmarks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/NormalizedLandmark;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceLandmarks:Ljava/util/List;

    return-object v0
.end method

.method public facialTransformationMatrixes()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/List<",
            "[F>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->facialTransformationMatrixes:Ljava/util/Optional;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->timestampMs:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceLandmarks:Ljava/util/List;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceBlendshapes:Ljava/util/Optional;

    .line 92
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->facialTransformationMatrixes:Ljava/util/Optional;

    .line 94
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public timestampMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->timestampMs:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FaceLandmarkerResult{timestampMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->timestampMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", faceLandmarks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceLandmarks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", faceBlendshapes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->faceBlendshapes:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", facialTransformationMatrixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarkerResult;->facialTransformationMatrixes:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
