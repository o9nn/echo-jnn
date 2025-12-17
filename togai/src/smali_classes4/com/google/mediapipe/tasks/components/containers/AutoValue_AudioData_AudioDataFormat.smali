.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;
.super Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
.source "AutoValue_AudioData_AudioDataFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;
    }
.end annotation


# instance fields
.field private final numOfChannels:I

.field private final sampleRate:F


# direct methods
.method private constructor <init>(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numOfChannels",
            "sampleRate"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;-><init>()V

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->numOfChannels:I

    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->sampleRate:F

    return-void
.end method

.method synthetic constructor <init>(IFLcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;-><init>(IF)V

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

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 41
    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->numOfChannels:I

    .line 42
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->sampleRate:F

    .line 43
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getSampleRate()F

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

.method public getNumOfChannels()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->numOfChannels:I

    return v0
.end method

.method public getSampleRate()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->sampleRate:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->numOfChannels:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->sampleRate:F

    .line 54
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioDataFormat{numOfChannels="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->numOfChannels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;->sampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
