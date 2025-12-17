.class final Lcom/tom_roush/pdfbox/filter/CCITTFaxFilter;
.super Lcom/tom_roush/pdfbox/filter/Filter;
.source "CCITTFaxFilter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/filter/Filter;-><init>()V

    return-void
.end method

.method private invertBitmap([B)V
    .locals 3

    .line 140
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 142
    aget-byte v2, p1, v1

    not-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/filter/DecodeResult;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 43
    invoke-virtual {v0, v2, v3}, Lcom/tom_roush/pdfbox/filter/CCITTFaxFilter;->getDecodeParams(Lcom/tom_roush/pdfbox/cos/COSDictionary;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    .line 46
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->COLUMNS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/16 v5, 0x6c0

    invoke-virtual {v3, v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v8

    .line 47
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->ROWS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v4

    .line 48
    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->HEIGHT:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->H:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v6, v7, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v6

    if-lez v4, :cond_0

    if-lez v6, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 61
    :goto_0
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v4

    .line 62
    sget-object v7, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODED_BYTE_ALIGN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v7, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v12

    add-int/lit8 v7, v8, 0x7

    .line 63
    div-int/lit8 v7, v7, 0x8

    mul-int/2addr v7, v6

    .line 65
    new-array v13, v7, [B

    const/4 v6, 0x4

    if-nez v4, :cond_5

    const/16 v4, 0x14

    new-array v11, v4, [B

    .line 73
    invoke-virtual {v1, v11}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .line 74
    new-instance v15, Ljava/io/PushbackInputStream;

    invoke-direct {v15, v1, v4}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 75
    invoke-virtual {v15, v11, v5, v14}, Ljava/io/PushbackInputStream;->unread([BII)V

    aget-byte v1, v11, v5

    const/4 v4, 0x1

    if-nez v1, :cond_2

    aget-byte v7, v11, v4

    shr-int/lit8 v9, v7, 0x4

    if-eq v9, v4, :cond_1

    if-eq v7, v4, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x3

    goto :goto_4

    :cond_2
    :goto_2
    shl-int/lit8 v1, v1, 0x8

    aget-byte v7, v11, v4

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v1, v7

    shr-int/2addr v1, v6

    int-to-short v1, v1

    const/16 v6, 0xc

    :goto_3
    mul-int/lit8 v7, v14, 0x8

    if-ge v6, v7, :cond_4

    shl-int/2addr v1, v4

    .line 85
    div-int/lit8 v7, v6, 0x8

    aget-byte v7, v11, v7

    rem-int/lit8 v9, v6, 0x8

    rsub-int/lit8 v9, v9, 0x7

    shr-int/2addr v7, v9

    and-int/2addr v7, v4

    add-int/2addr v1, v7

    int-to-short v1, v1

    and-int/lit16 v7, v1, 0xfff

    if-ne v7, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x2

    :goto_4
    move v9, v7

    move-object v7, v15

    goto :goto_5

    :cond_5
    if-lez v4, :cond_6

    const-wide/16 v6, 0x1

    move-wide v10, v6

    const/4 v9, 0x3

    move-object v7, v1

    goto :goto_6

    :cond_6
    move-object v7, v1

    move v9, v6

    :goto_5
    const-wide/16 v10, 0x0

    .line 105
    :goto_6
    new-instance v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;-><init>(Ljava/io/InputStream;IIJZ)V

    .line 106
    invoke-virtual {v0, v1, v13}, Lcom/tom_roush/pdfbox/filter/CCITTFaxFilter;->readFromDecoderStream(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;[B)V

    .line 109
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BLACK_IS_1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v1, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v1

    if-nez v1, :cond_7

    .line 116
    invoke-direct {v0, v13}, Lcom/tom_roush/pdfbox/filter/CCITTFaxFilter;->invertBitmap([B)V

    :cond_7
    move-object/from16 v1, p2

    .line 119
    invoke-virtual {v1, v13}, Ljava/io/OutputStream;->write([B)V

    .line 120
    new-instance v1, Lcom/tom_roush/pdfbox/filter/DecodeResult;

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/filter/DecodeResult;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1
.end method

.method protected encode(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->COLUMNS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p3, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    .line 151
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ROWS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p3, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result p3

    .line 152
    new-instance v1, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v0, p3, v2}, Lcom/tom_roush/pdfbox/filter/CCITTFaxEncoderStream;-><init>(Ljava/io/OutputStream;III)V

    .line 154
    invoke-static {p1, v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method

.method readFromDecoderStream(Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    :cond_0
    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/tom_roush/pdfbox/filter/CCITTFaxDecoderStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    add-int/2addr v0, v1

    .line 131
    array-length v1, p2

    if-lt v0, v1, :cond_0

    :cond_1
    return-void
.end method
