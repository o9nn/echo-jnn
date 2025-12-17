.class Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "EndstreamOutputStream.java"


# instance fields
.field private hasCR:Z

.field private hasLF:Z

.field private mustFilter:Z

.field private pos:I


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasCR:Z

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasLF:Z

    iput p1, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->pos:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->mustFilter:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasCR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasLF:Z

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 132
    invoke-super {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    iget v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->pos:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasCR:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasLF:Z

    .line 137
    invoke-super {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->pos:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-nez v0, :cond_2

    if-le p3, v3, :cond_2

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->mustFilter:Z

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_2

    .line 67
    aget-byte v5, p1, v0

    const/16 v6, 0x9

    if-lt v5, v6, :cond_1

    if-le v5, v3, :cond_0

    const/16 v6, 0x20

    if-ge v5, v6, :cond_0

    if-eq v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->mustFilter:Z

    :cond_2
    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->mustFilter:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasCR:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasCR:Z

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasLF:Z

    if-nez v0, :cond_3

    if-ne p3, v4, :cond_3

    .line 82
    aget-byte v0, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_3

    .line 87
    monitor-exit p0

    return-void

    .line 89
    :cond_3
    :try_start_1
    invoke-super {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasLF:Z

    if-eqz v0, :cond_5

    .line 93
    invoke-super {p0, v3}, Ljava/io/BufferedOutputStream;->write(I)V

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasLF:Z

    :cond_5
    if-lez p3, :cond_8

    add-int v0, p2, p3

    sub-int/2addr v0, v4

    .line 99
    aget-byte v0, p1, v0

    if-ne v0, v1, :cond_6

    iput-boolean v4, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasCR:Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_8

    iput-boolean v4, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasLF:Z

    add-int/lit8 v0, p3, -0x1

    if-lez v0, :cond_7

    add-int v2, p2, v0

    sub-int/2addr v2, v4

    .line 108
    aget-byte v2, p1, v2

    if-ne v2, v1, :cond_7

    iput-boolean v4, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->hasCR:Z

    add-int/lit8 p3, p3, -0x2

    goto :goto_2

    :cond_7
    move p3, v0

    .line 116
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget p1, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/tom_roush/pdfbox/pdfparser/EndstreamOutputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
