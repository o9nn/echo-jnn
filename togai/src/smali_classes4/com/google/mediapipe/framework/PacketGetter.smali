.class public final Lcom/google/mediapipe/framework/PacketGetter;
.super Ljava/lang/Object;
.source "PacketGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/framework/PacketGetter$PacketPair;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/common/flogger/FluentLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/google/common/flogger/FluentLogger;->forEnclosingClass()Lcom/google/common/flogger/FluentLogger;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/framework/PacketGetter;->logger:Lcom/google/common/flogger/FluentLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioByteData(Lcom/google/mediapipe/framework/Packet;)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetAudioData(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static getAudioDataNumChannels(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetMatrixRows(J)I

    move-result p0

    return p0
.end method

.method public static getAudioDataNumSamples(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetMatrixCols(J)I

    move-result p0

    return p0
.end method

.method public static getBool(Lcom/google/mediapipe/framework/Packet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetBool(J)Z

    move-result p0

    return p0
.end method

.method public static getBytes(Lcom/google/mediapipe/framework/Packet;)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetBytes(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static getFloat32(Lcom/google/mediapipe/framework/Packet;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetFloat32(J)F

    move-result p0

    return p0
.end method

.method public static getFloat32Vector(Lcom/google/mediapipe/framework/Packet;)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetFloat32Vector(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static getFloat64(Lcom/google/mediapipe/framework/Packet;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetFloat64(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloat64Vector(Lcom/google/mediapipe/framework/Packet;)[D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetFloat64Vector(J)[D

    move-result-object p0

    return-object p0
.end method

.method public static getGpuBufferName(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetGpuBufferName(J)I

    move-result p0

    return p0
.end method

.method public static getImageData(Lcom/google/mediapipe/framework/Packet;Ljava/nio/ByteBuffer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "packet",
            "buffer"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetImageData(JLjava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public static getImageDataDirectly(Lcom/google/mediapipe/framework/Packet;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetImageDataDirect(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getImageHeight(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetImageHeight(J)I

    move-result p0

    return p0
.end method

.method public static getImageHeightFromImageList(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetImageHeightFromImageList(J)I

    move-result p0

    return p0
.end method

.method public static getImageList(Lcom/google/mediapipe/framework/Packet;[Ljava/nio/ByteBuffer;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "packet",
            "buffersArray",
            "deepCopy"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetImageList(J[Ljava/nio/ByteBuffer;Z)Z

    move-result p0

    return p0
.end method

.method public static getImageListSize(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetImageListSize(J)I

    move-result p0

    return p0
.end method

.method public static getImageNumChannels(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetImageNumChannels(J)I

    move-result p0

    return p0
.end method

.method public static getImageWidth(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetImageWidth(J)I

    move-result p0

    return p0
.end method

.method public static getImageWidthFromImageList(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetImageWidthFromImageList(J)I

    move-result p0

    return p0
.end method

.method public static getInt16(Lcom/google/mediapipe/framework/Packet;)S
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetInt16(J)S

    move-result p0

    return p0
.end method

.method public static getInt16Vector(Lcom/google/mediapipe/framework/Packet;)[S
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetInt16Vector(J)[S

    move-result-object p0

    return-object p0
.end method

.method public static getInt32(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetInt32(J)I

    move-result p0

    return p0
.end method

.method public static getInt32Vector(Lcom/google/mediapipe/framework/Packet;)[I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetInt32Vector(J)[I

    move-result-object p0

    return-object p0
.end method

.method public static getInt64(Lcom/google/mediapipe/framework/Packet;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetInt64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInt64Vector(Lcom/google/mediapipe/framework/Packet;)[J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetInt64Vector(J)[J

    move-result-object p0

    return-object p0
.end method

.method public static getMatrixCols(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetMatrixCols(J)I

    move-result p0

    return p0
.end method

.method public static getMatrixData(Lcom/google/mediapipe/framework/Packet;)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetMatrixData(J)[F

    move-result-object p0

    return-object p0
.end method

.method public static getMatrixRows(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetMatrixRows(J)I

    move-result p0

    return p0
.end method

.method public static getPacketFromReference(Lcom/google/mediapipe/framework/Packet;)Lcom/google/mediapipe/framework/Packet;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "referencePacket"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetPacketFromReference(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p0

    return-object p0
.end method

.method public static getPairOfPackets(Lcom/google/mediapipe/framework/Packet;)Lcom/google/mediapipe/framework/PacketGetter$PacketPair;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetPairPackets(J)[J

    move-result-object p0

    .line 69
    new-instance v0, Lcom/google/mediapipe/framework/PacketGetter$PacketPair;

    const/4 v1, 0x0

    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object v1

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/mediapipe/framework/PacketGetter$PacketPair;-><init>(Lcom/google/mediapipe/framework/Packet;Lcom/google/mediapipe/framework/Packet;)V

    return-object v0
.end method

.method public static getProto(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "packet",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/mediapipe/framework/Packet;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;-><init>()V

    .line 127
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetProto(JLcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;)V

    .line 128
    invoke-static {v0, p1}, Lcom/google/mediapipe/framework/ProtoUtil;->unpack(Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method public static getProto(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Lcom/google/protobuf/MessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "packet",
            "messageParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/mediapipe/framework/Packet;",
            "Lcom/google/protobuf/Parser<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;

    invoke-direct {v0}, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;-><init>()V

    .line 133
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetProto(JLcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;)V

    .line 135
    :try_start_0
    iget-object p0, v0, Lcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;->value:[B

    invoke-interface {p1, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 137
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getProto(Lcom/google/mediapipe/framework/Packet;Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "packet",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/mediapipe/framework/Packet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-static {p1}, Lcom/google/protobuf/Internal;->getDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProto(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method

.method public static getProtoBytes(Lcom/google/mediapipe/framework/Packet;)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetProtoBytes(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/MessageLite;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "packet",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/mediapipe/framework/Packet;",
            "TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 189
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object p1

    .line 190
    invoke-static {p0, p1}, Lcom/google/mediapipe/framework/PacketGetter;->getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getProtoVector(Lcom/google/mediapipe/framework/Packet;Lcom/google/protobuf/Parser;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "packet",
            "messageParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mediapipe/framework/Packet;",
            "Lcom/google/protobuf/Parser<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetProtoVector(J)[[B

    move-result-object p0

    const-string v0, "Vector of protocol buffer objects should not be null!"

    .line 172
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 177
    invoke-interface {p1, v3}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v3

    .line 178
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 182
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getRgbaFromRgb(Lcom/google/mediapipe/framework/Packet;Ljava/nio/ByteBuffer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "packet",
            "buffer"
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetRgbaFromRgb(JLjava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public static getString(Lcom/google/mediapipe/framework/Packet;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTextureFrame(Lcom/google/mediapipe/framework/Packet;)Lcom/google/mediapipe/framework/GraphTextureFrame;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 372
    new-instance v0, Lcom/google/mediapipe/framework/GraphTextureFrame;

    .line 373
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetGpuBuffer(JZ)J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/mediapipe/framework/GraphTextureFrame;-><init>(JJ)V

    return-object v0
.end method

.method public static getTextureFrameDeferredSync(Lcom/google/mediapipe/framework/Packet;)Lcom/google/mediapipe/framework/GraphTextureFrame;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 382
    new-instance v6, Lcom/google/mediapipe/framework/GraphTextureFrame;

    .line 383
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetGpuBuffer(JZ)J

    move-result-wide v1

    .line 384
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getTimestamp()J

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/framework/GraphTextureFrame;-><init>(JJZ)V

    return-object v6
.end method

.method public static getTimeSeriesHeaderNumChannels(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetTimeSeriesHeaderNumChannels(J)I

    move-result p0

    return p0
.end method

.method public static getTimeSeriesHeaderSampleRate(Lcom/google/mediapipe/framework/Packet;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetTimeSeriesHeaderSampleRate(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getVectorOfPackets(Lcom/google/mediapipe/framework/Packet;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mediapipe/framework/Packet;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetVectorPackets(J)[J

    move-result-object p0

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    .line 83
    invoke-static {v3, v4}, Lcom/google/mediapipe/framework/Packet;->create(J)Lcom/google/mediapipe/framework/Packet;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getVideoHeaderHeight(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetVideoHeaderHeight(J)I

    move-result p0

    return p0
.end method

.method public static getVideoHeaderWidth(Lcom/google/mediapipe/framework/Packet;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packet"
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/google/mediapipe/framework/Packet;->getNativeHandle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/mediapipe/framework/PacketGetter;->nativeGetVideoHeaderWidth(J)I

    move-result p0

    return p0
.end method

.method private static native nativeGetAudioData(J)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetBool(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetBytes(J)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetFloat32(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetFloat32Vector(J)[F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetFloat64(J)D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetFloat64Vector(J)[D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetGpuBuffer(JZ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativePacketHandle",
            "waitOnCpu"
        }
    .end annotation
.end method

.method private static native nativeGetGpuBufferName(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetImageData(JLjava/nio/ByteBuffer;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativePacketHandle",
            "buffer"
        }
    .end annotation
.end method

.method private static native nativeGetImageDataDirect(J)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetImageHeight(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetImageHeightFromImageList(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetImageList(J[Ljava/nio/ByteBuffer;Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePacketHandle",
            "bufferArray",
            "deepCopy"
        }
    .end annotation
.end method

.method private static native nativeGetImageListSize(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetImageNumChannels(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetImageWidth(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetImageWidthFromImageList(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetInt16(J)S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetInt16Vector(J)[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetInt32(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetInt32Vector(J)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetInt64(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetInt64Vector(J)[J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetMatrixCols(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetMatrixData(J)[F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetMatrixRows(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetPacketFromReference(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetPairPackets(J)[J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetProto(JLcom/google/mediapipe/framework/ProtoUtil$SerializedMessage;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativePacketHandle",
            "result"
        }
    .end annotation
.end method

.method private static native nativeGetProtoBytes(J)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetProtoVector(J)[[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetRgbaFromRgb(JLjava/nio/ByteBuffer;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativePacketHandle",
            "buffer"
        }
    .end annotation
.end method

.method private static native nativeGetString(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetTimeSeriesHeaderNumChannels(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativepackethandle"
        }
    .end annotation
.end method

.method private static native nativeGetTimeSeriesHeaderSampleRate(J)D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativepackethandle"
        }
    .end annotation
.end method

.method private static native nativeGetVectorPackets(J)[J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativePacketHandle"
        }
    .end annotation
.end method

.method private static native nativeGetVideoHeaderHeight(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativepackethandle"
        }
    .end annotation
.end method

.method private static native nativeGetVideoHeaderWidth(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativepackethandle"
        }
    .end annotation
.end method
