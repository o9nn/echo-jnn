.class final Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;
.super Ljava/io/FilterOutputStream;
.source "ASCII85OutputStream.java"


# static fields
.field private static final NEWLINE:C = '\n'

.field private static final OFFSET:C = '!'

.field private static final Z:C = 'z'


# instance fields
.field private count:I

.field private flushed:Z

.field private indata:[B

.field private lineBreak:I

.field private maxline:I

.field private outdata:[B

.field private terminator:C


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x48

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->maxline:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->count:I

    const/4 p1, 0x4

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->indata:[B

    const/4 p1, 0x5

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->flushed:Z

    const/16 p1, 0x7e

    iput-char p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->terminator:C

    return-void
.end method

.method private transformASCII85()V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->indata:[B

    const/4 v2, 0x0

    .line 119
    aget-byte v3, v1, v2

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x10

    const/4 v5, 0x2

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    int-to-long v7, v1

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    const/16 v3, 0x7a

    .line 123
    aput-byte v3, v1, v2

    .line 124
    aput-byte v2, v1, v4

    return-void

    :cond_0
    const-wide/32 v9, 0x31c84b1

    .line 128
    div-long v11, v7, v9

    iget-object v1, v0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    const-wide/16 v13, 0x21

    add-long v5, v11, v13

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 129
    aput-byte v5, v1, v2

    mul-long/2addr v11, v9

    sub-long/2addr v7, v11

    const-wide/32 v5, 0x95eed

    .line 132
    div-long v9, v7, v5

    add-long v11, v9, v13

    long-to-int v2, v11

    int-to-byte v2, v2

    .line 133
    aput-byte v2, v1, v4

    mul-long/2addr v9, v5

    sub-long/2addr v7, v9

    const-wide/16 v4, 0x1c39

    .line 136
    div-long v9, v7, v4

    add-long v11, v9, v13

    long-to-int v2, v11

    int-to-byte v2, v2

    const/4 v3, 0x2

    .line 137
    aput-byte v2, v1, v3

    mul-long/2addr v9, v4

    sub-long/2addr v7, v9

    const-wide/16 v2, 0x55

    .line 140
    div-long v4, v7, v2

    add-long/2addr v4, v13

    long-to-int v4, v4

    int-to-byte v4, v4

    const/4 v5, 0x3

    .line 141
    aput-byte v4, v1, v5

    .line 143
    rem-long/2addr v7, v2

    add-long/2addr v7, v13

    long-to-int v2, v7

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->flush()V

    .line 239
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->indata:[B

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->indata:[B

    .line 244
    throw v1
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->flushed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->count:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_4

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->indata:[B

    .line 195
    aput-byte v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->transformASCII85()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    .line 198
    aget-byte v0, v0, v2

    const/16 v4, 0x7a

    if-ne v0, v4, :cond_2

    move v0, v2

    :goto_1
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    const/16 v5, 0x21

    .line 202
    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_2
    iget v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->count:I

    add-int/2addr v4, v3

    if-ge v0, v4, :cond_4

    .line 207
    iget-object v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    aget-byte v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    if-nez v4, :cond_3

    .line 210
    iget-object v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write(I)V

    iget v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->maxline:I

    iput v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    if-nez v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->out:Ljava/io/OutputStream;

    iget-char v4, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->terminator:C

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 220
    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->out:Ljava/io/OutputStream;

    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 221
    iget-object v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iput v2, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->count:I

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->maxline:I

    iput v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    iput-boolean v3, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->flushed:Z

    .line 225
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public getLineLength()I
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->maxline:I

    return v0
.end method

.method public getTerminator()C
    .locals 1

    iget-char v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->terminator:C

    return v0
.end method

.method public setLineLength(I)V
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    :cond_0
    iput p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->maxline:I

    return-void
.end method

.method public setTerminator(C)V
    .locals 1

    const/16 v0, 0x76

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_0

    iput-char p1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->terminator:C

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Terminator must be 118-126 excluding z"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->flushed:Z

    iget-object v1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->indata:[B

    iget v2, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->count:I

    int-to-byte p1, p1

    .line 157
    aput-byte p1, v1, v2

    const/4 p1, 0x4

    if-ge v3, p1, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->transformASCII85()V

    move p1, v0

    :goto_0
    const/4 v1, 0x5

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    .line 165
    aget-byte v1, v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->outdata:[B

    aget-byte v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    if-nez v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    iget v1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->maxline:I

    iput v1, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->lineBreak:I

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iput v0, p0, Lcom/tom_roush/pdfbox/filter/ASCII85OutputStream;->count:I

    return-void
.end method
