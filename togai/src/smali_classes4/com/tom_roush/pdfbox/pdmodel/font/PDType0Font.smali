.class public Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
.super Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
.source "PDType0Font.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;


# instance fields
.field private cMap:Lcom/tom_roush/fontbox/cmap/CMap;

.field private cMapUCS2:Lcom/tom_roush/fontbox/cmap/CMap;

.field private final descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

.field private embedder:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;

.field private isCMapPredefined:Z

.field private isDescendantCJK:Z

.field private final noUnicode:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 54
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->noUnicode:Ljava/util/Set;

    .line 182
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DESCENDANT_FONTS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 183
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_3

    .line 187
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 188
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 193
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_1

    .line 197
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 198
    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontFactory;->createDescendantFont(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 203
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->readEncoding()V

    .line 204
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->fetchCMapUCS2()V

    return-void

    .line 200
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing or wrong type in descendant font dictionary"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing descendant font dictionary"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Descendant font array is empty"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing descendant font array"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->noUnicode:Ljava/util/Set;

    if-eqz p5, :cond_0

    .line 224
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->enableVerticalSubstitutions()V

    .line 226
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p0

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZLcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;Z)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->embedder:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;

    .line 227
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->getCIDFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    move-result-object p5

    iput-object p5, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 228
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->readEncoding()V

    .line 229
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->fetchCMapUCS2()V

    if-eqz p4, :cond_2

    if-eqz p3, :cond_1

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 235
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->registerTrueTypeFontForClosing(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {p2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->close()V

    :cond_2
    :goto_0
    return-void
.end method

.method private fetchCMapUCS2()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->isCMapPredefined:Z

    if-eqz v1, :cond_0

    .line 324
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY_H:Lcom/tom_roush/pdfbox/cos/COSName;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY_V:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->isDescendantCJK:Z

    if-eqz v1, :cond_4

    :cond_1
    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->isDescendantCJK:Z

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 337
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getRegistry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 342
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getSupplement()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 355
    :try_start_0
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/CMapManager;->getPredefinedCMap(Ljava/lang/String;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->getRegistry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->getOrdering()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-UCS2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CMapManager;->getPredefinedCMap(Ljava/lang/String;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->cMapUCS2:Lcom/tom_roush/fontbox/cmap/CMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UC2 map for font "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public static load(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Z)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZZZ)V

    return-object v6
.end method

.method public static load(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    new-instance v0, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZZZ)V

    return-object v6
.end method

.method public static load(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 82
    invoke-static {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->load(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Z)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Z)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    new-instance v0, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZZZ)V

    return-object v6
.end method

.method public static loadVertical(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Z)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZZZ)V

    return-object v6
.end method

.method public static loadVertical(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/File;)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    new-instance v0, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/File;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZZZ)V

    return-object v6
.end method

.method public static loadVertical(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    new-instance v0, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZZZ)V

    return-object v6
.end method

.method public static loadVertical(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Z)Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    new-instance v0, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parse(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;ZZZ)V

    return-object v6
.end method

.method private readEncoding()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 282
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 285
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 286
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CMapManager;->getPredefinedCMap(Ljava/lang/String;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->cMap:Lcom/tom_roush/fontbox/cmap/CMap;

    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->isCMapPredefined:Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->readCMap(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->cMap:Lcom/tom_roush/fontbox/cmap/CMap;

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->hasCIDMappings()Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Encoding CMap in font "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PdfBox-Android"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing required CMap"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 303
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 306
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getOrdering()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Adobe"

    .line 307
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;->getRegistry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GB1"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CNS1"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Japan1"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Korea1"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->isDescendantCJK:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public addToSubset(I)V
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->willBeSubset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->embedder:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;

    .line 252
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->addToSubset(I)V

    return-void

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This font was created with subsetting disabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public codeToCID(I)I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 586
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->codeToCID(I)I

    move-result p1

    return p1
.end method

.method public codeToGID(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 597
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->codeToGID(I)I

    move-result p1

    return p1
.end method

.method protected encode(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 426
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->encode(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getAverageFontWidth()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 438
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getAverageFontWidth()F

    move-result v0

    return v0
.end method

.method public getBaseFont()Ljava/lang/String;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

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

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 565
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getCMap()Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->cMap:Lcom/tom_roush/fontbox/cmap/CMap;

    return-object v0
.end method

.method public getCMapUCS2()Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->cMapUCS2:Lcom/tom_roush/fontbox/cmap/CMap;

    return-object v0
.end method

.method public getDescendantFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    return-object v0
.end method

.method public getDisplacement(I)Lcom/tom_roush/pdfbox/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Lcom/tom_roush/pdfbox/util/Vector;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getVerticalDisplacementVectorY(I)F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/tom_roush/pdfbox/util/Vector;-><init>(FF)V

    return-object v0

    .line 457
    :cond_0
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getDisplacement(I)Lcom/tom_roush/pdfbox/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method public getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 402
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 408
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getHeight(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 420
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getHeight(I)F

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 558
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getBaseFont()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 626
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getPath(I)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getPositionVector(I)Lcom/tom_roush/pdfbox/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 445
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getPositionVector(I)Lcom/tom_roush/pdfbox/util/Vector;

    move-result-object p1

    const v0, -0x457ced91    # -0.001f

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/util/Vector;->scale(F)Lcom/tom_roush/pdfbox/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method protected getStandard14Width(I)F
    .locals 1

    .line 470
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getWidth(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 464
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getWidth(I)F

    move-result p1

    return p1
.end method

.method public getWidthFromFont(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 476
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->getWidthFromFont(I)F

    move-result p1

    return p1
.end method

.method public hasExplicitWidth(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 432
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->hasExplicitWidth(I)Z

    move-result p1

    return p1
.end method

.method public hasGlyph(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 632
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->hasGlyph(I)Z

    move-result p1

    return p1
.end method

.method public isDamaged()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 609
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->isDamaged()Z

    move-result v0

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 482
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->isEmbedded()Z

    move-result v0

    return v0
.end method

.method public isStandard14()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVertical()Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->cMap:Lcom/tom_roush/fontbox/cmap/CMap;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->getWMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public readCode(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->cMap:Lcom/tom_roush/fontbox/cmap/CMap;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->readCode(Ljava/io/InputStream;)I

    move-result p1

    return p1

    .line 573
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "required cmap is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->willBeSubset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->embedder:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;

    .line 262
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->subset()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    :cond_0
    return-void

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This font was created with subsetting disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 616
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getDescendantFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getDescendantFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 620
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PostScript name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getBaseFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnicode(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicode(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->isCMapPredefined:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->isDescendantCJK:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->cMapUCS2:Lcom/tom_roush/fontbox/cmap/CMap;

    if-eqz v0, :cond_2

    .line 501
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->codeToCID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->cMapUCS2:Lcom/tom_roush/fontbox/cmap/CMap;

    .line 504
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->toUnicode(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 508
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;

    const-string v2, "PdfBox-Android"

    if-eqz v1, :cond_4

    .line 510
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2;->getTrueTypeFont()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 515
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmapLookup(Z)Lcom/tom_roush/fontbox/ttf/CmapLookup;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 519
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 522
    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->codeToGID(I)I

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->descendantFont:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;

    .line 528
    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;->codeToCID(I)I

    move-result v3

    .line 530
    :goto_0
    invoke-interface {v0, v3}, Lcom/tom_roush/fontbox/ttf/CmapLookup;->getCharCodes(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 531
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 533
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "get unicode from font cmap fail"

    .line 539
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->noUnicode:Ljava/util/Set;

    .line 544
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CID+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->codeToCID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No Unicode mapping for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in font "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->noUnicode:Ljava/util/Set;

    .line 550
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public willBeSubset()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->embedder:Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType2Embedder;->needsSubset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
