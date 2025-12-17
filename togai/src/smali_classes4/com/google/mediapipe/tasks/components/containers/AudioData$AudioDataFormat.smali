.class public abstract Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
.super Ljava/lang/Object;
.source "AudioData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/AudioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioDataFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_OF_CHANNELS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;
    .locals 2

    .line 104
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;-><init>()V

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/components/containers/AutoValue_AudioData_AudioDataFormat$Builder;->setNumOfChannels(I)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/media/AudioFormat;)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->builder()Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;->setNumOfChannels(I)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;->setSampleRate(F)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat$Builder;->build()Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getNumOfChannels()I
.end method

.method public abstract getSampleRate()F
.end method
