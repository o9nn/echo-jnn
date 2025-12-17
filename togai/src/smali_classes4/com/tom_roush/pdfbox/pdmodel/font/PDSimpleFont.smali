.class public abstract Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;
.super Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
.source "PDSimpleFont.java"


# instance fields
.field protected encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

.field protected glyphList:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

.field private isSymbolic:Ljava/lang/Boolean;

.field private final noUnicode:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->noUnicode:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 48
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->noUnicode:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->noUnicode:Ljava/util/Set;

    .line 63
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->assignGlyphList(Ljava/lang/String;)V

    return-void
.end method

.method private assignGlyphList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ZapfDingbats"

    .line 431
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 433
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getZapfDingbats()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->glyphList:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    goto :goto_0

    .line 437
    :cond_0
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->glyphList:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    :goto_0
    return-void
.end method


# virtual methods
.method public addToSubset(I)V
    .locals 0

    .line 398
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    return-object v0
.end method

.method public abstract getFontBoxFont()Lcom/tom_roush/fontbox/FontBoxFont;
.end method

.method public getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->glyphList:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    return-object v0
.end method

.method public abstract getPath(Ljava/lang/String;)Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final getStandard14Width(I)F
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 323
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".notdef"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x437a0000    # 250.0f

    return p1

    :cond_0
    const-string v0, "nbspace"

    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "space"

    goto :goto_0

    :cond_1
    const-string v0, "sfthyphen"

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "hyphen"

    .line 344
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/afm/FontMetrics;->getCharacterWidth(Ljava/lang/String;)F

    move-result p1

    return p1

    .line 346
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No AFM"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getSymbolicFlag()Ljava/lang/Boolean;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->isSymbolic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasExplicitWidth(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTHS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST_CHAR:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 420
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getWidths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract hasGlyph(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected isFontSymbolic()Ljava/lang/Boolean;
    .locals 5

    .line 177
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getSymbolicFlag()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->isStandard14()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->getMappedFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Symbol"

    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ZapfDingbats"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    if-nez v0, :cond_5

    .line 192
    instance-of v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFont;

    if-eqz v0, :cond_4

    .line 198
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 194
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PDFBox bug: encoding should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_5
    instance-of v3, v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    if-nez v3, :cond_c

    instance-of v3, v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;

    if-nez v3, :cond_c

    instance-of v3, v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;

    if-eqz v3, :cond_6

    goto :goto_1

    .line 206
    :cond_6
    instance-of v3, v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;

    if-eqz v3, :cond_b

    .line 209
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->getDifferences()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ".notdef"

    .line 211
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_0

    .line 215
    :cond_8
    sget-object v4, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;

    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/WinAnsiEncoding;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;

    .line 216
    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/MacRomanEncoding;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;

    .line 217
    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 219
    :cond_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 223
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0

    .line 204
    :cond_c
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isStandard14()Z
    .locals 4

    .line 354
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;

    .line 357
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->getDifferences()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 361
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->getBaseEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v1

    .line 362
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;->getDifferences()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 364
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 371
    :cond_1
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isStandard14()Z

    move-result v0

    return v0
.end method

.method public final isSymbolic()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->isSymbolic:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->isFontSymbolic()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->isSymbolic:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 165
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->isSymbolic:Ljava/lang/Boolean;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->isSymbolic:Ljava/lang/Boolean;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVertical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected readEncoding()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 85
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 88
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getInstance(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    if-nez v1, :cond_5

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->readEncodingFromFont()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    goto :goto_2

    .line 95
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_4

    .line 97
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 99
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getSymbolicFlag()Ljava/lang/Boolean;

    move-result-object v1

    .line 101
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    invoke-static {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getInstance(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->readEncodingFromFont()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 113
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 115
    :cond_3
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;ZLcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)V

    iput-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->readEncodingFromFont()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 122
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->getMappedFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->assignGlyphList(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract readEncodingFromFont()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public subset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toUnicode(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->toUnicode(ILcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toUnicode(ILcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->glyphList:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    .line 259
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->glyphList:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    .line 269
    :goto_0
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicode(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    :cond_2
    move-object v0, v1

    :cond_3
    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->noUnicode:Ljava/util/Set;

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->noUnicode:Ljava/util/Set;

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p2, "PdfBox-Android"

    if-eqz v0, :cond_4

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No Unicode mapping for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") in font "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 300
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No Unicode mapping for character code "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in font "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 305
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-object v1
.end method

.method public willBeSubset()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
