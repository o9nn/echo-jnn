.class final Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;
.super Ljava/lang/Object;
.source "RandomAccessSource.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;


# instance fields
.field private final reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessRead;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 103
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->close()V

    return-void
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 61
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEOF()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 97
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->isEOF()Z

    move-result v0

    return v0
.end method

.method public peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 67
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->peek()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 43
    invoke-interface {v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read()I

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

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 49
    invoke-interface {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read([B)I

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

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 55
    invoke-interface {v0, p1, p2, p3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->read([BII)I

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

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 91
    invoke-interface {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->readFully(I)[B

    move-result-object p1

    return-object p1
.end method

.method public unread(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    const/4 v0, 0x1

    .line 73
    invoke-interface {p1, v0}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    return-void
.end method

.method public unread([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 79
    array-length p1, p1

    invoke-interface {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    return-void
.end method

.method public unread([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdfparser/RandomAccessSource;->reader:Lcom/tom_roush/pdfbox/io/RandomAccessRead;

    .line 85
    invoke-interface {p1, p3}, Lcom/tom_roush/pdfbox/io/RandomAccessRead;->rewind(I)V

    return-void
.end method
