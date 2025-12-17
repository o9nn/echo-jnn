.class public Lcom/tom_roush/pdfbox/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/io/RandomAccess;


# instance fields
.field private isClosed:Z

.field private final ras:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->isClosed:Z

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RandomAccessFile already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 180
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->getPosition()J

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 49
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->isClosed:Z

    return-void
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 72
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->isClosed:Z

    return v0
.end method

.method public isEOF()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->peek()I

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

    .line 99
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 100
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 149
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->rewind(I)V

    :cond_0
    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 79
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 86
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 93
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    .line 165
    new-array p1, p1, [B

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 166
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    return-object p1
.end method

.method public rewind(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 158
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    int-to-long v3, p1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 65
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 140
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

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

    .line 133
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->checkClosed()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessFile;->ras:Ljava/io/RandomAccessFile;

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
