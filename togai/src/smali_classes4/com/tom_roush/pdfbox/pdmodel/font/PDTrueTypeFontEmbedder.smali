.class final Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;
.super Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;
.source "PDTrueTypeFontEmbedder.java"


# instance fields
.field private final fontEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Z)V

    .line 58
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->TRUE_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p2, p1, p3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 60
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object p1

    iput-object p4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->fontEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 62
    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 63
    iget-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-virtual {p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setSymbolic(Z)V

    .line 64
    iget-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setNonSymbolic(Z)V

    .line 67
    sget-object p3, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object p4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-virtual {p2, p3, p4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 70
    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->setWidths(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;)V

    return-void
.end method

.method private setWidths(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    .line 79
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalMetrics()Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->getFontEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getCodeToNameMap()Ljava/util/Map;

    move-result-object v2

    .line 83
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 84
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    sub-int v6, v4, v3

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_0

    .line 89
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 97
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-lt v8, v3, :cond_1

    if-gt v8, v4, :cond_1

    .line 101
    invoke-virtual {p2, v9}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-virtual {v8, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 103
    iget-object v9, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->cmapLookup:Lcom/tom_roush/fontbox/ttf/CmapLookup;

    invoke-interface {v9, v8}, Lcom/tom_roush/fontbox/ttf/CmapLookup;->getGlyphId(I)I

    move-result v8

    .line 104
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v3

    .line 105
    invoke-virtual {v0, v8}, Lcom/tom_roush/fontbox/ttf/HorizontalMetricsTable;->getAdvanceWidth(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 104
    invoke-interface {v5, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 109
    :cond_2
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST_CHAR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 110
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->LAST_CHAR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    .line 111
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTHS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {v5}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method


# virtual methods
.method protected buildSubset(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 127
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getFontEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDTrueTypeFontEmbedder;->fontEncoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    return-object v0
.end method
