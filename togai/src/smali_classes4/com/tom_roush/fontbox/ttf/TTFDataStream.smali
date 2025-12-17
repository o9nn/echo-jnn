.class abstract Lcom/tom_roush/fontbox/ttf/TTFDataStream;
.super Ljava/lang/Object;
.source "TTFDataStream.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentPosition()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOriginalData()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOriginalDataSize()J
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    .line 254
    invoke-virtual {p0, v0, v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    return-object v0

    .line 264
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected end of TTF stream reached"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read32Fixed()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readSignedShort()S

    move-result v0

    int-to-float v0, v0

    .line 49
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x47800000    # 65536.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public readInternationalDate()Ljava/util/Calendar;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readLong()J

    move-result-wide v0

    const-string v2, "UTC"

    .line 214
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v4, 0x770

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    .line 215
    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v3, 0xe

    const/4 v4, 0x0

    .line 216
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 217
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    add-long/2addr v3, v0

    .line 219
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2
.end method

.method public abstract readLong()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readSignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, -0x100

    :goto_0
    return v0
.end method

.method public abstract readSignedShort()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/tom_roush/fontbox/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read(I)[B

    move-result-object p1

    .line 76
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read(I)[B

    move-result-object p1

    .line 90
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public readTag()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read(I)[B

    move-result-object v1

    sget-object v2, Lcom/tom_roush/fontbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 131
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "premature EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUnsignedByteArray(I)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readUnsignedInt()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read()I

    move-result v0

    int-to-long v0, v0

    .line 145
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read()I

    move-result v2

    int-to-long v2, v2

    .line 146
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read()I

    move-result v4

    int-to-long v4, v4

    .line 147
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->read()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    const/16 v8, 0x18

    shl-long/2addr v0, v8

    const/16 v8, 0x10

    shl-long/2addr v2, v8

    add-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long v2, v4, v2

    add-long/2addr v0, v2

    add-long/2addr v0, v6

    return-wide v0

    .line 150
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public abstract readUnsignedShort()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readUnsignedShortArray(I)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/ttf/TTFDataStream;->readUnsignedShort()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public abstract seek(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
