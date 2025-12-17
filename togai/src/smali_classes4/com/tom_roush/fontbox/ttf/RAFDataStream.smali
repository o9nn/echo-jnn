.class Lcom/tom_roush/fontbox/ttf/RAFDataStream;
.super Lcom/tom_roush/fontbox/ttf/TTFDataStream;
.source "RAFDataStream.java"


# static fields
.field private static final BUFFERSIZE:I = 0x4000


# instance fields
.field private raf:Ljava/io/RandomAccessFile;

.field private ttfFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->ttfFile:Ljava/io/File;

    .line 63
    new-instance v0, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;

    const/16 v1, 0x4000

    invoke-direct {v0, p1, p2, v1}, Lcom/tom_roush/fontbox/ttf/BufferedRandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->ttfFile:Ljava/io/File;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/tom_roush/fontbox/ttf/RAFDataStream;-><init>(Ljava/io/File;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    :cond_0
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    .line 88
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOriginalData()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->ttfFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getOriginalDataSize()J
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->ttfFile:Ljava/io/File;

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    .line 115
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    .line 170
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    .line 141
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSignedShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    .line 77
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    .line 128
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/RAFDataStream;->raf:Ljava/io/RandomAccessFile;

    .line 153
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method
