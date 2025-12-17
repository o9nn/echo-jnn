.class public abstract Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;
.super Ljava/lang/Object;
.source "ImageInputStreamImpl.java"

# interfaces
.implements Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;
    }
.end annotation


# instance fields
.field protected bitOffset:I

.field private final buff:[B

.field protected byteOrder:Ljava/nio/ByteOrder;

.field private closed:Z

.field currentByte:I

.field protected flushedPos:J

.field private final offsetStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

.field private final posStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

.field protected streamPos:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iput-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    iput-boolean v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->closed:Z

    .line 36
    new-instance v0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;-><init>(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$1;)V

    iput-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->posStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    .line 37
    new-instance v0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    invoke-direct {v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;-><init>(Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$1;)V

    iput-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->offsetStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    return-void
.end method


# virtual methods
.method protected final checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->closed:Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->closed:Z

    if-nez v0, :cond_0

    .line 517
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 522
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    return-void
.end method

.method public flushBefore(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    return-void

    .line 472
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Trying to flush within already flushed portion"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Trying to flush outside of current position"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBitOffset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return v0
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public getFlushedPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    return-wide v0
.end method

.method public getStreamPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-wide v0
.end method

.method public isCached()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCachedFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCachedMemory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public mark()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->posStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    .line 439
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->push(J)V

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->offsetStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    .line 440
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->getBitOffset()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->push(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 445
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stream marking error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result p1

    return p1
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readBit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    .line 369
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    rsub-int/lit8 v2, v0, 0x8

    shr-int/2addr v1, v2

    .line 381
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    :cond_0
    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    and-int/lit8 v0, v1, 0x1

    return v0

    .line 373
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readBits(I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-ltz p1, :cond_1

    const/16 v0, 0x40

    if-gt p1, v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const/4 v3, 0x1

    shl-long/2addr v0, v3

    .line 402
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readBit()I

    move-result v3

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    .line 394
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v0

    if-ltz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 91
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF reached"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v0

    if-ltz v0, :cond_0

    int-to-byte v0, v0

    return v0

    .line 101
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF reached"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readBytes(Lcom/tom_roush/harmony/javax/imageio/stream/IIOByteBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 78
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v0, v1, p2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result p2

    .line 81
    invoke-virtual {p1, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/IIOByteBuffer;->setData([B)V

    .line 82
    invoke-virtual {p1, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/IIOByteBuffer;->setOffset(I)V

    .line 83
    invoke-virtual {p1, p2}, Lcom/tom_roush/harmony/javax/imageio/stream/IIOByteBuffer;->setLength(I)V

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer is NULL"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 259
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 238
    array-length v1, p1

    if-gt v0, v1, :cond_2

    :goto_0
    if-lez p3, :cond_1

    .line 245
    invoke-virtual {p0, p1, p2, p3}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 249
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-void

    .line 240
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readFully([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 277
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 284
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readChar()C

    move-result v2

    aput-char v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 279
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readFully([DII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 329
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 336
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readFloat()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 331
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readFully([FII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 316
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 323
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readFloat()F

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 318
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readFully([III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 290
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 297
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 292
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readFully([JII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 303
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 310
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 305
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readFully([SII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 264
    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 271
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readShort()S

    move-result v2

    aput-short v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 266
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0, v0, v2, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    .line 145
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    .line 147
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v0, v0, v5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    .line 149
    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v1, v4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aget-byte v0, v0, v2

    :goto_0
    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0

    .line 142
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/16 v1, 0xa

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v2

    if-eq v2, v1, :cond_3

    if-eq v2, v3, :cond_3

    .line 212
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    goto :goto_1

    :cond_1
    int-to-char v1, v2

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 219
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public readLong()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 159
    invoke-virtual {p0, v0, v1, v2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    .line 164
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v4, 0x20

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v8, 0x7

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    const-wide v12, 0xffffffffL

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    .line 166
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    aget-byte v3, v0, v9

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aget-byte v3, v0, v10

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    aget-byte v3, v0, v11

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 168
    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v5, v0, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    aget-byte v5, v0, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x8

    or-int/2addr v2, v3

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-long v1, v1

    and-long/2addr v1, v12

    shl-long/2addr v1, v4

    int-to-long v3, v0

    and-long/2addr v3, v12

    or-long v0, v1, v3

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    .line 175
    aget-byte v3, v0, v11

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v3, v10

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v2

    or-int/2addr v3, v9

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    .line 177
    aget-byte v3, v0, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v3, v7

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v2, v6, 0x8

    or-int/2addr v2, v3

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-long v2, v0

    and-long/2addr v2, v12

    shl-long/2addr v2, v4

    int-to-long v0, v1

    and-long/2addr v0, v12

    or-long/2addr v0, v2

    return-wide v0

    .line 161
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0, v0, v2, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    .line 123
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    .line 124
    aget-byte v1, v0, v2

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    .line 125
    aget-byte v1, v0, v3

    shl-int/lit8 v1, v1, 0x8

    aget-byte v0, v0, v2

    :goto_0
    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 120
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 225
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 226
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readUnsignedShort()I

    move-result v1

    .line 227
    new-array v2, v1, [B

    .line 228
    new-array v3, v1, [C

    const/4 v3, 0x0

    .line 230
    invoke-virtual {p0, v2, v3, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readFully([BII)V

    .line 231
    invoke-virtual {p0, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 232
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->buff:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->read()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 111
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF reached"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->posStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    .line 451
    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->offsetStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->posStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    .line 453
    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->pop()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 458
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->offsetStack:Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;

    .line 459
    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl$PositionStack;->pop()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->setBitOffset(I)V

    goto :goto_0

    .line 456
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "marked position lies in the flushed portion of the stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public seek(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    .line 427
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->getFlushedPosition()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    iput-wide p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void

    .line 429
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "trying to seek before flushed pos"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBitOffset(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    return-void

    .line 357
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public skipBytes(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p1

    .line 415
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->skipBytes(J)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public skipBytes(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->getStreamPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    return-wide p1
.end method
