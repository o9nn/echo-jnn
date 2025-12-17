.class public abstract Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;
.super Ljava/lang/Object;
.source "AudioData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract autoBuild()Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
.end method

.method public build()Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;->autoBuild()Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result v1

    if-lez v1, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getSampleRate()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sample rate should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of channels should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setNumOfChannels(I)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setSampleRate(F)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method
