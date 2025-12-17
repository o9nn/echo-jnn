.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;
.super Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;
.source "AutoValue_AudioData_AudioDataFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private numOfChannels:Ljava/lang/Integer;

.field private sampleRate:Ljava/lang/Float;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method autoBuild()Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
    .locals 4

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;->numOfChannels:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, " numOfChannels"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;->sampleRate:Ljava/lang/Float;

    if-nez v1, :cond_1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sampleRate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;->numOfChannels:Ljava/lang/Integer;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;->sampleRate:Ljava/lang/Float;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat;-><init>(IFLcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$1;)V

    return-object v0

    .line 83
    :cond_2
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

.method public setNumOfChannels(I)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numOfChannels"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;->numOfChannels:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSampleRate(F)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleRate"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;->sampleRate:Ljava/lang/Float;

    return-object p0
.end method
