.class abstract Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;
.super Ljava/lang/Object;
.source "TrueTypeEmbedder.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/font/Subsetter;


# static fields
.field private static final BASE25:Ljava/lang/String; = "BCDEFGHIJKLMNOPQRSTUVWXYZ"

.field private static final ITALIC:I = 0x1

.field private static final OBLIQUE:I = 0x200


# instance fields
.field protected final cmap:Lcom/tom_roush/fontbox/ttf/CmapSubtable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final cmapLookup:Lcom/tom_roush/fontbox/ttf/CmapLookup;

.field private final document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private final embedSubset:Z

.field protected fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

.field private final subsetCodePoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->subsetCodePoints:Ljava/util/Set;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    iput-boolean p4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->embedSubset:Z

    iput-object p3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 86
    invoke-direct {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->createFontDescriptor(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    .line 88
    invoke-virtual {p0, p3}, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->isEmbeddingPermitted(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_3

    .line 98
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOriginalData()Ljava/io/InputStream;

    move-result-object p4

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 100
    invoke-virtual {p4, v0}, Ljava/io/InputStream;->mark(I)V

    .line 101
    invoke-virtual {p4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "ttcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    .line 104
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Full embedding of TrueType font collections not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    :goto_0
    invoke-virtual {p4}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p4}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOriginalData()Ljava/io/InputStream;

    move-result-object p4

    .line 115
    :goto_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v0, p1, p4, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 116
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object p4, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOriginalDataSize()J

    move-result-wide v1

    invoke-virtual {p1, p4, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSStream;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    .line 117
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontFile2(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    .line 120
    :cond_3
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->BASE_FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmap()Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->cmap:Lcom/tom_roush/fontbox/ttf/CmapSubtable;

    .line 124
    invoke-virtual {p3}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getUnicodeCmapLookup()Lcom/tom_roush/fontbox/ttf/CmapLookup;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->cmapLookup:Lcom/tom_roush/fontbox/ttf/CmapLookup;

    return-void

    .line 90
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This font does not permit embedding"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createFontDescriptor(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOS2Windows()Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 207
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getPostScript()Lcom/tom_roush/fontbox/ttf/PostScriptTable;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 213
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    invoke-direct {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;-><init>()V

    .line 214
    invoke-virtual {v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontName(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHorizontalHeader()Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;

    move-result-object v0

    .line 219
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getIsFixedPitch()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v4, :cond_1

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getNumberOfHMetrics()I

    move-result v4

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFixedPitch(Z)V

    .line 221
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getFsSelection()I

    move-result v4

    and-int/lit16 v4, v4, 0x201

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v5

    .line 222
    :goto_2
    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setItalic(Z)V

    .line 224
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getFamilyClass()I

    move-result v4

    if-eq v4, v6, :cond_4

    const/4 v7, 0x7

    if-eq v4, v7, :cond_4

    const/16 v7, 0xa

    if-eq v4, v7, :cond_3

    const/4 v7, 0x3

    if-eq v4, v7, :cond_4

    const/4 v7, 0x4

    if-eq v4, v7, :cond_4

    const/4 v7, 0x5

    if-eq v4, v7, :cond_4

    goto :goto_3

    .line 234
    :cond_3
    invoke-virtual {v3, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setScript(Z)V

    goto :goto_3

    .line 231
    :cond_4
    invoke-virtual {v3, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setSerif(Z)V

    .line 240
    :goto_3
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getWeightClass()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontWeight(F)V

    .line 242
    invoke-virtual {v3, v6}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setSymbolic(Z)V

    .line 243
    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setNonSymbolic(Z)V

    .line 246
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/PostScriptTable;->getItalicAngle()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setItalicAngle(F)V

    .line 249
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getHeader()Lcom/tom_roush/fontbox/ttf/HeaderTable;

    move-result-object v2

    .line 250
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>()V

    .line 251
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getUnitsPerEm()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v7, v5

    .line 252
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getXMin()S

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 253
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getYMin()S

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 254
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getXMax()S

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 255
    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/HeaderTable;->getYMax()S

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-virtual {v4, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 256
    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontBoundingBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 259
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getAscender()S

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v7

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setAscent(F)V

    .line 260
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/HorizontalHeaderTable;->getDescender()S

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    invoke-virtual {v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setDescent(F)V

    .line 263
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getVersion()I

    move-result v0

    int-to-double v4, v0

    const-wide v8, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_5

    .line 265
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getCapHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v7

    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setCapHeight(F)V

    .line 266
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v7

    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setXHeight(F)V

    goto :goto_5

    :cond_5
    const-string v0, "H"

    .line 270
    invoke-virtual {p1, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 273
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 274
    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 275
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v7

    invoke-virtual {v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setCapHeight(F)V

    goto :goto_4

    .line 280
    :cond_6
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getTypoAscender()I

    move-result v0

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getTypoDescender()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v7

    invoke-virtual {v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setCapHeight(F)V

    :goto_4
    const-string v0, "x"

    .line 282
    invoke-virtual {p1, v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 285
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 286
    invoke-virtual {p1, v0, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 287
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v7

    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setXHeight(F)V

    goto :goto_5

    .line 292
    :cond_7
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getTypoAscender()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    mul-float/2addr p1, v7

    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setXHeight(F)V

    .line 297
    :goto_5
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontBoundingBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p1

    const v0, 0x3e051eb8    # 0.13f

    mul-float/2addr p1, v0

    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setStemV(F)V

    return-object v3

    .line 210
    :cond_8
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "post table is missing in font "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 205
    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "os2 table is missing in font "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isSubsettingPermitted(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOS2Windows()Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOS2Windows()Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getFsType()S

    move-result p1

    const/16 v0, 0x100

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public addToSubset(I)V
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->subsetCodePoints:Ljava/util/Set;

    .line 324
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildFontFile2(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {v0, v1, p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/InputStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 135
    :try_start_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createInputStream()Lcom/tom_roush/pdfbox/cos/COSInputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    new-instance v1, Lcom/tom_roush/fontbox/ttf/TTFParser;

    invoke-direct {v1}, Lcom/tom_roush/fontbox/ttf/TTFParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/tom_roush/fontbox/ttf/TTFParser;->parseEmbedded(Ljava/io/InputStream;)Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 137
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->isEmbeddingPermitted(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 143
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->createFontDescriptor(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :cond_0
    invoke-static {p1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 150
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LENGTH1:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOriginalDataSize()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSStream;->setLong(Lcom/tom_roush/pdfbox/cos/COSName;J)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    .line 151
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->setFontFile2(Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;)V

    return-void

    .line 139
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This font does not permit embedding"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    .line 148
    :goto_0
    invoke-static {p1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    throw v0
.end method

.method protected abstract buildSubset(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->fontDescriptor:Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    return-object v0
.end method

.method public getTag(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-wide/16 v2, 0x19

    .line 398
    div-long v4, v0, v2

    .line 399
    rem-long/2addr v0, v2

    long-to-int v0, v0

    const-string v1, "BCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 400
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move-wide v0, v4

    goto :goto_0

    .line 405
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    const/16 v2, 0x41

    .line 407
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v0, 0x2b

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTrueTypeFont()Lcom/tom_roush/fontbox/ttf/TrueTypeFont;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    return-object v0
.end method

.method isEmbeddingPermitted(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOS2Windows()Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->getOS2Windows()Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/ttf/OS2WindowsMetricsTable;->getFsType()S

    move-result p1

    and-int/lit8 v0, p1, 0xf

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x200

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public needsSubset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->embedSubset:Z

    return v0
.end method

.method public subset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 330
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->isSubsettingPermitted(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->embedSubset:Z

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "head"

    .line 342
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hhea"

    .line 343
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "loca"

    .line 344
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "maxp"

    .line 345
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "cvt "

    .line 346
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "prep"

    .line 347
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "glyf"

    .line 348
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "hmtx"

    .line 349
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "fpgm"

    .line 350
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "gasp"

    .line 352
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v1, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    invoke-direct {v1, v2, v0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;-><init>(Lcom/tom_roush/fontbox/ttf/TrueTypeFont;Ljava/util/List;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->subsetCodePoints:Ljava/util/Set;

    .line 356
    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->addAll(Ljava/util/Set;)V

    .line 359
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->getGIDMap()Ljava/util/Map;

    move-result-object v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->getTag(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-virtual {v1, v2}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->setPrefix(Ljava/lang/String;)V

    .line 364
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 365
    invoke-virtual {v1, v3}, Lcom/tom_roush/fontbox/ttf/TTFSubsetter;->writeToStream(Ljava/io/OutputStream;)V

    .line 368
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->buildSubset(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/TrueTypeEmbedder;->ttf:Lcom/tom_roush/fontbox/ttf/TrueTypeFont;

    .line 369
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/ttf/TrueTypeFont;->close()V

    return-void

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Subsetting is disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This font does not permit subsetting"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
