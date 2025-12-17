.class public Lcom/fasterxml/jackson/core/io/IOContext;
.super Ljava/lang/Object;
.source "IOContext.java"


# instance fields
.field protected _base64Buffer:[B

.field protected final _bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

.field protected _concatCBuffer:[C

.field protected final _contentReference:Lcom/fasterxml/jackson/core/io/ContentReference;

.field protected _encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

.field protected final _managedResource:Z

.field protected _nameCopyBuffer:[C

.field protected _readIOBuffer:[B

.field protected final _sourceRef:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected _tokenCBuffer:[C

.field protected _writeEncodingBuffer:[B


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_contentReference:Lcom/fasterxml/jackson/core/io/ContentReference;

    .line 122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/io/ContentReference;->getRawContent()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_sourceRef:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_managedResource:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;Ljava/lang/Object;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/ContentReference;->rawReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/IOContext;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;Lcom/fasterxml/jackson/core/io/ContentReference;Z)V

    return-void
.end method

.method private wrongBuf()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer smaller than original"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final _verifyAlloc(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 350
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to call same allocXxx() method second time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final _verifyRelease([B[B)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 355
    array-length p1, p1

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/IOContext;->wrongBuf()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected final _verifyRelease([C[C)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 360
    array-length p1, p1

    array-length p2, p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/IOContext;->wrongBuf()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public allocBase64Buffer()[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    .line 243
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x3

    .line 244
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    return-object v0
.end method

.method public allocBase64Buffer(I)[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    .line 258
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x3

    .line 259
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    return-object p1
.end method

.method public allocConcatBuffer()[C
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    .line 274
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x1

    .line 275
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    return-object v0
.end method

.method public allocNameCopyBuffer(I)[C
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    .line 279
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x3

    .line 280
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    return-object p1
.end method

.method public allocReadIOBuffer()[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    .line 187
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    return-object v0
.end method

.method public allocReadIOBuffer(I)[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    .line 202
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x0

    .line 203
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    return-object p1
.end method

.method public allocTokenBuffer()[C
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    .line 263
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    return-object v0
.end method

.method public allocTokenBuffer(I)[C
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    .line 269
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x0

    .line 270
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(II)[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    return-object p1
.end method

.method public allocWriteEncodingBuffer()[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    .line 215
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x1

    .line 216
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    return-object v0
.end method

.method public allocWriteEncodingBuffer(I)[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    .line 230
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x1

    .line 231
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    return-object p1
.end method

.method public constructTextBuffer()Lcom/fasterxml/jackson/core/util/TextBuffer;
    .locals 2

    .line 175
    new-instance v0, Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    return-object v0
.end method

.method public contentReference()Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_contentReference:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method

.method public getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-object v0
.end method

.method public getSourceReference()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public isResourceManaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_managedResource:Z

    return v0
.end method

.method public releaseBase64Buffer([B)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    .line 311
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x3

    .line 313
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(I[B)V

    :cond_0
    return-void
.end method

.method public releaseConcatBuffer([C)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    .line 328
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x1

    .line 330
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(I[C)V

    :cond_0
    return-void
.end method

.method public releaseNameCopyBuffer([C)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    .line 337
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x3

    .line 339
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(I[C)V

    :cond_0
    return-void
.end method

.method public releaseReadIOBuffer([B)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(I[B)V

    :cond_0
    return-void
.end method

.method public releaseTokenBuffer([C)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    .line 319
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x0

    .line 321
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(I[C)V

    :cond_0
    return-void
.end method

.method public releaseWriteEncodingBuffer([B)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    .line 303
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    const/4 v1, 0x1

    .line 305
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(I[B)V

    :cond_0
    return-void
.end method

.method public setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-void
.end method

.method public withEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/io/IOContext;
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-object p0
.end method
