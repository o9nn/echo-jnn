.class public Lcom/tom_roush/pdfbox/filter/LZWFilter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "LZWFilter.java"


# static fields
.field public static final CLEAR_TABLE:J = 0x100L

.field public static final EOD:J = 0x101L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method

.method private calculateChunk(II)I
    .locals 1

    rsub-int v0, p2, 0x800

    if-lt p1, v0, :cond_0

    const/16 p1, 0xc

    return p1

    :cond_0
    rsub-int v0, p2, 0x400

    if-lt p1, v0, :cond_1

    const/16 p1, 0xb

    return p1

    :cond_1
    rsub-int p2, p2, 0x200

    if-lt p1, p2, :cond_2

    const/16 p1, 0xa

    return p1

    :cond_2
    const/16 p1, 0x9

    return p1
.end method

.method private checkIndexBounds(Ljava/util/List;JLcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;J",
            "Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-string v1, " near offset "

    if-ltz v0, :cond_1

    .line 138
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "array index overflow: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " >= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 141
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 142
    invoke-virtual {p4}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->getStreamPosition()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "negative array index: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 136
    invoke-virtual {p4}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->getStreamPosition()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createCodeTable()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [B

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 268
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 270
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private doLZWDecode(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v1, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v1, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x9

    const-wide/16 v2, -0x1

    :goto_0
    move v4, p1

    move-wide v5, v2

    .line 84
    :goto_1
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;->readBits(I)J

    move-result-wide v7

    const-wide/16 v9, 0x101

    cmp-long v4, v7, v9

    if-eqz v4, :cond_3

    const-wide/16 v9, 0x100

    cmp-long v4, v7, v9

    if-nez v4, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->createCodeTable()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v9, v4

    cmp-long v4, v7, v9

    const/4 v9, 0x0

    if-gez v4, :cond_1

    long-to-int v4, v7

    .line 96
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 97
    aget-byte v9, v4, v9

    .line 98
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write([B)V

    cmp-long v4, v5, v2

    if-eqz v4, :cond_2

    .line 101
    invoke-direct {p0, v0, v5, v6, v1}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->checkIndexBounds(Ljava/util/List;JLcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;)V

    long-to-int v4, v5

    .line 102
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 103
    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 104
    array-length v4, v4

    aput-byte v9, v5, v4

    .line 105
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 110
    :cond_1
    invoke-direct {p0, v0, v5, v6, v1}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->checkIndexBounds(Ljava/util/List;JLcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageInputStream;)V

    long-to-int v4, v5

    .line 111
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 112
    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 113
    array-length v6, v4

    aget-byte v4, v4, v9

    aput-byte v4, v5, v6

    .line 114
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 115
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v4, p3}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->calculateChunk(II)I

    move-result v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v5, v7

    goto :goto_1

    :catch_0
    const-string p1, "PdfBox-Android"

    const-string p3, "Premature EOF in LZW stream, EOD code missing"

    .line 125
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private findPatternCode(Ljava/util/List;[B)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;[B)I"
        }
    .end annotation

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ltz v0, :cond_4

    int-to-long v5, v0

    const-wide/16 v7, 0x101

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    if-eq v4, v2, :cond_0

    return v4

    .line 243
    :cond_0
    array-length v5, p2

    if-le v5, v1, :cond_1

    return v2

    .line 249
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-ne v4, v2, :cond_2

    .line 250
    array-length v6, v5

    if-le v6, v3, :cond_3

    :cond_2
    invoke-static {v5, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 253
    array-length v3, v5

    move v4, v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v4
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p3, p4}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->getDecodeParams(Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p4

    .line 63
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->EARLY_CHANGE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 70
    :goto_0
    invoke-static {p2, p4}, Lcom/tom_roush/pdfbox/filter/Predictor;->wrapPredictor(Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->doLZWDecode(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 71
    new-instance p1, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    invoke-direct {p1, p3}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object p1
.end method

.method protected encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->createCodeTable()Ljava/util/List;

    move-result-object p3

    .line 157
    new-instance v0, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;

    invoke-direct {v0, p2}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v1, 0x100

    const/16 p2, 0x9

    .line 158
    invoke-virtual {v0, v1, v2, p2}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    const/4 p2, 0x0

    const/4 v3, -0x1

    move v4, v3

    .line 161
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v3, :cond_3

    int-to-byte v5, v5

    const/4 v7, 0x0

    if-nez p2, :cond_0

    new-array p2, v6, [B

    aput-byte v5, p2, v7

    :goto_1
    and-int/lit16 v4, v5, 0xff

    goto :goto_0

    .line 171
    :cond_0
    array-length v8, p2

    add-int/2addr v8, v6

    invoke-static {p2, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    .line 172
    array-length v8, p2

    sub-int/2addr v8, v6

    aput-byte v5, p2, v8

    .line 173
    invoke-direct {p0, p3, p2}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->findPatternCode(Ljava/util/List;[B)I

    move-result v8

    if-ne v8, v3, :cond_2

    .line 177
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-direct {p0, v8, v6}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->calculateChunk(II)I

    move-result v8

    int-to-long v9, v4

    .line 178
    invoke-virtual {v0, v9, v10, v8}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    .line 180
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/16 v4, 0x1000

    if-ne p2, v4, :cond_1

    .line 185
    invoke-virtual {v0, v1, v2, v8}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    .line 186
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->createCodeTable()Ljava/util/List;

    move-result-object p3

    :cond_1
    new-array p2, v6, [B

    aput-byte v5, p2, v7

    goto :goto_1

    :cond_2
    move v4, v8

    goto :goto_0

    :cond_3
    if-eq v4, v3, :cond_4

    .line 200
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    invoke-direct {p0, p1, v6}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->calculateChunk(II)I

    move-result p1

    int-to-long v1, v4

    .line 201
    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    .line 209
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1, v6}, Lcom/tom_roush/pdfbox/filter/LZWFilter;->calculateChunk(II)I

    move-result p1

    const-wide/16 p2, 0x101

    .line 211
    invoke-virtual {v0, p2, p3, p1}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    const-wide/16 p1, 0x0

    const/4 p3, 0x7

    .line 214
    invoke-virtual {v0, p1, p2, p3}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->writeBits(JI)V

    .line 217
    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->flush()V

    .line 218
    invoke-virtual {v0}, Lcom/tom_roush/harmony/javax/imageio/stream/MemoryCacheImageOutputStream;->close()V

    return-void
.end method
