.class final Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;
.super Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;
.source "PDCIDFontType2Embedder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;
    }
.end annotation


# instance fields
.field private final cidFont:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private final document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private final parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

.field private final vertical:Z


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZLcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Z)V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p5, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    iput-boolean p6, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->vertical:Z

    .line 79
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE0:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, p1, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 80
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 81
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz p6, :cond_0

    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY_V:Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY_H:Lcom/tom_roush/pdfbox/cos/COSName;

    :goto_0
    invoke-virtual {p2, p1, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 84
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->createCIDFont()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->cidFont:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 85
    new-instance p3, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p3}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 86
    invoke-virtual {p3, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 87
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->DESCENDANT_FONTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, p1, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    if-nez p4, :cond_1

    const/4 p1, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildToUnicodeCMap(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private addNameTag(Ljava/lang/String;)V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 230
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->cidFont:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 232
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method private buildCIDSet(Ljava/util/TreeMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-virtual {p1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 265
    div-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-gt v2, p1, :cond_0

    .line 268
    rem-int/lit8 v3, v2, 0x8

    rsub-int/lit8 v3, v3, 0x7

    shl-int v3, v1, v3

    .line 269
    div-int/lit8 v4, v2, 0x8

    aget-byte v5, v0, v4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 273
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v0, v1, p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 275
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setCIDSet(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    return-void
.end method

.method private buildCIDToGIDMap(Ljava/util/TreeMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-virtual {p1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 238
    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v2, v0, :cond_1

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 245
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    .line 246
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 253
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v0, v1, p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->cidFont:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 255
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CID_TO_GID_MAP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method private buildToUnicodeCMap(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getMaximumProfile()Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/MaximumProfileTable;->getNumGlyphs()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v5, v2

    move v4, v3

    :goto_0
    if-gt v4, v1, :cond_4

    if-eqz p1, :cond_1

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 142
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_1
    move v6, v4

    .line 151
    :goto_1
    iget-object v7, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->cmapLookup:Lcom/tom_roush/fontbox/ttf/CmapLookup;

    invoke-interface {v7, v6}, Lcom/tom_roush/fontbox/ttf/CmapLookup;->getCharCodes(I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 155
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v8, 0xffff

    if-le v7, v8, :cond_2

    move v5, v3

    .line 160
    :cond_2
    new-instance v8, Ljava/lang/String;

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-direct {v8, v7, v2, v3}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v0, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->add(ILjava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_4
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/ToUnicodeWriter;->writeTo(Ljava/io/OutputStream;)V

    .line 166
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 168
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p1, v1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 173
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 176
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->setVersion(F)V

    :cond_5
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 180
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TO_UNICODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method private buildVerticalHeader(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getVerticalHeader()Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "PdfBox-Android"

    const-string v0, "Font to be subset is set to vertical, but has no \'vhea\' table"

    .line 318
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    .line 324
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->getAscender()S

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v3, v1

    .line 325
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->getAdvanceHeightMax()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x370

    cmp-long v2, v3, v5

    if-nez v2, :cond_1

    const-wide/16 v5, -0x3e8

    cmp-long v2, v0, v5

    if-eqz v2, :cond_2

    .line 328
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 329
    invoke-static {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 330
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 331
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DW2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private buildVerticalMetrics(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildVerticalHeader(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 526
    new-array v1, v1, [I

    .line 527
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v2

    .line 528
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getVerticalMetrics()Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;

    move-result-object v3

    .line 529
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 532
    invoke-virtual {v2, v5}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyph(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object v6

    if-nez v6, :cond_1

    mul-int/lit8 v6, v5, 0x4

    const/high16 v7, -0x80000000

    .line 535
    aput v7, v1, v6

    goto :goto_1

    :cond_1
    mul-int/lit8 v7, v5, 0x4

    .line 539
    aput v5, v1, v7

    add-int/lit8 v8, v7, 0x1

    .line 540
    invoke-virtual {v3, v5}, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->getAdvanceHeight(I)I

    move-result v9

    aput v9, v1, v8

    add-int/lit8 v8, v7, 0x2

    .line 541
    invoke-virtual {v4, v5}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getAdvanceWidth(I)I

    move-result v9

    aput v9, v1, v8

    add-int/lit8 v7, v7, 0x3

    .line 542
    invoke-virtual {v6}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getYMaximum()S

    move-result v6

    invoke-virtual {v3, v5}, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->getTopSideBearing(I)I

    move-result v8

    add-int/2addr v6, v8

    aput v6, v1, v7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 546
    :cond_2
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->W2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->getVerticalMetrics([I)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method private buildVerticalMetrics(Ljava/util/TreeMap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->cidFont:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 345
    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildVerticalHeader(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v1

    .line 352
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getVerticalHeader()Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;

    move-result-object v1

    .line 353
    iget-object v3, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getVerticalMetrics()Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;

    move-result-object v3

    .line 354
    iget-object v4, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v4

    .line 355
    iget-object v5, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v5}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    move-result-object v5

    .line 357
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->getAscender()S

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-long v6, v6

    .line 358
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/VerticalHeaderTable;->getAdvanceHeightMax()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v8, v1

    .line 360
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 361
    new-instance v10, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v10}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 364
    invoke-virtual/range {p1 .. p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 365
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/high16 v12, -0x80000000

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 369
    invoke-virtual {v4, v13}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyph(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object v14

    if-nez v14, :cond_1

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    goto :goto_1

    .line 374
    :cond_1
    invoke-virtual {v14}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getYMaximum()S

    move-result v14

    invoke-virtual {v3, v13}, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->getTopSideBearing(I)I

    move-result v15

    add-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v2

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v16, v4

    .line 375
    invoke-virtual {v3, v13}, Lcom/tom_roush/fontbox/ttf/VerticalMetricsTable;->getAdvanceHeight(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v17, v3

    int-to-long v3, v4

    cmp-long v18, v14, v6

    if-nez v18, :cond_2

    cmp-long v18, v3, v8

    if-nez v18, :cond_2

    :goto_1
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto :goto_0

    :cond_2
    move-wide/from16 v19, v6

    add-int/lit8 v6, v13, -0x1

    if-eq v12, v6, :cond_3

    .line 384
    new-instance v6, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v6}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    move-wide/from16 v21, v8

    int-to-long v7, v13

    .line 385
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 386
    invoke-virtual {v1, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    move-object v10, v6

    goto :goto_2

    :cond_3
    move-wide/from16 v21, v8

    .line 388
    :goto_2
    invoke-static {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 389
    invoke-virtual {v5, v13}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getAdvanceWidth(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v6, 0x2

    .line 390
    div-long/2addr v3, v6

    invoke-static {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 391
    invoke-static {v14, v15}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    move v12, v13

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-wide/from16 v6, v19

    move-wide/from16 v8, v21

    goto/16 :goto_0

    :cond_4
    iget-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->cidFont:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 394
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->W2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method private buildWidths(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 403
    new-array v1, v1, [I

    .line 404
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x2

    .line 407
    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 408
    invoke-virtual {v2, v3}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getAdvanceWidth(I)I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 411
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->W:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->getWidths([I)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method private buildWidths(Ljava/util/TreeMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    .line 285
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 286
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 289
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 290
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    move-result-object v4

    .line 291
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/high16 v5, -0x80000000

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 293
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 294
    invoke-virtual {v4, v7}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getAdvanceWidth(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    cmp-long v9, v7, v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v9, v6, -0x1

    if-eq v5, v9, :cond_1

    .line 303
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    int-to-long v9, v6

    .line 304
    invoke-static {v9, v10}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 305
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 307
    :cond_1
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->cidFont:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 310
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->W:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method private createCIDFont()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 197
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 198
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CID_FONT_TYPE2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 201
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    const-string v1, "Identity"

    const/4 v2, 0x0

    const-string v3, "Adobe"

    .line 204
    invoke-direct {p0, v3, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->toCIDSystemInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    .line 205
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CIDSYSTEMINFO:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 208
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 211
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildWidths(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->vertical:Z

    if-eqz v1, :cond_0

    .line 216
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildVerticalMetrics(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 220
    :cond_0
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CID_TO_GID_MAP:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0
.end method

.method private getVerticalMetrics([I)Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 551
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_e

    move-object/from16 v1, p0

    .line 556
    iget-object v3, v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v4, v3

    const/4 v3, 0x0

    .line 558
    aget v3, v0, v3

    int-to-long v5, v3

    const/4 v3, 0x1

    .line 559
    aget v7, v0, v3

    neg-int v7, v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x2

    .line 560
    aget v10, v0, v9

    int-to-float v10, v10

    mul-float/2addr v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-long v12, v10

    const/4 v10, 0x3

    .line 561
    aget v14, v0, v10

    int-to-float v14, v14

    mul-float/2addr v14, v4

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-long v14, v14

    .line 563
    new-instance v16, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct/range {v16 .. v16}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 564
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 565
    invoke-static {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 567
    sget-object v9, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->FIRST:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    move-object/from16 v17, v16

    move-wide v15, v14

    move-wide v13, v12

    move-object v12, v9

    move-wide v8, v7

    move-wide v6, v5

    const/4 v5, 0x4

    .line 569
    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v10

    if-ge v5, v3, :cond_a

    .line 571
    aget v3, v0, v5

    int-to-long v10, v3

    const-wide/32 v19, -0x80000000

    cmp-long v3, v10, v19

    if-nez v3, :cond_0

    move/from16 v22, v4

    move-object v0, v12

    const/high16 v18, 0x40000000    # 2.0f

    move-object v12, v2

    goto/16 :goto_5

    :cond_0
    add-int/lit8 v3, v5, 0x1

    .line 577
    aget v3, v0, v3

    neg-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v19, v2

    int-to-long v1, v3

    add-int/lit8 v3, v5, 0x2

    .line 578
    aget v3, v0, v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    const/high16 v18, 0x40000000    # 2.0f

    div-float v3, v3, v18

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-wide/from16 v20, v13

    int-to-long v13, v3

    add-int/lit8 v3, v5, 0x3

    .line 579
    aget v3, v0, v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move/from16 v22, v4

    int-to-long v3, v3

    .line 581
    sget-object v23, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$1;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$font$PDCIDFontType2Embedder$State:[I

    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->ordinal()I

    move-result v24

    aget v0, v23, v24

    const-wide/16 v23, 0x1

    move-object/from16 v25, v12

    const/4 v12, 0x1

    if-eq v0, v12, :cond_7

    const/4 v12, 0x2

    if-eq v0, v12, :cond_4

    const/4 v12, 0x3

    if-eq v0, v12, :cond_2

    :cond_1
    move-object/from16 v6, v17

    move-object/from16 v12, v19

    goto/16 :goto_1

    :cond_2
    add-long v23, v6, v23

    cmp-long v0, v10, v23

    if-nez v0, :cond_3

    cmp-long v0, v1, v8

    if-nez v0, :cond_3

    cmp-long v0, v13, v20

    if-nez v0, :cond_3

    cmp-long v0, v3, v15

    if-eqz v0, :cond_1

    .line 632
    :cond_3
    invoke-static {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    move-object/from16 v12, v19

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 633
    invoke-static {v8, v9}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 634
    invoke-static/range {v20 .. v21}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 635
    invoke-static/range {v15 .. v16}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 636
    invoke-static {v10, v11}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 637
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->FIRST:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    goto/16 :goto_4

    :cond_4
    move-object/from16 v12, v19

    add-long v23, v6, v23

    cmp-long v0, v10, v23

    if-nez v0, :cond_5

    cmp-long v19, v1, v8

    if-nez v19, :cond_5

    cmp-long v19, v13, v20

    if-nez v19, :cond_5

    cmp-long v19, v3, v15

    if-nez v19, :cond_5

    .line 609
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->SERIAL:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    move-object/from16 v8, v17

    .line 610
    invoke-virtual {v12, v8}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 611
    invoke-static {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto/16 :goto_4

    :cond_5
    move-object/from16 v6, v17

    if-nez v0, :cond_6

    .line 615
    invoke-static {v8, v9}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 616
    invoke-static/range {v20 .. v21}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 617
    invoke-static/range {v15 .. v16}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_1
    move-object/from16 v17, v6

    :goto_2
    move-object/from16 v0, v25

    goto/16 :goto_4

    .line 621
    :cond_6
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->FIRST:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    .line 622
    invoke-static {v8, v9}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 623
    invoke-static/range {v20 .. v21}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 624
    invoke-static/range {v15 .. v16}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 625
    invoke-virtual {v12, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 626
    invoke-static {v10, v11}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v12, v19

    add-long v6, v6, v23

    cmp-long v6, v10, v6

    if-nez v6, :cond_8

    cmp-long v7, v1, v8

    if-nez v7, :cond_8

    cmp-long v7, v13, v20

    if-nez v7, :cond_8

    cmp-long v7, v3, v15

    if-nez v7, :cond_8

    .line 586
    sget-object v6, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->SERIAL:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    move-object/from16 v17, v0

    move-object v0, v6

    goto :goto_4

    :cond_8
    if-nez v6, :cond_9

    .line 590
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->BRACKET:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    .line 591
    new-instance v6, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v6}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 592
    invoke-static {v8, v9}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 593
    invoke-static/range {v20 .. v21}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 594
    invoke-static/range {v15 .. v16}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_3
    move-object/from16 v17, v6

    goto :goto_4

    .line 598
    :cond_9
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 599
    invoke-static {v8, v9}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 600
    invoke-static/range {v20 .. v21}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 601
    invoke-static/range {v15 .. v16}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 602
    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 603
    invoke-static {v10, v11}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    move-object/from16 v17, v0

    goto/16 :goto_2

    :goto_4
    move-wide v8, v1

    move-wide v15, v3

    move-wide v6, v10

    :goto_5
    add-int/lit8 v5, v5, 0x4

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v11, v18

    move/from16 v4, v22

    const/4 v10, 0x3

    move-object v12, v0

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v25, v12

    move-wide/from16 v20, v13

    move-object/from16 v0, v17

    move-object v12, v2

    .line 647
    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$1;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$font$PDCIDFontType2Embedder$State:[I

    invoke-virtual/range {v25 .. v25}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    goto :goto_6

    .line 663
    :cond_b
    invoke-static {v6, v7}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 664
    invoke-static {v8, v9}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 665
    invoke-static/range {v20 .. v21}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 666
    invoke-static/range {v15 .. v16}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_6

    .line 657
    :cond_c
    invoke-static {v8, v9}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 658
    invoke-static/range {v20 .. v21}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 659
    invoke-static/range {v15 .. v16}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 660
    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_6

    .line 650
    :cond_d
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 651
    invoke-static {v8, v9}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 652
    invoke-static/range {v20 .. v21}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 653
    invoke-static/range {v15 .. v16}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 654
    invoke-virtual {v12, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_6
    return-object v12

    .line 553
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length of values must be >= 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getWidths([I)Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 421
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_d

    move-object/from16 v1, p0

    .line 426
    iget-object v3, v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v4, v3

    const/4 v3, 0x0

    .line 428
    aget v3, v0, v3

    int-to-long v5, v3

    const/4 v3, 0x1

    .line 429
    aget v7, v0, v3

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    .line 431
    new-instance v9, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v9}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 432
    new-instance v10, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v10}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 433
    invoke-static {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 435
    sget-object v11, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->FIRST:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    move v12, v2

    .line 437
    :goto_0
    array-length v13, v0

    sub-int/2addr v13, v3

    if-ge v12, v13, :cond_9

    .line 439
    aget v13, v0, v12

    int-to-long v14, v13

    add-int/lit8 v13, v12, 0x1

    .line 440
    aget v13, v0, v13

    int-to-float v13, v13

    mul-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-long v2, v13

    .line 442
    sget-object v13, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$1;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$font$PDCIDFontType2Embedder$State:[I

    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->ordinal()I

    move-result v16

    aget v13, v13, v16

    const-wide/16 v16, 0x1

    const/4 v0, 0x1

    if-eq v13, v0, :cond_5

    const/4 v0, 0x2

    if-eq v13, v0, :cond_2

    const/4 v0, 0x3

    if-eq v13, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    add-long v16, v5, v16

    cmp-long v0, v14, v16

    if-nez v0, :cond_1

    cmp-long v0, v2, v7

    if-eqz v0, :cond_8

    .line 485
    :cond_1
    invoke-static {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 486
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 487
    invoke-static {v14, v15}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 488
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->FIRST:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    :goto_1
    move-object v11, v0

    goto/16 :goto_2

    :cond_2
    add-long v16, v5, v16

    cmp-long v0, v14, v16

    if-nez v0, :cond_3

    cmp-long v13, v2, v7

    if-nez v13, :cond_3

    .line 466
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->SERIAL:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    .line 467
    invoke-virtual {v10, v9}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 468
    invoke-static {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 472
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_2

    .line 476
    :cond_4
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->FIRST:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    .line 477
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 478
    invoke-virtual {v10, v9}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 479
    invoke-static {v14, v15}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    :cond_5
    add-long v5, v5, v16

    cmp-long v0, v14, v5

    if-nez v0, :cond_6

    cmp-long v5, v2, v7

    if-nez v5, :cond_6

    .line 447
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->SERIAL:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    .line 451
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->BRACKET:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;

    .line 452
    new-instance v5, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v5}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 453
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    move-object v11, v0

    move-object v9, v5

    goto :goto_2

    .line 457
    :cond_7
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 458
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 459
    invoke-virtual {v10, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 460
    invoke-static {v14, v15}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    move-object v9, v0

    :cond_8
    :goto_2
    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p1

    move-wide v7, v2

    move-wide v5, v14

    const/4 v2, 0x2

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 496
    :cond_9
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$1;->$SwitchMap$com$tom_roush$pdfbox$pdmodel$font$PDCIDFontType2Embedder$State:[I

    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    goto :goto_3

    .line 508
    :cond_a
    invoke-static {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 509
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_3

    .line 504
    :cond_b
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 505
    invoke-virtual {v10, v9}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_3

    .line 499
    :cond_c
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 500
    invoke-static {v7, v8}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 501
    invoke-virtual {v10, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_3
    return-object v10

    :cond_d
    move-object/from16 v1, p0

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "length of widths must be >= 2"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toCIDSystemInfo(Ljava/lang/String;Ljava/lang/String;I)Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 2

    .line 185
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 186
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->REGISTRY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 187
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->ORDERING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 188
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->SUPPLEMENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, p1, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-object v0
.end method


# virtual methods
.method protected buildSubset(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 105
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildToUnicodeCMap(Ljava/util/Map;)V

    iget-boolean p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->vertical:Z

    if-eqz p3, :cond_1

    .line 116
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildVerticalMetrics(Ljava/util/TreeMap;)V

    .line 119
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildFontFile2(Ljava/io/InputStream;)V

    .line 120
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->addNameTag(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildWidths(Ljava/util/TreeMap;)V

    .line 122
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildCIDToGIDMap(Ljava/util/TreeMap;)V

    .line 123
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->buildCIDSet(Ljava/util/TreeMap;)V

    return-void
.end method

.method public getCIDFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->cidFont:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-direct {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-object v0
.end method
