.class public final Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;
.super Ljava/lang/Object;
.source "RandomAccessMemoryCache.java"


# static fields
.field private static final BLOCK_MASK:I = 0x1ff

.field private static final BLOCK_SHIFT:I = 0x9

.field private static final BLOCK_SIZE:I = 0x200


# instance fields
.field private blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private firstUndisposed:I

.field private length:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->firstUndisposed:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    return-void
.end method

.method private grow(J)V
    .locals 4

    const/16 v0, 0x9

    shr-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 52
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    return-void
.end method


# virtual methods
.method public appendData(Ljava/io/InputStream;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    int-to-long v3, p2

    add-long/2addr v3, v1

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    .line 174
    invoke-direct {p0, v3, v4}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->grow(J)V

    const/16 v3, 0x9

    shr-long v3, v1, v3

    long-to-int v3, v3

    const-wide/16 v4, 0x1ff

    and-long/2addr v1, v4

    long-to-int v1, v1

    move v2, v0

    :goto_0
    if-lez p2, :cond_3

    iget-object v4, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    rsub-int v5, v1, 0x200

    .line 183
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr p2, v5

    add-int/2addr v2, v5

    :goto_1
    if-lez v5, :cond_2

    .line 188
    invoke-virtual {p1, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_1

    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    sub-int/2addr p2, v2

    int-to-long p1, p2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    return v2

    :cond_1
    sub-int/2addr v5, v6

    add-int/2addr v1, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return v2
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    return-void
.end method

.method public freeBefore(J)V
    .locals 2

    const/16 v0, 0x9

    shr-long/2addr p1, v0

    long-to-int p1, p1

    iget p2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->firstUndisposed:I

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ge p2, p1, :cond_1

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->firstUndisposed:I

    return-void
.end method

.method public getData(J)I
    .locals 3

    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    const/16 v1, 0x9

    shr-long v1, p1, v1

    long-to-int v1, v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-wide/16 v1, 0x1ff

    and-long/2addr p1, v1

    long-to-int p1, p1

    .line 97
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getData([BIIJ)I
    .locals 4

    .line 101
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    if-ltz p3, :cond_3

    if-ltz p2, :cond_3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    cmp-long v2, p4, v0

    if-ltz v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    int-to-long v2, p3

    add-long/2addr v2, p4

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    sub-long/2addr v0, p4

    long-to-int p3, v0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    const/16 v1, 0x9

    shr-long v1, p4, v1

    long-to-int v1, v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-wide/16 v1, 0x1ff

    and-long/2addr p4, v1

    long-to-int p4, p4

    rsub-int p5, p4, 0x200

    .line 116
    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 117
    invoke-static {v0, p4, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p3

    .line 102
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getData(Ljava/io/OutputStream;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    add-long/2addr v0, p3

    iget-wide v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const/16 v0, 0x9

    shr-long v0, p3, v0

    long-to-int v0, v0

    const-wide/16 v1, 0x1ff

    and-long/2addr p3, v1

    long-to-int p3, p3

    iget p4, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->firstUndisposed:I

    if-lt v0, p4, :cond_1

    :goto_0
    if-lez p2, :cond_0

    iget-object p4, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    rsub-int v1, p3, 0x200

    .line 219
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 220
    invoke-virtual {p1, p4, p3, v1}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v1

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    return-void

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "The requested data are already disposed"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Argument out of cache"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    return-wide v0
.end method

.method public putData(IJ)V
    .locals 3

    iget-wide v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 60
    invoke-direct {p0, p2, p3}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->grow(J)V

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    const/16 v1, 0x9

    shr-long v1, p2, v1

    long-to-int v1, v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-wide/16 v1, 0x1ff

    and-long/2addr p2, v1

    long-to-int p2, p2

    int-to-byte p1, p1

    .line 64
    aput-byte p1, v0, p2

    return-void
.end method

.method public putData([BIIJ)V
    .locals 4

    .line 68
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    if-ltz p3, :cond_3

    if-ltz p2, :cond_3

    if-nez p3, :cond_0

    return-void

    :cond_0
    int-to-long v0, p3

    add-long/2addr v0, p4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->length:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->grow(J)V

    :cond_1
    :goto_0
    if-lez p3, :cond_2

    iget-object v0, p0, Lcom/tom_roush/harmony/javax/imageio/stream/RandomAccessMemoryCache;->blocks:Ljava/util/ArrayList;

    const/16 v1, 0x9

    shr-long v1, p4, v1

    long-to-int v1, v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-wide/16 v1, 0x1ff

    and-long/2addr v1, p4

    long-to-int v1, v1

    rsub-int v2, v1, 0x200

    .line 83
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 84
    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v0, v2

    add-long/2addr p4, v0

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_2
    return-void

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
