.class final Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;
.super Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;
.source "AutoValue_FaceLandmarker_FaceLandmarkerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$Builder;
    }
.end annotation


# instance fields
.field private final baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

.field private final errorListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final minFaceDetectionConfidence:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final minFacePresenceConfidence:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final minTrackingConfidence:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final numFaces:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final outputFaceBlendshapes:Z

.field private final outputFacialTransformationMatrixes:Z

.field private final resultListener:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;ZZLjava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseOptions",
            "runningMode",
            "numFaces",
            "minFaceDetectionConfidence",
            "minFacePresenceConfidence",
            "minTrackingConfidence",
            "outputFaceBlendshapes",
            "outputFacialTransformationMatrixes",
            "resultListener",
            "errorListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/tasks/core/BaseOptions;",
            "Lcom/google/mediapipe/tasks/vision/core/RunningMode;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;ZZ",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    iput-object p2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    iput-object p3, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->numFaces:Ljava/util/Optional;

    iput-object p4, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFaceDetectionConfidence:Ljava/util/Optional;

    iput-object p5, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFacePresenceConfidence:Ljava/util/Optional;

    iput-object p6, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minTrackingConfidence:Ljava/util/Optional;

    iput-boolean p7, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFaceBlendshapes:Z

    iput-boolean p8, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFacialTransformationMatrixes:Z

    iput-object p9, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->resultListener:Ljava/util/Optional;

    iput-object p10, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->errorListener:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;ZZLjava/util/Optional;Ljava/util/Optional;Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions$1;)V
    .locals 0

    .line 11
    invoke-direct/range {p0 .. p10}, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;-><init>(Lcom/google/mediapipe/tasks/core/BaseOptions;Lcom/google/mediapipe/tasks/vision/core/RunningMode;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;ZZLjava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method


# virtual methods
.method baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    return-object v0
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

    .line 127
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 128
    check-cast p1, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 129
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->baseOptions()Lcom/google/mediapipe/tasks/core/BaseOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 130
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->numFaces:Ljava/util/Optional;

    .line 131
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->numFaces()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFaceDetectionConfidence:Ljava/util/Optional;

    .line 132
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->minFaceDetectionConfidence()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFacePresenceConfidence:Ljava/util/Optional;

    .line 133
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->minFacePresenceConfidence()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minTrackingConfidence:Ljava/util/Optional;

    .line 134
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->minTrackingConfidence()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFaceBlendshapes:Z

    .line 135
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->outputFaceBlendshapes()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFacialTransformationMatrixes:Z

    .line 136
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->outputFacialTransformationMatrixes()Z

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->resultListener:Ljava/util/Optional;

    .line 137
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->resultListener()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->errorListener:Ljava/util/Optional;

    .line 138
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarker$FaceLandmarkerOptions;->errorListener()Ljava/util/Optional;

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

.method errorListener()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->errorListener:Ljava/util/Optional;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    .line 149
    invoke-virtual {v2}, Lcom/google/mediapipe/tasks/vision/core/RunningMode;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->numFaces:Ljava/util/Optional;

    .line 151
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFaceDetectionConfidence:Ljava/util/Optional;

    .line 153
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFacePresenceConfidence:Ljava/util/Optional;

    .line 155
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minTrackingConfidence:Ljava/util/Optional;

    .line 157
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFaceBlendshapes:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFacialTransformationMatrixes:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->resultListener:Ljava/util/Optional;

    .line 163
    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->errorListener:Ljava/util/Optional;

    .line 165
    invoke-virtual {v1}, Ljava/util/Optional;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method minFaceDetectionConfidence()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFaceDetectionConfidence:Ljava/util/Optional;

    return-object v0
.end method

.method minFacePresenceConfidence()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFacePresenceConfidence:Ljava/util/Optional;

    return-object v0
.end method

.method minTrackingConfidence()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minTrackingConfidence:Ljava/util/Optional;

    return-object v0
.end method

.method numFaces()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->numFaces:Ljava/util/Optional;

    return-object v0
.end method

.method outputFaceBlendshapes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFaceBlendshapes:Z

    return v0
.end method

.method outputFacialTransformationMatrixes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFacialTransformationMatrixes:Z

    return v0
.end method

.method resultListener()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/OutputHandler$ResultListener<",
            "Lcom/google/mediapipe/tasks/vision/facelandmarker/FaceLandmarkerResult;",
            "Lcom/google/mediapipe/framework/image/MPImage;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->resultListener:Ljava/util/Optional;

    return-object v0
.end method

.method runningMode()Lcom/google/mediapipe/tasks/vision/core/RunningMode;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FaceLandmarkerOptions{baseOptions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->baseOptions:Lcom/google/mediapipe/tasks/core/BaseOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", runningMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->runningMode:Lcom/google/mediapipe/tasks/vision/core/RunningMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numFaces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->numFaces:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minFaceDetectionConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFaceDetectionConfidence:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minFacePresenceConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minFacePresenceConfidence:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minTrackingConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->minTrackingConfidence:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputFaceBlendshapes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFaceBlendshapes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputFacialTransformationMatrixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->outputFacialTransformationMatrixes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->resultListener:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/facelandmarker/AutoValue_FaceLandmarker_FaceLandmarkerOptions;->errorListener:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
