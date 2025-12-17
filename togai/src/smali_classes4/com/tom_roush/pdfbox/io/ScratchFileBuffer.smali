.class Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;
.super Ljava/lang/Object;
.source "ScratchFileBuffer.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/io/RandomAccess;


# instance fields
.field private currentPage:[B

.field private currentPageContentChanged:Z

.field private currentPageOffset:J

.field private currentPagePositionInPageIndexes:I

.field private pageCount:I

.field private pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

.field private pageIndexes:[I

.field private final pageSize:I

.field private positionInPage:I

.field private size:J


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/io/ScratchFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageContentChanged:Z

    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    iput v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageCount:I

    .line 77
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/ScratchFile;->checkClosed()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    .line 81
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/io/ScratchFile;->getPageSize()I

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageSize:I

    .line 83
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->addPage()V

    return-void
.end method

.method private addPage()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageCount:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    .line 108
    array-length v3, v2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_2

    .line 110
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    .line 112
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 114
    array-length v1, v2

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum buffer size reached."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    :goto_0
    new-array v1, v1, [I

    .line 121
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    .line 125
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->getNewPage()I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageCount:I

    .line 127
    aput v0, v1, v2

    iput v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    int-to-long v0, v2

    iget v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageSize:I

    int-to-long v5, v3

    mul-long/2addr v0, v5

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageCount:I

    .line 131
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    iput v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->checkClosed()V

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Buffer already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureAvailableBytesInPage(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    iget v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageSize:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageContentChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    iget v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    .line 169
    aget v3, v3, v4

    iget-object v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    invoke-virtual {v0, v3, v4}, Lcom/tom_roush/pdfbox/io/ScratchFile;->writePage(I[B)V

    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageContentChanged:Z

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageCount:I

    if-ge v3, v4, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    .line 176
    aget v0, v3, v0

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/io/ScratchFile;->readPage(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    iget p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    int-to-long v3, p1

    iget p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageSize:I

    int-to-long v5, p1

    mul-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    iput v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->addPage()V

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    iget v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    .line 407
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final clear()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 263
    invoke-virtual {v0, v1, v3, v2}, Lcom/tom_roush/pdfbox/io/ScratchFile;->markPagesAsFree([III)V

    iput v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageCount:I

    iget v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    iget-object v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    .line 269
    aget v4, v4, v3

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/io/ScratchFile;->readPage(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    iput v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    :cond_0
    iput v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    iput-boolean v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageContentChanged:Z

    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageCount:I

    const/4 v3, 0x0

    .line 488
    invoke-virtual {v0, v1, v3, v2}, Lcom/tom_roush/pdfbox/io/ScratchFile;->markPagesAsFree([III)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    iput v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Lcom/tom_roush/pdfbox/android/PDFBoxConfig;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "ScratchFileBuffer not closed!"

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 524
    throw v0
.end method

.method public getPosition()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

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

    .line 396
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

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

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    return-wide v0
.end method

.method public peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 356
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->rewind(I)V

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

    .line 416
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->ensureAvailableBytesInPage(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    iget v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    .line 429
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 426
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpectedly no bytes available for read in buffer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 438
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    int-to-long v3, v2

    add-long/2addr v3, v0

    iget-wide v5, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v3, p3

    int-to-long v7, v2

    add-long/2addr v0, v7

    sub-long/2addr v5, v0

    .line 454
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lez p3, :cond_2

    .line 461
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->ensureAvailableBytesInPage(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageSize:I

    iget v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    sub-int/2addr v2, v3

    .line 467
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    iget v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    .line 469
    invoke-static {v3, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    add-int/2addr v1, v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    goto :goto_0

    .line 464
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpectedly no bytes available for read in buffer."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1
.end method

.method public readFully(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    new-array v0, p1, [B

    const/4 v1, 0x0

    :cond_0
    sub-int v2, p1, v1

    .line 380
    invoke-virtual {p0, v0, v1, v2}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    return-object v0

    .line 383
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

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 367
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->seek(J)V

    return-void
.end method

.method public seek(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->checkClosed()V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageSize:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    sub-long/2addr p1, v2

    long-to-int p1, p1

    iput p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageContentChanged:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    iget v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    .line 321
    aget v3, v3, v4

    iget-object v4, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    invoke-virtual {v2, v3, v4}, Lcom/tom_roush/pdfbox/io/ScratchFile;->writePage(I[B)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageContentChanged:Z

    :cond_1
    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageSize:I

    int-to-long v3, v2

    .line 325
    div-long v3, p1, v3

    long-to-int v3, v3

    int-to-long v4, v2

    .line 326
    rem-long v4, p1, v4

    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageHandler:Lcom/tom_roush/pdfbox/io/ScratchFile;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageIndexes:[I

    .line 331
    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/io/ScratchFile;->readPage(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    iput v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPagePositionInPageIndexes:I

    int-to-long v0, v3

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    :goto_0
    return-void

    .line 306
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative seek offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_4
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public write(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->checkClosed()V

    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->ensureAvailableBytesInPage(Z)Z

    iget-object v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    int-to-byte p1, p1

    .line 204
    aput-byte p1, v1, v2

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageContentChanged:Z

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    int-to-long v4, v3

    add-long/2addr v4, v0

    iget-wide v6, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    cmp-long p1, v4, v6

    if-lez p1, :cond_0

    int-to-long v2, v3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    :cond_0
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

    .line 219
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->checkClosed()V

    :goto_0
    if-lez p3, :cond_0

    const/4 v0, 0x1

    .line 235
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->ensureAvailableBytesInPage(Z)Z

    iget v1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->pageSize:I

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    sub-int/2addr v1, v2

    .line 237
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPage:[B

    iget v3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    .line 239
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageContentChanged:Z

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->currentPageOffset:J

    iget p3, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->positionInPage:I

    int-to-long v0, p3

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/io/ScratchFileBuffer;->size:J

    :cond_1
    return-void
.end method
