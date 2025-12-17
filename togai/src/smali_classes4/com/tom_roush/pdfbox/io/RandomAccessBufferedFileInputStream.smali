.class public Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;
.super Ljava/io/InputStream;
.source "RandomAccessBufferedFileInputStream.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/io/RandomAccessRead;


# static fields
.field private static final TMP_FILE_PREFIX:Ljava/lang/String; = "tmpPDFBox"


# instance fields
.field private curPage:[B

.field private curPageOffset:J

.field private final fileLength:J

.field private fileOffset:J

.field private isClosed:Z

.field private lastRemovedCachePage:[B

.field private maxCachedPages:I

.field private offsetWithinPage:I

.field private final pageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private pageOffsetMask:J

.field private pageSize:I

.field private pageSizeShift:I

.field private final raFile:Ljava/io/RandomAccessFile;

.field private tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSizeShift:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    iput v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    const-wide/16 v1, -0x1

    shl-long v3, v1, v0

    iput-wide v3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageOffsetMask:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->maxCachedPages:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->lastRemovedCachePage:[B

    .line 55
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream$1;

    iget v3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->maxCachedPages:I

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream$1;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;IFZ)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageCache:Ljava/util/Map;

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPageOffset:J

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    .line 73
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPage:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    .line 100
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileLength:J

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->seek(J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSizeShift:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    iput v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    const-wide/16 v1, -0x1

    shl-long v3, v1, v0

    iput-wide v3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageOffsetMask:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->maxCachedPages:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->lastRemovedCachePage:[B

    .line 55
    new-instance v0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream$1;

    iget v3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->maxCachedPages:I

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream$1;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;IFZ)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageCache:Ljava/util/Map;

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPageOffset:J

    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    .line 73
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPage:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    .line 114
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->createTmpFile(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->tempFile:Ljava/io/File;

    .line 115
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileLength:J

    .line 116
    new-instance p1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->tempFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {p1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->seek(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->maxCachedPages:I

    return p0
.end method

.method static synthetic access$102(Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;[B)[B
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->lastRemovedCachePage:[B

    return-object p1
.end method

.method private createTmpFile(Ljava/io/InputStream;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "tmpPDFBox"

    const-string v2, ".pdf"

    .line 125
    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    invoke-static {p1, v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-static {p1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 132
    :goto_0
    invoke-static {p1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 134
    throw v0
.end method

.method private deleteTempFile()V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private readPage()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->lastRemovedCachePage:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->lastRemovedCachePage:[B

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    .line 199
    new-array v0, v0, [B

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    sub-int/2addr v2, v1

    .line 205
    invoke-virtual {v3, v0, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileLength:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    .line 270
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    .line 308
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 309
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->deleteTempFile()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageCache:Ljava/util/Map;

    .line 310
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->isClosed:Z

    return-void
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->isClosed:Z

    return v0
.end method

.method public isEOF()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->peek()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

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

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileLength:J

    return-wide v0
.end method

.method public peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->rewind(I)V

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

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileLength:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    iget v3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    if-ne v2, v3, :cond_1

    .line 227
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->seek(J)V

    :cond_1
    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPage:[B

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    .line 231
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

    .line 237
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileLength:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    iget v3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    if-ne v2, v3, :cond_1

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->seek(J)V

    :cond_1
    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    sub-int/2addr v0, v1

    .line 253
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileLength:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    sub-long v4, v0, v2

    iget v6, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 256
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPage:[B

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    .line 259
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    iget-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    return p3
.end method

.method public readFully(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    new-array v0, p1, [B

    const/4 v1, 0x0

    :cond_0
    sub-int v2, p1, v1

    .line 344
    invoke-virtual {p0, v0, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    return-object v0

    .line 347
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

    .line 334
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->getPosition()J

    move-result-wide v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->seek(J)V

    return-void
.end method

.method public seek(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageOffsetMask:J

    and-long/2addr v0, p1

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPageOffset:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageCache:Ljava/util/Map;

    .line 168
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    .line 171
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 172
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->readPage()[B

    move-result-object v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageCache:Ljava/util/Map;

    .line 173
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPageOffset:J

    iput-object v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPage:[B

    :cond_1
    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->curPageOffset:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    iput-wide p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    return-void
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileLength:J

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    sub-long v4, v0, v2

    cmp-long v4, v4, p1

    if-gez v4, :cond_0

    sub-long p1, v0, v2

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->pageSize:I

    int-to-long v4, v0

    cmp-long v1, p1, v4

    if-gez v1, :cond_1

    iget v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    int-to-long v4, v1

    add-long/2addr v4, p1

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->offsetWithinPage:I

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->fileOffset:J

    goto :goto_0

    :cond_1
    add-long/2addr v2, p1

    .line 293
    invoke-virtual {p0, v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessBufferedFileInputStream;->seek(J)V

    :goto_0
    return-wide p1
.end method
