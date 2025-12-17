.class public abstract Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;
.super Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;
.source "ImageOutputStreamImpl.java"

# interfaces
.implements Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStream;


# instance fields
.field private final buff:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    return-void
.end method


# virtual methods
.method protected final flushBits()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->checkClosed()V

    .line 299
    iget v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->bitOffset:I

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->bitOffset:I

    .line 304
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    .line 308
    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->bitOffset:I

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->getStreamPosition()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->seek(J)V

    rsub-int/lit8 v0, v0, 0x8

    shl-int v0, v2, v0

    and-int/2addr v0, v1

    .line 315
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    return-void
.end method

.method public abstract write(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public abstract write([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeBit(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p1

    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, v0, v1, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeBits(JI)V

    return-void
.end method

.method public writeBits(JI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->checkClosed()V

    .line 243
    iget v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->bitOffset:I

    const-wide/16 v1, 0x1

    if-lez v0, :cond_2

    .line 245
    iget v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->bitOffset:I

    .line 246
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->read()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->getStreamPosition()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {p0, v6, v7}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->seek(J)V

    :goto_0
    rsub-int/lit8 v6, v0, 0x8

    if-lt p3, v6, :cond_1

    rsub-int/lit8 v0, v6, 0x20

    ushr-int v0, v5, v0

    not-int v4, v0

    and-int/2addr v3, v4

    sub-int/2addr p3, v6

    int-to-long v3, v3

    shr-long v5, p1, p3

    int-to-long v7, v0

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    long-to-int v0, v3

    .line 263
    invoke-virtual {p0, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    goto :goto_1

    :cond_1
    add-int/2addr v0, p3

    ushr-int p3, v5, p3

    rsub-int/lit8 v5, v0, 0x8

    shl-int v6, p3, v5

    not-int v6, v6

    and-int/2addr v3, v6

    int-to-long v6, v3

    int-to-long v8, p3

    and-long/2addr v8, p1

    shl-long/2addr v8, v5

    or-long v5, v6, v8

    long-to-int p3, v5

    .line 271
    invoke-virtual {p0, p3}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    .line 272
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->getStreamPosition()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {p0, v5, v6}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->seek(J)V

    .line 273
    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->bitOffset:I

    move p3, v4

    :cond_2
    :goto_1
    const/4 v0, 0x7

    const/16 v3, 0xff

    if-le p3, v0, :cond_3

    add-int/lit8 v0, p3, -0x8

    shr-long v4, p1, v0

    int-to-long v6, v3

    and-long v3, v4, v6

    long-to-int v0, v3

    .line 282
    invoke-virtual {p0, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    add-int/lit8 p3, p3, -0x8

    goto :goto_1

    :cond_3
    if-lez p3, :cond_4

    rsub-int/lit8 v0, p3, 0x8

    shl-long/2addr p1, v0

    int-to-long v3, v3

    and-long/2addr p1, v3

    long-to-int p1, p1

    .line 290
    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    .line 291
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->getStreamPosition()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->seek(J)V

    .line 292
    iput p3, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->bitOffset:I

    :cond_4
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    return-void
.end method

.method public writeByte(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write(I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    return-void
.end method

.method public writeChar(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    .line 142
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeChars([CII)V

    return-void
.end method

.method public writeChars([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 171
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 178
    aget-char v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeDouble(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeLong(J)V

    return-void
.end method

.method public writeDoubles([DII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 223
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 230
    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 225
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeFloat(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    return-void
.end method

.method public writeFloats([FII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 210
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 217
    aget v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeInt(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    .line 80
    aput-byte v1, v0, v5

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 81
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 82
    aput-byte v1, v0, v3

    int-to-byte p1, p1

    .line 83
    aput-byte p1, v0, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    .line 87
    aput-byte v1, v0, v4

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 88
    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 89
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    .line 90
    aput-byte p1, v0, v5

    :goto_0
    iget-object p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    const/4 v0, 0x4

    .line 93
    invoke-virtual {p0, p1, v5, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public writeInts([III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 184
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 191
    aget v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 186
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeLong(J)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 98
    iget-object v3, v0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/4 v7, 0x2

    const/16 v10, 0x20

    const/4 v11, 0x4

    const/16 v12, 0x28

    const/16 v14, 0x30

    const/16 v16, 0x38

    const/16 v17, 0x7

    const/4 v15, 0x0

    const/16 v13, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    shr-long v8, v1, v16

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 100
    aput-byte v8, v3, v15

    shr-long v8, v1, v14

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 101
    aput-byte v8, v3, v5

    shr-long v8, v1, v12

    long-to-int v5, v8

    int-to-byte v5, v5

    .line 102
    aput-byte v5, v3, v7

    shr-long v7, v1, v10

    long-to-int v5, v7

    int-to-byte v5, v5

    const/4 v7, 0x3

    .line 103
    aput-byte v5, v3, v7

    const/16 v4, 0x18

    shr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    .line 104
    aput-byte v4, v3, v11

    shr-long v4, v1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x5

    .line 105
    aput-byte v4, v3, v5

    shr-long v4, v1, v13

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x6

    .line 106
    aput-byte v4, v3, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 107
    aput-byte v1, v3, v17

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    shr-long v8, v1, v16

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 111
    aput-byte v8, v3, v17

    shr-long v8, v1, v14

    long-to-int v8, v8

    int-to-byte v8, v8

    const/4 v9, 0x6

    .line 112
    aput-byte v8, v3, v9

    shr-long v8, v1, v12

    long-to-int v8, v8

    int-to-byte v8, v8

    const/4 v9, 0x5

    .line 113
    aput-byte v8, v3, v9

    shr-long v8, v1, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 114
    aput-byte v8, v3, v11

    const/16 v4, 0x18

    shr-long v8, v1, v4

    long-to-int v4, v8

    int-to-byte v4, v4

    const/4 v8, 0x3

    .line 115
    aput-byte v4, v3, v8

    shr-long v8, v1, v6

    long-to-int v4, v8

    int-to-byte v4, v4

    .line 116
    aput-byte v4, v3, v7

    shr-long v6, v1, v13

    long-to-int v4, v6

    int-to-byte v4, v4

    .line 117
    aput-byte v4, v3, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 118
    aput-byte v1, v3, v15

    :goto_0
    iget-object v1, v0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    .line 121
    invoke-virtual {v0, v1, v15, v13}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public writeLongs([JII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 197
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 204
    aget-wide v1, p1, v1

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 199
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeShort(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 59
    aput-byte v1, v0, v3

    int-to-byte p1, p1

    .line 60
    aput-byte p1, v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 64
    aput-byte v1, v0, v2

    int-to-byte p1, p1

    .line 65
    aput-byte p1, v0, v3

    :goto_0
    iget-object p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->buff:[B

    const/4 v0, 0x2

    .line 68
    invoke-virtual {p0, p1, v3, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    return-void
.end method

.method public writeShorts([SII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 158
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 165
    aget-short v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 160
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 148
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 149
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->write([BII)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method
