.class public Lcom/google/mediapipe/tasks/components/containers/AudioData;
.super Ljava/lang/Object;
.source "AudioData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;,
        Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioData"


# instance fields
.field private final buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

.field private final format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "sampleCounts"
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    .line 272
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result p1

    mul-int/2addr p2, p1

    invoke-direct {v0, p2}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    return-void
.end method

.method public static create(Landroid/media/AudioFormat;I)Lcom/google/mediapipe/tasks/components/containers/AudioData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "sampleCounts"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AudioData;

    invoke-static {p0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->create(Landroid/media/AudioFormat;)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;-><init>(Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;I)V

    return-object v0
.end method

.method public static create(Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;I)Lcom/google/mediapipe/tasks/components/containers/AudioData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "sampleCounts"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/AudioData;

    invoke-direct {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;-><init>(Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;I)V

    return-object v0
.end method


# virtual methods
.method public getBuffer()[F
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    .line 254
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->getCapacity()I

    move-result v0

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    .line 255
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 256
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public getBufferLength()I
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    .line 267
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->getCapacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public getFormat()Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    return-object v0
.end method

.method public load(Landroid/media/AudioRecord;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    .line 208
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getFormat()Landroid/media/AudioFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->create(Landroid/media/AudioFormat;)Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [F

    .line 214
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/media/AudioRecord;->read([FIII)I

    move-result p1

    if-lez p1, :cond_1

    .line 216
    invoke-virtual {p0, v1, v3, p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([FII)V

    return p1

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 220
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [S

    .line 221
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/media/AudioRecord;->read([SIII)I

    move-result p1

    if-lez p1, :cond_1

    .line 223
    invoke-virtual {p0, v1, v3, p1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([SII)V

    return p1

    :cond_1
    const/4 v0, -0x6

    if-eq p1, v0, :cond_5

    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    return v3

    .line 242
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AudioRecord.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AudioRecord.ERROR_BAD_VALUE"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AudioRecord.ERROR_INVALID_OPERATION"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AudioRecord.ERROR_DEAD_OBJECT"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported encoding. Requires ENCODING_PCM_16BIT or ENCODING_PCM_FLOAT."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Incompatible audio format."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([FII)V

    return-void
.end method

.method public load([FII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "offsetInFloat",
            "sizeInFloat"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    .line 152
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result v0

    rem-int v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->buffer:Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;

    .line 158
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/mediapipe/tasks/components/containers/AudioData$FloatRingBuffer;->load([FII)V

    return-void

    .line 153
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 156
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/google/mediapipe/tasks/components/containers/AudioData;->format:Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;

    invoke-virtual {p3}, Lcom/google/mediapipe/tasks/components/containers/AudioData$AudioDataFormat;->getNumOfChannels()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Size (%d) needs to be a multiplier of the number of channels (%d)"

    .line 154
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load([S)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([SII)V

    return-void
.end method

.method public load([SII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "offsetInShort",
            "sizeInShort"
        }
    .end annotation

    add-int v0, p2, p3

    .line 183
    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 189
    new-array v0, p3, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v2, v1, p2

    .line 192
    aget-short v2, p1, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const v3, 0x46fffe00    # 32767.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/tasks/components/containers/AudioData;->load([F)V

    return-void

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 187
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Index out of range. offset (%d) + size (%d) should <= newData.length (%d)"

    .line 185
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
