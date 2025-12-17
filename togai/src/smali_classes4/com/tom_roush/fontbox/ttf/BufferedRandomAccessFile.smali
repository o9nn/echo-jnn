.class public Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "BufferedRandomAccessFile.java"


# instance fields
.field private bufend:I

.field private final buffer:[B

.field private bufpos:I

.field private realpos:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufend:I

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->realpos:J

    .line 83
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->buffer:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufend:I

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->realpos:J

    .line 64
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->buffer:[B

    return-void
.end method

.method private fillBuffer()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->buffer:[B

    .line 115
    invoke-super {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->realpos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->realpos:J

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufend:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    :cond_0
    return v0
.end method

.method private invalidate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufend:I

    iput v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    .line 135
    invoke-super {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->realpos:J

    return-void
.end method


# virtual methods
.method public getFilePointer()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->realpos:J

    iget v2, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufend:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    iget v1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufend:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->fillBuffer()I

    move-result v0

    if-gez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufend:I

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->buffer:[B

    iget v1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    .line 101
    aget-byte v0, v0, v1

    add-int/lit16 v0, v0, 0x100

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufend:I

    iget v2, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->buffer:[B

    .line 153
    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    add-int/2addr v0, p3

    return v0

    :cond_0
    iget-object v3, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->buffer:[B

    .line 158
    invoke-static {v3, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    iget v2, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    .line 161
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->fillBuffer()I

    move-result v2

    if-lez v2, :cond_1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    return v0
.end method

.method public seek(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->realpos:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufend:I

    if-gt v0, v1, :cond_0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->bufpos:I

    goto :goto_0

    .line 199
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 200
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;->invalidate()V

    :goto_0
    return-void
.end method
