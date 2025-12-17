.class public final Lcom/tom_roush/pdfbox/cos/COSOutputStream;
.super Ljava/io/FilterOutputStream;
.source "COSOutputStream.java"


# instance fields
.field private buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/filter/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/io/ScratchFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/filter/Filter;",
            ">;",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/io/OutputStream;",
            "Lcom/tom_roush/pdfbox/io/ScratchFile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p3}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->filters:Ljava/util/List;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p4, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    .line 62
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/io/ScratchFile;->createBuffer()Lcom/tom_roush/pdfbox/io/RandomAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->filters:Ljava/util/List;

    .line 129
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 131
    new-instance v2, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    invoke-direct {v2, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v1, :cond_0

    :try_start_2
    iget-object v3, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->filters:Ljava/util/List;

    .line 140
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/filter/Filter;

    iget-object v4, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/tom_roush/pdfbox/filter/Filter;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->scratchFile:Lcom/tom_roush/pdfbox/io/ScratchFile;

    .line 144
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/io/ScratchFile;->createBuffer()Lcom/tom_roush/pdfbox/io/RandomAccess;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 147
    :try_start_3
    new-instance v4, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;

    invoke-direct {v4, v3}, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;-><init>(Lcom/tom_roush/pdfbox/io/RandomAccessWrite;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v5, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->filters:Ljava/util/List;

    .line 150
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/filter/Filter;

    iget-object v6, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->parameters:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {v5, v2, v4, v6, v1}, Lcom/tom_roush/pdfbox/filter/Filter;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    iget-object v4, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iput-object v3, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    :try_start_7
    invoke-interface {v4}, Lcom/tom_roush/pdfbox/io/RandomAccess;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 169
    :goto_1
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 154
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 155
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    .line 163
    :goto_2
    :try_start_a
    invoke-interface {v3}, Lcom/tom_roush/pdfbox/io/RandomAccess;->close()V

    .line 164
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v1

    .line 169
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 170
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :cond_1
    :try_start_c
    iget-object v1, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    .line 175
    invoke-interface {v1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->close()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    goto :goto_3

    :catchall_4
    move-exception v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccess;->close()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    .line 177
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 182
    :cond_2
    :goto_3
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void

    :catchall_5
    move-exception v0

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 183
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->write(I)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccess;->write([B)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/cos/COSOutputStream;->buffer:Lcom/tom_roush/pdfbox/io/RandomAccess;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1, p2, p3}, Lcom/tom_roush/pdfbox/io/RandomAccess;->write([BII)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    :goto_0
    return-void
.end method
