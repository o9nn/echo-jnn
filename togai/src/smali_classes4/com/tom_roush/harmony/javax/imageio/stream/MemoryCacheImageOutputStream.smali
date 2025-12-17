.class public Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;
.super Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;
.source "MemoryCacheImageOutputStream.java"


# instance fields
.field os:Ljava/io/OutputStream;

.field ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;-><init>()V

    .line 27
    new-instance v0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    invoke-direct {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->os:Ljava/io/OutputStream;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stream == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->length()J

    move-result-wide v0

    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->seek(J)V

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->flushBefore(J)V

    .line 99
    invoke-super {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->close()V

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 100
    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->close()V

    return-void
.end method

.method public flushBefore(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->getFlushedPosition()J

    move-result-wide v0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageOutputStreamImpl;->flushBefore(J)V

    .line 108
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->getFlushedPosition()J

    move-result-wide p1

    sub-long v2, p1, v0

    long-to-int v2, v2

    iget-object v3, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    iget-object v4, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->os:Ljava/io/OutputStream;

    .line 111
    invoke-virtual {v3, v4, v2, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->getData(Ljava/io/OutputStream;IJ)V

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 112
    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->freeBefore(J)V

    iget-object p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->os:Ljava/io/OutputStream;

    .line 114
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public isCached()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCachedFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCachedMemory()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 76
    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->bitOffset:I

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 56
    iget-wide v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->getData(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 58
    iget-wide v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->bitOffset:I

    iget-object v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 67
    iget-wide v5, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->getData([BIIJ)I

    move-result p1

    if-lez p1, :cond_0

    .line 69
    iget-wide p2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    :cond_0
    return p1
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->flushBits()V

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 40
    iget-wide v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->putData(IJ)V

    .line 41
    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->flushBits()V

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 48
    iget-wide v4, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->putData([BIIJ)V

    .line 49
    iget-wide p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->streamPos:J

    return-void
.end method
