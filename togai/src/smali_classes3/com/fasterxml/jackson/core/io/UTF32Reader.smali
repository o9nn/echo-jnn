.class public Lcom/fasterxml/jackson/core/io/UTF32Reader;
.super Ljava/io/Reader;
.source "UTF32Reader.java"


# static fields
.field protected static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff

.field protected static final NC:C


# instance fields
.field protected final _bigEndian:Z

.field protected _buffer:[B

.field protected _byteCount:I

.field protected _charCount:I

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected _in:Ljava/io/InputStream;

.field protected _length:I

.field protected final _managedBuffers:Z

.field protected _ptr:I

.field protected _surrogate:C

.field protected _tmpBuf:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iput p4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    iput p5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iput-boolean p6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    return-void
.end method

.method private freeBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_0
    return-void
.end method

.method private loadMore(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    const/4 v3, 0x1

    if-lez p1, :cond_2

    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-lez v0, :cond_1

    .line 217
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    :cond_1
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    .line 225
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ge p1, v3, :cond_5

    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    if-gez p1, :cond_4

    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz p1, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    :cond_3
    return v1

    .line 235
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    :cond_5
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    :goto_0
    iget p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_9

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 242
    array-length v4, v2

    sub-int/2addr v4, p1

    invoke-virtual {v1, v2, p1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ge p1, v3, :cond_8

    if-gez p1, :cond_7

    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v1, :cond_6

    .line 246
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    :cond_6
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    .line 248
    invoke-direct {p0, v1, v0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportUnexpectedEOF(II)V

    .line 251
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    :cond_8
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_0

    :cond_9
    return v3

    :cond_a
    :goto_1
    return v1
.end method

.method private reportBounds([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 276
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "read(buf,%d,%d), cbuf[%d]"

    .line 274
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportInvalid(IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr v1, p2

    .line 193
    new-instance p2, Ljava/io/CharConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UTF-32 character 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " at char #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", byte #"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private reportStrangeStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportUnexpectedEOF(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    .line 187
    new-instance v2, Ljava/io/CharConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", needed "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", at char #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", byte #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    .line 79
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    .line 80
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    .line 99
    aget-char v0, v0, v2

    return v0
.end method

.method public read([CII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    return p3

    :cond_1
    if-ltz p2, :cond_2

    add-int v0, p2, p3

    .line 109
    array-length v2, p1

    if-le v0, v2, :cond_3

    .line 110
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportBounds([CII)V

    :cond_3
    add-int/2addr p3, p2

    iget-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    add-int/lit8 v1, p2, 0x1

    .line 118
    aput-char v0, p1, p2

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_6

    .line 126
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->loadMore(I)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    sub-int/2addr v0, v1

    .line 131
    invoke-direct {p0, v0, v2}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportUnexpectedEOF(II)V

    :cond_6
    move v1, p2

    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v0, v2

    :goto_1
    if-ge v1, p3, :cond_b

    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-gt v2, v0, :cond_b

    iget-boolean v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 145
    aget-byte v4, v3, v2

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    .line 146
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v2, 0x3

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    .line 148
    aget-byte v4, v3, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    .line 149
    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x3

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v5

    move v7, v4

    move v4, v3

    move v3, v7

    :goto_2
    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-eqz v4, :cond_a

    const v2, 0xffff

    and-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x1

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    if-le v2, v5, :cond_8

    sub-int v2, v1, p2

    const v4, 0x10ffff

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " (above 0x%08x)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-direct {p0, v3, v2, v4}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V

    :cond_8
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v4, v3, 0xa

    const v5, 0xd800

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 162
    aput-char v4, p1, v1

    and-int/lit16 v1, v3, 0x3ff

    const v4, 0xdc00

    or-int/2addr v1, v4

    if-lt v2, p3, :cond_9

    int-to-char p1, v3

    iput-char p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    move v1, v2

    goto :goto_3

    :cond_9
    move v3, v1

    move v1, v2

    :cond_a
    add-int/lit8 v2, v1, 0x1

    int-to-char v3, v3

    .line 171
    aput-char v3, p1, v1

    move v1, v2

    goto/16 :goto_1

    :cond_b
    :goto_3
    sub-int/2addr v1, p2

    iget p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    return v1
.end method
