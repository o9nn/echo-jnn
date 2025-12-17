.class public Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;
.super Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;
.source "MemoryCacheImageInputStream.java"


# instance fields
.field private is:Ljava/io/InputStream;

.field private ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;-><init>()V

    .line 27
    new-instance v0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    invoke-direct {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->is:Ljava/io/InputStream;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "stream == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-super {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 103
    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->close()V

    return-void
.end method

.method public flushBefore(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-super {p0, p1, p2}, Lcom/tom_roush/harmony/javax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    iget-object p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 110
    invoke-virtual {p0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->getFlushedPosition()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->freeBefore(J)V

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

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->bitOffset:I

    .line 43
    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    iget-object v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    invoke-virtual {v2}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-ltz v0, :cond_0

    .line 45
    iget-wide v3, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v3, v1

    long-to-int v0, v3

    iget-object v3, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    iget-object v4, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->is:Ljava/io/InputStream;

    .line 46
    invoke-virtual {v3, v4, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->appendData(Ljava/io/InputStream;I)I

    move-result v3

    if-ge v3, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 54
    iget-wide v3, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    invoke-virtual {v0, v3, v4}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->getData(J)I

    move-result v0

    if-ltz v0, :cond_1

    .line 57
    iget-wide v3, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->bitOffset:I

    .line 67
    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    iget-object v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    invoke-virtual {v2}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 69
    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    iget-object v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    invoke-virtual {v2}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length()J

    move-result-wide v2

    sub-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    iget-object v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->is:Ljava/io/InputStream;

    .line 70
    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->appendData(Ljava/io/InputStream;I)I

    :cond_0
    iget-object v3, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->ramc:Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;

    .line 73
    iget-wide v7, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->getData([BIIJ)I

    move-result p1

    if-lez p1, :cond_1

    .line 76
    iget-wide p2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->streamPos:J

    :cond_1
    return p1
.end method
