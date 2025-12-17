.class final Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;
.super Ljava/lang/Object;
.source "InputStreamSource.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdfparser/SequentialSource;


# instance fields
.field private final input:Ljava/io/PushbackInputStream;

.field private position:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x7fff

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    const/4 p1, 0x0

    iput p1, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

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

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    .line 146
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public getPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public isEOF()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->peek()I

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

.method public peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    .line 91
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    .line 94
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_0
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    .line 47
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    iget v1, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    .line 55
    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    .line 70
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    iget p2, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public readFully(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-array v0, p1, [B

    const/4 v1, 0x0

    :cond_0
    sub-int v2, p1, v1

    .line 127
    invoke-virtual {p0, v0, v1, v2}, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->read([BII)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    return-object v0

    .line 130
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public unread(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    .line 102
    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    iget p1, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    return-void
.end method

.method public unread([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    .line 109
    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread([B)V

    iget v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    .line 110
    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    return-void
.end method

.method public unread([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->input:Ljava/io/PushbackInputStream;

    .line 116
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->unread([BII)V

    iget p1, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/tom_roush/pdfbox/pdfparser/InputStreamSource;->position:I

    return-void
.end method
