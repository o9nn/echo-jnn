.class public Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;
.super Ljava/io/InputStream;
.source "RandomAccessInputStream.java"


# instance fields
.field private final input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

.field private position:J


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->restorePosition()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 56
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->restorePosition()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 68
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 72
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read() returns -1, assumed position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 82
    invoke-interface {v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    .line 81
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->restorePosition()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 91
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 95
    invoke-interface {v0, p1, p2, p3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read([BII)I

    move-result p1

    if-eq p1, v1, :cond_1

    iget-wide p2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    goto :goto_0

    .line 104
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "read() returns -1, assumed position: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", actual position: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 105
    invoke-interface {p3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PdfBox-Android"

    .line 104
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p1
.end method

.method restorePosition()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    .line 49
    invoke-interface {v0, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->restorePosition()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->input:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    iget-wide v1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    add-long/2addr v1, p1

    .line 114
    invoke-interface {v0, v1, v2}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->seek(J)V

    iget-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessInputStream;->position:J

    return-wide p1
.end method
