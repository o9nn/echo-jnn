.class public Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;
.super Ljava/lang/Object;
.source "RandomAccessBuffer.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/io/RandomAccess;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x400


# instance fields
.field private bufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private bufferListIndex:I

.field private bufferListMaxIndex:I

.field private chunkSize:I

.field private currentBuffer:[B

.field private currentBufferPointer:I

.field private pointer:J

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    .line 55
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    .line 66
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    .line 67
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 106
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0, v0, v2, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->write([BII)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->seek(J)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 85
    array-length v1, p1

    iput v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    if-eqz v0, :cond_0

    return-void

    .line 437
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RandomAccessBuffer already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expandBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    if-le v0, v1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->nextBuffer()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    .line 407
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 408
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    :goto_0
    return-void
.end method

.method private nextBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    .line 425
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    return-void

    .line 422
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No more chunks available, end of buffer reached"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readRemainingBytes([BII)I
    .locals 6

    int-to-long v0, p3

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    iget-wide v4, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    sub-long/2addr v2, v4

    .line 263
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-lt p3, v0, :cond_1

    iget-object p3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    .line 273
    invoke-static {p3, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    int-to-long v1, v0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    return v0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    .line 282
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    return p3
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 162
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    .line 163
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 164
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    iput v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    iput v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    return-void
.end method

.method public clone()Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;
    .locals 6

    .line 116
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;-><init>(I)V

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 121
    array-length v3, v2

    new-array v3, v3, [B

    .line 122
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 123
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 127
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    :goto_1
    iget-wide v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    iput-wide v1, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iput v1, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    iput-wide v1, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    iput v1, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    iput v1, v0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->clone()Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 149
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    iput v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    return-void
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEOF()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    return-wide v0
.end method

.method public peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 479
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->rewind(I)V

    :cond_0
    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    if-lt v0, v2, :cond_2

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    iget v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    .line 230
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    :cond_2
    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    .line 235
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 520
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 249
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->readRemainingBytes([BII)I

    move-result v0

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->available()I

    move-result v1

    if-lez v1, :cond_2

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 252
    invoke-direct {p0, p1, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->readRemainingBytes([BII)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    if-ne v1, v2, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->nextBuffer()V

    goto :goto_0

    :cond_2
    return v0
.end method

.method public readFully(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    new-array v0, p1, [B

    const/4 v1, 0x0

    :cond_0
    sub-int v2, p1, v1

    .line 504
    invoke-virtual {p0, v0, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    return-object v0

    .line 507
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public rewind(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->checkClosed()V

    .line 491
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->getPosition()J

    move-result-wide v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->seek(J)V

    return-void
.end method

.method public seek(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->checkClosed()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    int-to-long v1, v0

    .line 187
    div-long v1, p1, v1

    long-to-int v1, v1

    iput v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    int-to-long v2, v0

    .line 188
    rem-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 189
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListMaxIndex:I

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferListIndex:I

    iget-object p2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->bufferList:Ljava/util/List;

    .line 196
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    iget-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    int-to-long v0, v0

    .line 197
    rem-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->checkClosed()V

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    const-string v2, "RandomAccessBuffer overflow"

    const-wide/32 v3, 0x7fffffff

    if-lt v0, v1, :cond_1

    iget-wide v5, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    int-to-long v0, v1

    add-long/2addr v5, v0

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->expandBuffer()V

    goto :goto_0

    .line 312
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    int-to-byte p1, p1

    .line 316
    aput-byte p1, v0, v1

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    iget-wide v6, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    cmp-long p1, v0, v6

    if-lez p1, :cond_2

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    :cond_2
    iget p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    if-lt v5, p1, :cond_4

    int-to-long v5, p1

    add-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-gez p1, :cond_3

    .line 329
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->expandBuffer()V

    goto :goto_1

    .line 327
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 340
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget v4, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    iget v5, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    sub-int/2addr v4, v5

    if-lt p3, v4, :cond_3

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v0, v6

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    .line 359
    invoke-static {p1, p2, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    int-to-long v0, p3

    long-to-int p3, v0

    iget v4, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    .line 363
    div-int/2addr p3, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->expandBuffer()V

    iget-object v5, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    iget v6, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    iget v7, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    .line 367
    invoke-static {p1, p2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    add-int/2addr p2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    int-to-long v4, p3

    iget p3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->chunkSize:I

    int-to-long v6, p3

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p3, v0, v4

    if-ltz p3, :cond_4

    .line 374
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->expandBuffer()V

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    iget v4, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    long-to-int v5, v0

    .line 377
    invoke-static {p1, p2, p3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    long-to-int p1, v0

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    goto :goto_1

    .line 356
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "RandomAccessBuffer overflow"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBuffer:[B

    .line 384
    invoke-static {p1, p2, v0, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->currentBufferPointer:I

    :cond_4
    :goto_1
    iget-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->pointer:J

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_5

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBuffer;->size:J

    :cond_5
    return-void
.end method
