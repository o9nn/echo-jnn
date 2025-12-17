.class public final Lcom/fasterxml/jackson/core/io/MergedStream;
.super Ljava/io/InputStream;
.source "MergedStream.java"


# instance fields
.field private _b:[B

.field private final _ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

.field private final _end:I

.field private final _in:Ljava/io/InputStream;

.field private _ptr:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    iput p4, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    iput p5, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    return-void
.end method

.method private _free()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ctxt:Lcom/fasterxml/jackson/core/io/IOContext;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 38
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 43
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 47
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 52
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    .line 57
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    if-lt v2, v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    :cond_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

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

    .line 67
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/core/io/MergedStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_0

    move p3, v1

    .line 77
    :cond_0
    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    iget p2, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    if-lt p1, p2, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    :cond_1
    return p3

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 84
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 89
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_b:[B

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_end:I

    iget v3, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    sub-int/2addr v0, v3

    int-to-long v4, v0

    cmp-long v0, v4, p1

    if-lez v0, :cond_0

    long-to-int v0, p1

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_ptr:I

    return-wide p1

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/MergedStream;->_free()V

    sub-long/2addr p1, v4

    goto :goto_0

    :cond_1
    move-wide v4, v1

    :goto_0
    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/MergedStream;->_in:Ljava/io/InputStream;

    .line 108
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    add-long/2addr v4, p1

    :cond_2
    return-wide v4
.end method
