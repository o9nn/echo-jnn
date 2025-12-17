.class public Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;
.super Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;
.source "PDCIDFontType2.java"


# instance fields
.field private final cid2gid:[I

.field private final cmap:Lcom/tom_roush/fontbox/ttf/CmapLookup;

.field private fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

.field private fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

.field private final isDamaged:Z

.field private final isEmbedded:Z

.field private final noMapping:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PdfBox-Android"

    const-string v1, "Found CFF/OTF but expected embedded TTF font "

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)V

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->noMapping:Ljava/util/Set;

    .line 79
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->isEmbedded:Z

    iput-boolean p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->isDamaged:Z

    goto/16 :goto_4

    :cond_0
    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFile2()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v3

    if-nez v3, :cond_1

    .line 97
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFile3()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_3

    .line 102
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFile()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, p3

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 110
    :try_start_0
    new-instance v4, Lcom/tom_roush/fontbox/ttf/OTFParser;

    invoke-direct {v4, v2}, Lcom/tom_roush/fontbox/ttf/OTFParser;-><init>(Z)V

    .line 111
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/tom_roush/fontbox/ttf/OTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    move-result-object p3

    .line 114
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->isPostScript()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Could not read embedded OTF for font "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getBaseFont()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move p1, v2

    goto :goto_2

    :cond_4
    move p1, p2

    :goto_2
    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    move v2, p2

    :goto_3
    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->isEmbedded:Z

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->isDamaged:Z

    if-nez p3, :cond_6

    .line 132
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->findFontOrSubstitute()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p3

    :cond_6
    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    :goto_4
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 136
    invoke-virtual {p1, p2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmapLookup(Z)Lcom/tom_roush/fontbox/ttf/CmapLookup;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->cmap:Lcom/tom_roush/fontbox/ttf/CmapLookup;

    .line 137
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->readCIDToGIDMap()[I

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->cid2gid:[I

    return-void
.end method

.method private findFontOrSubstitute()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getBaseFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;

    move-result-object v3

    .line 145
    invoke-interface {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;->getCIDFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->isCIDFont()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->getTrueTypeFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 155
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->isFallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Using fallback font "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for CID-keyed TrueType font "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getBaseFont()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method private generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontBoundingBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    new-instance v1, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    .line 195
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(FFFF)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 198
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public codeToCID(I)I
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getCMap()Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->hasCIDMappings()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->hasUnicodeMappings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->toUnicode(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 212
    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    return p1

    .line 216
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->toCID(I)I

    move-result p1

    return p1
.end method

.method public codeToGID(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->isEmbedded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->cid2gid:[I

    const-string v2, "PdfBox-Android"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->isDamaged:Z

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Using non-embedded GIDs in font "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->codeToCID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->cid2gid:[I

    .line 241
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 243
    aget p1, v0, p1

    return p1

    :cond_0
    return v1

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->toUnicode(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->noMapping:Ljava/util/Set;

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->noMapping:Ljava/util/Set;

    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find a character mapping for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->codeToCID(I)I

    move-result p1

    return p1

    .line 266
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x1

    if-le p1, v3, :cond_4

    const-string p1, "Trying to map multi-byte character using \'cmap\', result will be poor"

    .line 268
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->cmap:Lcom/tom_roush/fontbox/ttf/CmapLookup;

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/tom_roush/fontbox/ttf/CmapLookup;->getGlyphId(I)I

    move-result p1

    return p1

    .line 281
    :cond_5
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->codeToCID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->cid2gid:[I

    if-eqz v0, :cond_7

    .line 285
    array-length v2, v0

    if-ge p1, v2, :cond_6

    .line 287
    aget p1, v0, p1

    return p1

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 297
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result v0

    if-ge p1, v0, :cond_8

    return p1

    :cond_8
    return v1
.end method

.method public encode(I)[B
    .locals 3

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->isEmbedded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getCMap()Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Identity-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->cmap:Lcom/tom_roush/fontbox/ttf/CmapLookup;

    if-eqz v0, :cond_1

    .line 342
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/ttf/CmapLookup;->getGlyphId(I)I

    move-result v0

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getCMapUCS2()Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getCMapUCS2()Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->toCID(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-ne v0, v2, :cond_4

    .line 357
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getToUnicodeCMap()Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    if-eqz v0, :cond_2

    int-to-char v2, p1

    .line 360
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tom_roush/fontbox/cmap/CMap;->getCodesFromUnicode(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->cmap:Lcom/tom_roush/fontbox/ttf/CmapLookup;

    .line 372
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/ttf/CmapLookup;->getGlyphId(I)I

    move-result v0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    const/4 p1, 0x2

    new-array p1, p1, [B

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    return-object p1

    .line 377
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "No glyph for U+%04X (%c) in font %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    return-object v0
.end method

.method public getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/tom_roush/pdfbox/util/Matrix;

    const v2, 0x3a83126f    # 0.001f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x3a83126f    # 0.001f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getHeight(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 314
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalHeader()Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getAscender()S

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalHeader()Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getDescender()S

    move-result v0

    neg-int v0, v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 315
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnitsPerEm()I

    move-result v0

    div-int/2addr p1, v0

    int-to-float p1, p1

    return p1
.end method

.method public getPath(I)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 409
    instance-of v1, v0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->isPostScript()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->codeToGID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 414
    check-cast v0, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->getCFF()Lcom/tom_roush/fontbox/ttf/CFFTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/CFFTable;->getFont()Lcom/tom_roush/fontbox/cff/CFFFont;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFFont;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    .line 419
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->codeToGID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 420
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyph(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 423
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    .line 425
    :cond_1
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    return-object p1
.end method

.method public getTrueTypeFont()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    return-object v0
.end method

.method public getWidthFromFont(I)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->codeToGID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 322
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getAdvanceWidth(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 323
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnitsPerEm()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float/2addr p1, v1

    :cond_0
    return p1
.end method

.method public hasGlyph(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->codeToGID(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isDamaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->isDamaged:Z

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->isEmbedded:Z

    return v0
.end method
