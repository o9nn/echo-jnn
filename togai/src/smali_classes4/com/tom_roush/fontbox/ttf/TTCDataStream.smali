.class Lcom/tom_roush/fontbox/ttf/TTCDataStream;
.super Lcom/tom_roush/fontbox/ttf/TTFDataStream;
.source "TTCDataStream.java"


# instance fields
.field private final stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;


# direct methods
.method constructor <init>(Lcom/tom_roush/fontbox/ttf/TTFDataStream;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 83
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOriginalData()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 89
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getOriginalData()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalDataSize()J
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 95
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->getOriginalDataSize()J

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

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 40
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read()I

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

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 77
    invoke-virtual {v0, p1, p2, p3}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read([BII)I

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

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 46
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readLong()J

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

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 58
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

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

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 52
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

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

    iget-object v0, p0, Lcom/tom_roush/fontbox/ttf/TTCDataStream;->stream:Lcom/tom_roush/fontbox/ttf/TTFDataStream;

    .line 71
    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->seek(J)V

    return-void
.end method
