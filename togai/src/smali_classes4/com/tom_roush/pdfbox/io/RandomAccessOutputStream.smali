.class public Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;
.super Ljava/io/OutputStream;
.source "RandomAccessOutputStream.java"


# instance fields
.field private final writer:Lcom/tom_roush/pdfbox/io/RandomAccessWrite;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/io/RandomAccessWrite;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;->writer:Lcom/tom_roush/pdfbox/io/RandomAccessWrite;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;->writer:Lcom/tom_roush/pdfbox/io/RandomAccessWrite;

    .line 58
    invoke-interface {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessWrite;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;->writer:Lcom/tom_roush/pdfbox/io/RandomAccessWrite;

    .line 52
    invoke-interface {v0, p1}, Lcom/tom_roush/pdfbox/io/RandomAccessWrite;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/io/RandomAccessOutputStream;->writer:Lcom/tom_roush/pdfbox/io/RandomAccessWrite;

    .line 46
    invoke-interface {v0, p1, p2, p3}, Lcom/tom_roush/pdfbox/io/RandomAccessWrite;->write([BII)V

    return-void
.end method
