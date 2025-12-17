.class public Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;
.super Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;
.source "PDTrueTypeFont.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;


# static fields
.field private static final INVERTED_MACOS_ROMAN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_RANGE_F000:I = 0xf000

.field private static final START_RANGE_F100:I = 0xf100

.field private static final START_RANGE_F200:I = 0xf200


# instance fields
.field private cmapInitialized:Z

.field private cmapMacRoman:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

.field private cmapWinSymbol:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

.field private cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

.field private fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

.field private gidToCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final isDamaged:Z

.field private final isEmbedded:Z

.field private final ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->INVERTED_MACOS_ROMAN:Ljava/util/Map;

    .line 67
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacOSRomanEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacOSRomanEncoding;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacOSRomanEncoding;->getCodeToNameMap()Ljava/util/Map;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->INVERTED_MACOS_ROMAN:Ljava/util/Map;

    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinSymbol:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapMacRoman:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapInitialized:Z

    .line 188
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 190
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFile2()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    new-instance v4, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v4, v3}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>(Z)V

    .line 199
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    :try_start_1
    invoke-virtual {v4, v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v1, p1

    .line 204
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not read embedded TTF for font "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getBaseFont()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move v1, v3

    goto :goto_2

    :cond_0
    :goto_1
    move v1, v0

    :goto_2
    if-eqz p1, :cond_1

    move v0, v3

    :cond_1
    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->isEmbedded:Z

    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->isDamaged:Z

    if-nez p1, :cond_3

    .line 216
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    move-result-object p1

    .line 217
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v1

    .line 217
    invoke-interface {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;->getTrueTypeFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 221
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->isFallback()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Using fallback font \'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' for \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getBaseFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object p1, v0

    :cond_3
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 227
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->readEncoding()V

    return-void
.end method

.method private constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinSymbol:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapMacRoman:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapInitialized:Z

    .line 299
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)V

    .line 301
    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 303
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->setFontDescriptor(Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->isEmbedded:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->isDamaged:Z

    .line 306
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->glyphList:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    if-eqz p4, :cond_0

    .line 310
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->close()V

    :cond_0
    return-void
.end method

.method private extractCmapTable()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 663
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getCmap()Lcom/tom_roush/fontbox/ttf/CmapTable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 667
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/CmapTable;->getCmaps()[Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object v0

    .line 668
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    .line 670
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformId()I

    move-result v5

    const/4 v6, 0x3

    if-ne v6, v5, :cond_2

    .line 672
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformEncodingId()I

    move-result v5

    if-ne v1, v5, :cond_1

    iput-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    goto :goto_1

    .line 676
    :cond_1
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformEncodingId()I

    move-result v5

    if-nez v5, :cond_5

    iput-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinSymbol:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    goto :goto_1

    .line 681
    :cond_2
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformId()I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 682
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformEncodingId()I

    move-result v5

    if-nez v5, :cond_3

    iput-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapMacRoman:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    goto :goto_1

    .line 686
    :cond_3
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformId()I

    move-result v5

    if-nez v5, :cond_4

    .line 687
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformEncodingId()I

    move-result v5

    if-nez v5, :cond_4

    iput-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    goto :goto_1

    .line 692
    :cond_4
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformId()I

    move-result v5

    if-nez v5, :cond_5

    .line 693
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getPlatformEncodingId()I

    move-result v5

    if-ne v6, v5, :cond_5

    iput-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapInitialized:Z

    return-void
.end method

.method private generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontBoundingBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v1, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    .line 343
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(FFFF)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 346
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static load(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;Z)V

    return-object v0
.end method

.method public static load(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/File;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    new-instance v1, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;Z)V

    return-object v0
.end method

.method public static load(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    new-instance v1, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;Z)V

    return-object v0
.end method

.method public static loadTTF(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    new-instance v1, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;Z)V

    return-object v0
.end method

.method public static loadTTF(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    new-instance v1, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;Z)V

    return-object v0
.end method


# virtual methods
.method public codeToGID(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->extractCmapTable()V

    .line 554
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->isSymbolic()Z

    move-result v0

    const-string v1, ".notdef"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object p1

    .line 557
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    if-eqz v0, :cond_1

    .line 566
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    .line 570
    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapMacRoman:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->INVERTED_MACOS_ROMAN:Ljava/util/Map;

    .line 577
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapMacRoman:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    .line 580
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v2

    :cond_2
    if-nez v2, :cond_c

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 587
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->nameToGID(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    if-eqz v0, :cond_7

    .line 597
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    instance-of v0, v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    instance-of v0, v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    .line 613
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v2

    goto :goto_1

    .line 599
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 604
    :cond_6
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinUnicode:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    .line 608
    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v2

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinSymbol:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    if-eqz v0, :cond_b

    .line 620
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v0

    if-ltz p1, :cond_a

    const/16 v1, 0xff

    if-gt p1, v1, :cond_a

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinSymbol:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    const v1, 0xf000

    add-int/2addr v1, p1

    .line 629
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v0

    :cond_8
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinSymbol:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    const v1, 0xf100

    add-int/2addr v1, p1

    .line 634
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v0

    :cond_9
    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapWinSymbol:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    const v1, 0xf200

    add-int/2addr v1, p1

    .line 639
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v0

    :cond_a
    move v2, v0

    :cond_b
    if-nez v2, :cond_c

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->cmapMacRoman:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    if-eqz v0, :cond_c

    .line 647
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/CmapSubtable;->getGlyphId(I)I

    move-result v2

    :cond_c
    :goto_2
    return v2
.end method

.method protected encode(I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "No glyph for U+%04X in font %s"

    if-eqz v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->codePointToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->codePointToName(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getNameToCodeMap()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 403
    invoke-virtual {v5, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 406
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/UniUtil;->getUniNameOfCodePoint(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 407
    invoke-virtual {v6, v5}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_1
    :goto_0
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array v0, v2, [B

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-object v0

    .line 395
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getEncodingName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "U+%04X is not available in this font\'s encoding: %s"

    .line 396
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->codePointToName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 422
    invoke-virtual {v4, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 428
    invoke-virtual {v3, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->nameToGID(Ljava/lang/String;)I

    move-result v0

    .line 429
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getGIDToCode()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    new-array p1, v2, [B

    .line 436
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-object p1

    .line 432
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "U+%04X is not available in this font\'s Encoding"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBaseFont()Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    return-object v0
.end method

.method public getFontBoxFont()Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    return-object v0
.end method

.method protected getGIDToCode()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->gidToCode:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    .line 450
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->gidToCode:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 453
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->codeToGID(I)I

    move-result v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->gidToCode:Ljava/util/Map;

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->gidToCode:Ljava/util/Map;

    .line 456
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->gidToCode:Ljava/util/Map;

    return-object v0
.end method

.method public getHeight(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->codeToGID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 380
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyph(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getHeight()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(I)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->codeToGID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 472
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyph(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object p1

    if-nez p1, :cond_0

    .line 477
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    return-object p1

    .line 481
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 489
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->nameToGID(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 495
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 496
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getNumberOfGlyphs()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :catch_0
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 509
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 512
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getGlyph()Lcom/tom_roush/fontbox/ttf/GlyphTable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tom_roush/fontbox/ttf/GlyphTable;->getGlyph(I)Lcom/tom_roush/fontbox/ttf/GlyphData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 515
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/GlyphData;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    .line 519
    :cond_3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    return-object p1
.end method

.method public getTrueTypeFont()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    return-object v0
.end method

.method public getWidthFromFont(I)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->codeToGID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 367
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getAdvanceWidth(I)I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 368
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnitsPerEm()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

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

    .line 539
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->codeToGID(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 526
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->nameToGID(Ljava/lang/String;)I

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

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->isDamaged:Z

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->isEmbedded:Z

    return v0
.end method

.method public readCode(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    return p1
.end method

.method protected readEncodingFromFont()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;-><init>(Lcom/tom_roush/fontbox/afm/FontMetrics;)V

    return-object v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getSymbolicFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getSymbolicFlag()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;

    return-object v0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->getMappedFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->isStandard14()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Symbol"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ZapfDingbats"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 268
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getPostScript()Lcom/tom_roush/fontbox/ttf/PostScriptTable;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x100

    if-gt v2, v3, :cond_6

    .line 272
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;->codeToGID(I)I

    move-result v3

    if-lez v3, :cond_5

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {v0, v3}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getName(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_4

    .line 283
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 285
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_6
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/BuiltInEncoding;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/BuiltInEncoding;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
