.class Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;
.super Lcom/tom_roush/fontbox/ttf/TTFDataStream;
.source "MemoryTTFDataStream.java"


# instance fields
.field private currentPosition:I

.field private data:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->data:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->currentPosition:I

    .line 45
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 48
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 50
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 57
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->currentPosition:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getOriginalData()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getOriginalDataSize()J
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->data:[B

    .line 225
    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->currentPosition:I

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->data:[B

    .line 98
    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    .line 102
    :cond_0
    aget-byte v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->currentPosition:I

    add-int/lit16 v1, v1, 0x100

    .line 104
    rem-int/lit16 v1, v1, 0x100

    return v1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->currentPosition:I

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->data:[B

    .line 186
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 188
    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->data:[B

    iget v1, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->currentPosition:I

    .line 189
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->currentPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->currentPosition:I

    return p3

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->readSignedInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->readSignedInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public readSignedInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->read()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->read()I

    move-result v1

    .line 81
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->read()I

    move-result v2

    .line 82
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    .line 85
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readSignedShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->read()I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 138
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public readUnsignedShort()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->read()I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-ltz v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0

    .line 120
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int p1, p1

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/MemoryTTFDataStream;->currentPosition:I

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal seek position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
