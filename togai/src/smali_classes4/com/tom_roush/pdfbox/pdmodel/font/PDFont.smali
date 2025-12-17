.class public abstract Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;
.super Ljava/lang/Object;
.source "PDFont.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
.implements Lcom/tom_roush/pdfbox/pdmodel/font/PDFontLike;


# static fields
.field protected static final DEFAULT_FONT_MATRIX:Lcom/tom_roush/pdfbox/util/Matrix;


# instance fields
.field private final afmStandard14:Lcom/tom_roush/fontbox/afm/FontMetrics;

.field private avgFontWidth:F

.field private final codeToWidthMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected final dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

.field private fontWidthOfSpace:F

.field private final toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

.field private widths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 53
    new-instance v7, Lcom/tom_roush/pdfbox/util/Matrix;

    const v1, 0x3a83126f    # 0.001f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x3a83126f    # 0.001f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    sput-object v7, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->DEFAULT_FONT_MATRIX:Lcom/tom_roush/pdfbox/util/Matrix;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    .line 74
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 75
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->afmStandard14:Lcom/tom_roush/fontbox/afm/FontMetrics;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->codeToWidthMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 110
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->codeToWidthMap:Ljava/util/Map;

    .line 113
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->getAFM(Ljava/lang/String;)Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->afmStandard14:Lcom/tom_roush/fontbox/afm/FontMetrics;

    .line 114
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->loadFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    .line 115
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->loadUnicodeCmap()Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    .line 87
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 88
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    .line 90
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->getAFM(Ljava/lang/String;)Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->afmStandard14:Lcom/tom_roush/fontbox/afm/FontMetrics;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->buildFontDescriptor(Lcom/tom_roush/fontbox/afm/FontMetrics;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    .line 97
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->codeToWidthMap:Ljava/util/Map;

    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No AFM for font "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 120
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_DESC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->afmStandard14:Lcom/tom_roush/fontbox/afm/FontMetrics;

    if-eqz v0, :cond_1

    .line 128
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1FontEmbedder;->buildFontDescriptor(Lcom/tom_roush/fontbox/afm/FontMetrics;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadUnicodeCmap()Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 7

    const-string v0, "Identity"

    const-string v1, "PdfBox-Android"

    const-string v2, "Invalid ToUnicode CMap in font "

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 138
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->TO_UNICODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 147
    :cond_0
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->readCMap(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 148
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cmap/CMap;->hasUnicodeMappings()Z

    move-result v3

    if-nez v3, :cond_4

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cmap/CMap;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cmap/CMap;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 152
    :goto_0
    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cmap/CMap;->getOrdering()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/tom_roush/fontbox/cmap/CMap;->getOrdering()Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 153
    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 155
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY_H:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 156
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY_V:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 157
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    :cond_3
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY_H:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CMapManager;->getPredefinedCMap(Ljava/lang/String;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v4

    const-string v0, "Using predefined identity CMap instead"

    .line 161
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not read ToUnicode CMap in font "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object v4
.end method


# virtual methods
.method public abstract addToSubset(I)V
.end method

.method protected abstract encode(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final encode(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 328
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 330
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 333
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->encode(I)[B

    move-result-object v3

    .line 334
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 336
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 618
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAverageFontWidth()F
    .locals 7

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->avgFontWidth:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 395
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTHS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    .line 398
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 400
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    .line 401
    instance-of v6, v5, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v6, :cond_1

    .line 403
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 404
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v5

    cmpl-float v6, v5, v1

    if-lez v6, :cond_1

    add-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    move v4, v3

    :cond_3
    cmpl-float v0, v3, v1

    if-lez v0, :cond_4

    div-float/2addr v3, v4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->avgFontWidth:F

    :goto_2
    return v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDisplacement(I)Lcom/tom_roush/pdfbox/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/tom_roush/pdfbox/util/Vector;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidth(I)F

    move-result p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/pdfbox/util/Vector;-><init>(FF)V

    return-object v0
.end method

.method public getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    return-object v0
.end method

.method public getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 1

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->DEFAULT_FONT_MATRIX:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getPositionVector(I)Lcom/tom_roush/pdfbox/util/Vector;
    .locals 1

    .line 236
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Horizontal fonts have no position vector"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSpaceWidth()F
    .locals 3

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 540
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TO_UNICODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    .line 542
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->getSpaceMapping()I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    .line 545
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidth(I)F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidth(I)F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    :cond_1
    :goto_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 556
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidthFromFont(I)F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 561
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getAverageFontWidth()F

    move-result v0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PdfBox-Android"

    const-string v2, "Can\'t determine the width of the space character, assuming 250"

    .line 567
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    :cond_2
    :goto_1
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontWidthOfSpace:F

    return v0
.end method

.method protected final getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->afmStandard14:Lcom/tom_roush/fontbox/afm/FontMetrics;

    return-object v0
.end method

.method protected abstract getStandard14Width(I)F
.end method

.method public getStringWidth(Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->encode(Ljava/lang/String;)[B

    move-result-object p1

    .line 365
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    .line 368
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 370
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->readCode(Ljava/io/InputStream;)I

    move-result v1

    .line 371
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidth(I)F

    move-result v1

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public getSubType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 498
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SUBTYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getToUnicodeCMap()Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 490
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth(I)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->codeToWidthMap:Ljava/util/Map;

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 267
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTHS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MISSING_WIDTH:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 269
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST_CHAR:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 270
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->LAST_CHAR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v3, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v1

    .line 271
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v3, p1, v0

    if-lez v2, :cond_3

    if-lt p1, v0, :cond_3

    if-gt p1, v1, :cond_3

    if-ge v3, v2, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 278
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->codeToWidthMap:Ljava/util/Map;

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 284
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 288
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getMissingWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->codeToWidthMap:Ljava/util/Map;

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 295
    :cond_4
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isStandard14()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStandard14Width(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->codeToWidthMap:Ljava/util/Map;

    .line 298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 303
    :cond_5
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getWidthFromFont(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->codeToWidthMap:Ljava/util/Map;

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method protected final getWidths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->widths:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 510
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->WIDTHS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->convertFloatCOSArrayToList(Lcom/tom_roush/pdfbox/cos/COSArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->widths:Ljava/util/List;

    goto :goto_0

    .line 517
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->widths:Ljava/util/List;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->widths:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isStandard14()Z
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/Standard14Fonts;->containsName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract isVertical()Z
.end method

.method protected final readCMap(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/fontbox/cmap/CMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/CMapManager;->getPredefinedCMap(Ljava/lang/String;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object p1

    return-object p1

    .line 207
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 213
    :try_start_0
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CMapManager;->parseCMap(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 219
    throw p1

    .line 223
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Expected Name or Stream"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract readCode(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final setFontDescriptor(Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    return-void
.end method

.method public abstract subset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnicode(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    .line 460
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Identity-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TO_UNICODE:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 461
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    instance-of v0, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    .line 462
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cmap/CMap;->hasUnicodeMappings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    int-to-char p1, p1

    aput-char p1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicodeCMap:Lcom/tom_roush/fontbox/cmap/CMap;

    .line 474
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->toUnicode(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public toUnicode(ILcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->toUnicode(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract willBeSubset()Z
.end method
