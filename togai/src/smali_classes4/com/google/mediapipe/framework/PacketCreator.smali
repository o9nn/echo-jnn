.class public Lcom/google/mediapipe/framework/PacketCreator;
.super Ljava/lang/Object;
.source "PacketCreator.java"


# instance fields
.field protected mediapipeGraph:Lcom/google/mediapipe/framework/Graph;


# direct methods
.method public constructor <init>(Lcom/google/mediapipe/framework/Graph;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    return-void
.end method

.method private static checkAudioDataSize(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "length",
            "numChannels",
            "numSamples"
        }
    .end annotation

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x2

    if-ne p1, p0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Please check the audio data size, has to be num_channels * num_samples * 2 = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " but was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private native nativeCreateAudioPacket(J[BIII)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "data",
            "offset",
            "numChannels",
            "numSamples"
        }
    .end annotation
.end method

.method private native nativeCreateAudioPacketDirect(JLjava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "data",
            "numChannels",
            "numSamples"
        }
    .end annotation
.end method

.method private native nativeCreateBool(JZ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation
.end method

.method private native nativeCreateCalculatorOptions(J[B)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation
.end method

.method private native nativeCreateCameraIntrinsics(JFFFFFF)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "fx",
            "fy",
            "cx",
            "cy",
            "width",
            "height"
        }
    .end annotation
.end method

.method private native nativeCreateCpuImage(JLjava/nio/ByteBuffer;IIII)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "buffer",
            "width",
            "height",
            "rowBytes",
            "numChannels"
        }
    .end annotation
.end method

.method private native nativeCreateFloat32(JF)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation
.end method

.method private native nativeCreateFloat32Array(J[F)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation
.end method

.method private native nativeCreateFloat32Vector(J[F)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation
.end method

.method private native nativeCreateFloat64(JD)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation
.end method

.method private native nativeCreateFloatImageFrame(JLjava/nio/FloatBuffer;II)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "buffer",
            "width",
            "height"
        }
    .end annotation
.end method

.method private native nativeCreateGpuBuffer(JIIILcom/google/mediapipe/framework/TextureReleaseCallback;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "name",
            "width",
            "height",
            "releaseCallback"
        }
    .end annotation
.end method

.method private native nativeCreateGpuImage(JIIILcom/google/mediapipe/framework/TextureReleaseCallback;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "name",
            "width",
            "height",
            "releaseCallback"
        }
    .end annotation
.end method

.method private native nativeCreateGrayscaleImage(JLjava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "buffer",
            "width",
            "height"
        }
    .end annotation
.end method

.method private native nativeCreateInt16(JS)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation
.end method

.method private native nativeCreateInt32(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation
.end method

.method private native nativeCreateInt32Array(J[I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation
.end method

.method private native nativeCreateInt32Pair(JII)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "first",
            "second"
        }
    .end annotation
.end method

.method private native nativeCreateInt64(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation
.end method

.method private native nativeCreateMatrix(JII[F)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "rows",
            "cols",
            "data"
        }
    .end annotation
.end method

.method private native nativeCreateProto(JLcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation
.end method

.method private native nativeCreateReferencePacket(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packet"
        }
    .end annotation
.end method

.method private native nativeCreateRgbImage(JLjava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "buffer",
            "width",
            "height"
        }
    .end annotation
.end method

.method private native nativeCreateRgbImageFromRgba(JLjava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "buffer",
            "width",
            "height"
        }
    .end annotation
.end method

.method private native nativeCreateRgbaImageFrame(JLjava/nio/ByteBuffer;II)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "buffer",
            "width",
            "height"
        }
    .end annotation
.end method

.method private native nativeCreateString(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "value"
        }
    .end annotation
.end method

.method private native nativeCreateStringFromByteArray(J[B)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "data"
        }
    .end annotation
.end method

.method private native nativeCreateTimeSeriesHeader(JID)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "numChannels",
            "sampleRate"
        }
    .end annotation
.end method

.method private native nativeCreateVideoHeader(JII)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "width",
            "height"
        }
    .end annotation
.end method

.method private releaseWithSyncToken(JLcom/google/mediapipe/framework/TextureReleaseCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeSyncToken",
            "releaseCallback"
        }
    .end annotation

    .line 399
    new-instance v0, Lcom/google/mediapipe/framework/GraphGlSyncToken;

    invoke-direct {v0, p1, p2}, Lcom/google/mediapipe/framework/GraphGlSyncToken;-><init>(J)V

    invoke-interface {p3, v0}, Lcom/google/mediapipe/framework/TextureReleaseCallback;->release(Lcom/google/mediapipe/framework/GlSyncToken;)V

    return-void
.end method


# virtual methods
.method public createAudioPacket(Ljava/nio/ByteBuffer;II)Lcom/google/mediapipe/framework/Packet;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "numChannels",
            "numSamples"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/google/mediapipe/framework/PacketCreator;->checkAudioDataSize(III)V

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 97
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    .line 96
    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateAudioPacketDirect(JLjava/nio/ByteBuffer;II)J

    move-result-wide p1

    .line 95
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 101
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    add-int v5, v0, p1

    move-object v1, p0

    move v6, p2

    move v7, p3

    .line 100
    invoke-direct/range {v1 .. v7}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateAudioPacket(J[BIII)J

    move-result-wide p1

    .line 99
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 107
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data must be either a direct byte buffer or be backed by a byte array."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createAudioPacket([BII)Lcom/google/mediapipe/framework/Packet;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "numChannels",
            "numSamples"
        }
    .end annotation

    .line 76
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/google/mediapipe/framework/PacketCreator;->checkAudioDataSize(III)V

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 79
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    .line 78
    invoke-direct/range {v1 .. v7}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateAudioPacket(J[BIII)J

    move-result-wide p1

    .line 77
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createBool(Z)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 209
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateBool(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createByteArray([B)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 249
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateStringFromByteArray(J[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createCalculatorOptions(Lcom/google/protobuf/MessageLite;)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 286
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateCalculatorOptions(J[B)J

    move-result-wide v0

    .line 285
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createCameraIntrinsics(FFFFFF)Lcom/google/mediapipe/framework/Packet;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fx",
            "fy",
            "cx",
            "cy",
            "width",
            "height"
        }
    .end annotation

    move-object v9, p0

    iget-object v0, v9, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 300
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 299
    invoke-direct/range {v0 .. v8}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateCameraIntrinsics(JFFFFFF)J

    move-result-wide v0

    .line 298
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object v0

    return-object v0
.end method

.method public createFloat32(F)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 201
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateFloat32(JF)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createFloat32Array([F)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 245
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateFloat32Array(J[F)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createFloat32Vector([F)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 229
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateFloat32Vector(J[F)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createFloat64(D)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 205
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateFloat64(JD)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createFloat64Vector([D)Lcom/google/mediapipe/framework/Packet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 233
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFloatImageFrame(Ljava/nio/FloatBuffer;II)Lcom/google/mediapipe/framework/Packet;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 185
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateFloatImageFrame(JLjava/nio/FloatBuffer;II)J

    move-result-wide p1

    .line 184
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 178
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The size of the buffer should be: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " but is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 182
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createGpuBuffer(III)Lcom/google/mediapipe/framework/Packet;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "width",
            "height"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 330
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateGpuBuffer(JIIILcom/google/mediapipe/framework/TextureReleaseCallback;)J

    move-result-wide p1

    .line 329
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createGpuBuffer(IIILcom/google/mediapipe/framework/TextureReleaseCallback;)Lcom/google/mediapipe/framework/Packet;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "width",
            "height",
            "releaseCallback"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 316
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 315
    invoke-direct/range {v1 .. v7}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateGpuBuffer(JIIILcom/google/mediapipe/framework/TextureReleaseCallback;)J

    move-result-wide p1

    .line 314
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createGpuBuffer(Lcom/google/mediapipe/framework/TextureFrame;)Lcom/google/mediapipe/framework/Packet;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 344
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    .line 345
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getTextureName()I

    move-result v4

    .line 346
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getWidth()I

    move-result v5

    .line 347
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v7, p1

    .line 343
    invoke-direct/range {v1 .. v7}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateGpuBuffer(JIIILcom/google/mediapipe/framework/TextureReleaseCallback;)J

    move-result-wide v0

    .line 342
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createGrayscaleImage(Ljava/nio/ByteBuffer;II)Lcom/google/mediapipe/framework/Packet;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height"
        }
    .end annotation

    mul-int v0, p2, p3

    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 151
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateGrayscaleImage(JLjava/nio/ByteBuffer;II)J

    move-result-wide p1

    .line 150
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "The size of the buffer should be: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " but is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createImage(Lcom/google/mediapipe/framework/TextureFrame;)Lcom/google/mediapipe/framework/Packet;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 362
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    .line 363
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getTextureName()I

    move-result v4

    .line 364
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getWidth()I

    move-result v5

    .line 365
    invoke-interface {p1}, Lcom/google/mediapipe/framework/TextureFrame;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v7, p1

    .line 361
    invoke-direct/range {v1 .. v7}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateGpuImage(JIIILcom/google/mediapipe/framework/TextureReleaseCallback;)J

    move-result-wide v0

    .line 360
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createImage(Ljava/nio/ByteBuffer;III)Lcom/google/mediapipe/framework/Packet;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height",
            "numChannels"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    mul-int/lit8 v0, p2, 0x4

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    mul-int/lit8 v2, p2, 0x3

    add-int/2addr v2, v1

    .line 381
    div-int/2addr v2, v0

    mul-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    move v7, p2

    :goto_1
    mul-int v0, v7, p3

    .line 388
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 394
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    .line 393
    invoke-direct/range {v1 .. v8}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateCpuImage(JLjava/nio/ByteBuffer;IIII)J

    move-result-wide p1

    .line 392
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 389
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "The size of the buffer should be: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " but is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 390
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 385
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Channels should be: 1, 3, or 4, but is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInt16(S)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 189
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateInt16(JS)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createInt16Vector([S)Lcom/google/mediapipe/framework/Packet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 217
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInt32(I)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 193
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateInt32(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createInt32Array([I)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 237
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateInt32Array(J[I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createInt32Pair(II)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "first",
            "second"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 241
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateInt32Pair(JII)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createInt32Vector([I)Lcom/google/mediapipe/framework/Packet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 221
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInt64(J)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 197
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateInt64(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createInt64Vector([J)Lcom/google/mediapipe/framework/Packet;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 225
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createMatrix(II[F)Lcom/google/mediapipe/framework/Packet;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rows",
            "cols",
            "data"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 274
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateMatrix(JII[F)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createProto(Lcom/google/protobuf/MessageLite;)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 291
    invoke-static {p1}, Lcom/google/mediapipe/framework/ProtoUtil;->pack(Lcom/google/protobuf/MessageLite;)Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 292
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateProto(JLcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createReferencePacket(Lcom/google/mediapipe/framework/Packet;)Lcom/google/mediapipe/framework/Packet;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packet"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 46
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateReferencePacket(JJ)J

    move-result-wide v0

    .line 45
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createRgbImage(Ljava/nio/ByteBuffer;II)Lcom/google/mediapipe/framework/Packet;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height"
        }
    .end annotation

    mul-int/lit8 v0, p2, 0x3

    add-int/lit8 v0, v0, 0x3

    .line 56
    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, p3

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 65
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateRgbImage(JLjava/nio/ByteBuffer;II)J

    move-result-wide p1

    .line 64
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "The size of the buffer should be: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " but is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 62
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createRgbImageFromRgba(Ljava/nio/ByteBuffer;II)Lcom/google/mediapipe/framework/Packet;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height"
        }
    .end annotation

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 137
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateRgbImageFromRgba(JLjava/nio/ByteBuffer;II)J

    move-result-wide p1

    .line 136
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 130
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "The size of the buffer should be: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " but is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createRgbaImageFrame(Ljava/nio/ByteBuffer;II)Lcom/google/mediapipe/framework/Packet;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height"
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 168
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateRgbaImageFrame(JLjava/nio/ByteBuffer;II)J

    move-result-wide p1

    .line 167
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The size of the buffer should be: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " but is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 165
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public createSerializedProto(Lcom/google/protobuf/MessageLite;)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 280
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateStringFromByteArray(J[B)J

    move-result-wide v0

    .line 279
    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createString(Ljava/lang/String;)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 213
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateString(JLjava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createTimeSeriesHeader(ID)Lcom/google/mediapipe/framework/Packet;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "numChannels",
            "sampleRate"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 270
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateTimeSeriesHeader(JID)J

    move-result-wide p1

    .line 269
    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method

.method public createVideoHeader(II)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/framework/PacketCreator;->mediapipeGraph:Lcom/google/mediapipe/framework/Graph;

    .line 259
    invoke-virtual {v0}, Lcom/google/mediapipe/framework/Graph;->getNativeHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/mediapipe/framework/PacketCreator;->nativeCreateVideoHeader(JII)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p1

    return-object p1
.end method
