.class Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;
.super Ljava/lang/Object;
.source "PDType1FontEmbedder.java"


# instance fields
.field private final fontEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

.field private final type1:Lcom/tom_roush/fontbox/type1/Type1Font;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 62
    invoke-static {p3}, Lcom/tom_roush/pdfbox/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p3

    .line 63
    new-instance v0, Lcom/tom_roush/fontbox/pfb/PfbParser;

    invoke-direct {v0, p3}, Lcom/tom_roush/fontbox/pfb/PfbParser;-><init>([B)V

    .line 64
    invoke-static {p3}, Lcom/tom_roush/fontbox/type1/Type1Font;->createWithPFB([B)Lcom/tom_roush/fontbox/type1/Type1Font;

    move-result-object p3

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->type1:Lcom/tom_roush/fontbox/type1/Type1Font;

    if-nez p4, :cond_0

    .line 68
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/type1/Type1Font;->getEncoding()Lcom/tom_roush/fontbox/encoding/Encoding;

    move-result-object v1

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;->fromFontBox(Lcom/tom_roush/fontbox/encoding/Encoding;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->fontEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->fontEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 76
    :goto_0
    invoke-static {p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->buildFontDescriptor(Lcom/tom_roush/fontbox/type1/Type1Font;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object p3

    .line 78
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/pfb/PfbParser;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v1, p1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 79
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/pfb/PfbParser;->size()I

    move-result v2

    const-string v3, "Length"

    invoke-virtual {p1, v3, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    move v2, p1

    .line 80
    :goto_1
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/pfb/PfbParser;->getLengths()[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 82
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/pfb/PfbParser;->getLengths()[I

    move-result-object v7

    aget v2, v7, v2

    invoke-virtual {v4, v5, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setInt(Ljava/lang/String;I)V

    move v2, v6

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p3, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontFile(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    .line 87
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 88
    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->type1:Lcom/tom_roush/fontbox/type1/Type1Font;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/type1/Type1Font;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 91
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0x100

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, p1

    :goto_2
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->fontEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 94
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->type1:Lcom/tom_roush/fontbox/type1/Type1Font;

    .line 95
    invoke-virtual {v2, v1}, Lcom/tom_roush/fontbox/type1/Type1Font;->getWidth(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 99
    :cond_2
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST_CHAR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 100
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->LAST_CHAR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 101
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTHS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 102
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, p1, p4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method static buildFontDescriptor(Lcom/tom_roush/fontbox/afm/FontMetrics;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
    .locals 3

    .line 136
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getEncodingScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FontSpecific"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontFamily(Ljava/lang/String;)V

    xor-int/lit8 v2, v0, 0x1

    .line 141
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setNonSymbolic(Z)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setSymbolic(Z)V

    .line 143
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/fontbox/util/BoundingBox;)V

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontBoundingBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 144
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getItalicAngle()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setItalicAngle(F)V

    .line 145
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getAscender()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setAscent(F)V

    .line 146
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getDescender()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setDescent(F)V

    .line 147
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getCapHeight()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setCapHeight(F)V

    .line 148
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getXHeight()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setXHeight(F)V

    .line 149
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getAverageCharacterWidth()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setAverageWidth(F)V

    .line 150
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getCharacterSet()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setCharacterSet(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 151
    invoke-virtual {v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setStemV(F)V

    return-object v1
.end method

.method static buildFontDescriptor(Lcom/tom_roush/fontbox/type1/Type1Font;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/type1/Type1Font;->getEncoding()Lcom/tom_roush/fontbox/encoding/Encoding;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/fontbox/encoding/BuiltInEncoding;

    .line 112
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/type1/Type1Font;->getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v1

    .line 113
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/type1/Type1Font;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontName(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/type1/Type1Font;->getFamilyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontFamily(Ljava/lang/String;)V

    xor-int/lit8 v3, v0, 0x1

    .line 117
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setNonSymbolic(Z)V

    .line 118
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setSymbolic(Z)V

    .line 119
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/fontbox/util/BoundingBox;)V

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontBoundingBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 120
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/type1/Type1Font;->getItalicAngle()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setItalicAngle(F)V

    .line 121
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getUpperRightY()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setAscent(F)V

    .line 122
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getLowerLeftY()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setDescent(F)V

    .line 123
    invoke-virtual {p0}, Lcom/tom_roush/fontbox/type1/Type1Font;->getBlueValues()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {v2, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setCapHeight(F)V

    const/4 p0, 0x0

    .line 124
    invoke-virtual {v2, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setStemV(F)V

    return-object v2
.end method


# virtual methods
.method public getFontEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->fontEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    return-object v0
.end method

.method public getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;
    .locals 1

    .line 168
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    return-object v0
.end method

.method public getType1Font()Lcom/tom_roush/fontbox/type1/Type1Font;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->type1:Lcom/tom_roush/fontbox/type1/Type1Font;

    return-object v0
.end method
