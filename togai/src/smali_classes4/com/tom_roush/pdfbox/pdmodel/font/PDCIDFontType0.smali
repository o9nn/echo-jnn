.class public Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;
.super Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;
.source "PDCIDFontType0.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0$FF3ByteSource;
    }
.end annotation


# instance fields
.field private avgWidth:Ljava/lang/Float;

.field private cid2gid:[I

.field private final cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

.field private fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

.field private fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

.field private final fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

.field private final glyphHeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final isDamaged:Z

.field private final isEmbedded:Z

.field private final t1Font:Lcom/tom_roush/fontbox/FontBoxFont;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;)V

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->glyphHeights:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->avgWidth:Ljava/lang/Float;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cid2gid:[I

    .line 74
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFile3()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x1

    const-string v2, "PdfBox-Android"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 87
    array-length v4, v0

    if-lez v4, :cond_1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x25

    if-ne v4, v5, :cond_1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Found PFB but expected embedded CFF font "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, p1

    move p2, v1

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_2

    .line 95
    new-instance v4, Lcom/tom_roush/fontbox/cff/CFFParser;

    invoke-direct {v4}, Lcom/tom_roush/fontbox/cff/CFFParser;-><init>()V

    .line 98
    :try_start_0
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0$FF3ByteSource;

    invoke-direct {v5, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0$FF3ByteSource;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0$1;)V

    invoke-virtual {v4, v0, v5}, Lcom/tom_roush/fontbox/cff/CFFParser;->parse([BLcom/tom_roush/fontbox/cff/CFFParser$ByteSource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/fontbox/cff/CFFFont;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t read the embedded CFF font "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_2
    move p2, v3

    :goto_3
    if-eqz v0, :cond_4

    .line 110
    instance-of p2, v0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    if-eqz p2, :cond_3

    .line 112
    check-cast v0, Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    goto :goto_4

    :cond_3
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 120
    :goto_4
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->readCIDToGIDMap()[I

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cid2gid:[I

    iput-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isEmbedded:Z

    iput-boolean v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isDamaged:Z

    goto :goto_6

    .line 127
    :cond_4
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getBaseFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v4

    .line 129
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getCIDSystemInfo()Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;

    move-result-object v5

    .line 128
    invoke-interface {v0, v1, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;->getCIDFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDSystemInfo;)Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->isCIDFont()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 133
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/OpenTypeFont;->getCFF()Lcom/tom_roush/fontbox/ttf/CFFTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/ttf/CFFTable;->getFont()Lcom/tom_roush/fontbox/cff/CFFFont;

    move-result-object v1

    .line 134
    instance-of v4, v1, Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    if-eqz v4, :cond_5

    .line 136
    check-cast v1, Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    goto :goto_5

    .line 143
    :cond_5
    check-cast v1, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    goto :goto_5

    :cond_6
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    .line 152
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->getTrueTypeFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 156
    :goto_5
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/CIDFontMapping;->isFallback()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Using fallback "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/tom_roush/fontbox/FontBoxFont;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " for CID-keyed font "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 159
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput-boolean v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isEmbedded:Z

    iput-boolean p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isDamaged:Z

    .line 164
    :goto_6
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 165
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->scale(DD)V

    return-void
.end method

.method private generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 5

    .line 225
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontBoundingBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    new-instance v1, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    .line 230
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(FFFF)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 241
    invoke-interface {v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 245
    :catch_0
    new-instance v0, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>()V

    return-object v0
.end method

.method private getAverageCharacterWidth()F
    .locals 1

    const/high16 v0, 0x43fa0000    # 500.0f

    return v0
.end method

.method private getGlyphName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->toUnicode(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ".notdef"

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/UniUtil;->getUniNameOfCodePoint(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public codeToCID(I)I
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->parent:Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType0Font;->getCMap()Lcom/tom_roush/fontbox/cmap/CMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cmap/CMap;->toCID(I)I

    move-result p1

    return p1
.end method

.method public codeToGID(I)I
    .locals 1

    .line 379
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->codeToCID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getCharset()Lcom/tom_roush/fontbox/cff/CFFCharset;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFCharset;->getGIDForCID(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public encode(I)[B
    .locals 0

    .line 398
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAverageFontWidth()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->avgWidth:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getAverageCharacterWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->avgWidth:Ljava/lang/Float;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->avgWidth:Ljava/lang/Float;

    .line 461
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    return-object v0
.end method

.method public getCFFFont()Lcom/tom_roush/fontbox/cff/CFFFont;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 259
    instance-of v1, v0, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    if-eqz v1, :cond_1

    .line 261
    check-cast v0, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFontBoxFont()Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    return-object v0
.end method

.method public final getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getFontMatrix()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 182
    invoke-interface {v1}, Lcom/tom_roush/fontbox/FontBoxFont;->getFontMatrix()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_1

    .line 190
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 192
    new-instance v2, Lcom/tom_roush/pdfbox/util/Matrix;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/4 v3, 0x2

    .line 193
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v8

    const/4 v3, 0x4

    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v9

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v10

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    iput-object v2, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    goto :goto_1

    .line 198
    :cond_1
    new-instance v1, Lcom/tom_roush/pdfbox/util/Matrix;

    const v12, 0x3a83126f    # 0.001f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, 0x3a83126f    # 0.001f

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    iput-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    goto :goto_1

    .line 186
    :catch_0
    new-instance v1, Lcom/tom_roush/pdfbox/util/Matrix;

    const v3, 0x3a83126f    # 0.001f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3a83126f    # 0.001f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    return-object v1

    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v1
.end method

.method public getHeight(I)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->codeToCID(I)I

    move-result p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->glyphHeights:Ljava/util/Map;

    .line 442
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/Type2CharString;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->glyphHeights:Ljava/util/Map;

    .line 445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->glyphHeights:Ljava/util/Map;

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getPath(I)Landroid/graphics/Path;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->codeToCID(I)I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cid2gid:[I

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isEmbedded:Z

    if-eqz v2, :cond_0

    .line 328
    aget v0, v1, v0

    .line 330
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    :cond_1
    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isEmbedded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 335
    instance-of v2, v1, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    if-eqz v2, :cond_2

    .line 337
    check-cast v1, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->getPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 341
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getGlyphName(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFCIDFont;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/CIDKeyedType2CharString;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 297
    instance-of v1, v0, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    if-eqz v1, :cond_1

    .line 299
    check-cast v0, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWidthFromFont(I)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->codeToCID(I)I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->cidFont:Lcom/tom_roush/fontbox/cff/CFFCIDFont;

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->getWidth()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isEmbedded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 410
    instance-of v2, v1, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    if-eqz v2, :cond_1

    .line 412
    check-cast v1, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 416
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getGlyphName(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->getWidth(Ljava/lang/String;)F

    move-result p1

    .line 419
    :goto_1
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    .line 420
    invoke-virtual {p1, v0, v0}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->transform(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 421
    iget p1, v0, Landroid/graphics/PointF;->x:F

    return p1
.end method

.method public hasGlyph(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->codeToCID(I)I

    move-result v0

    .line 349
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {v1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->getGID()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isEmbedded:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 354
    instance-of v4, v1, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    if-eqz v4, :cond_3

    .line 356
    check-cast v1, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    invoke-virtual {v1, v0}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType2CharString(I)Lcom/tom_roush/fontbox/cff/Type2CharString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/fontbox/cff/Type2CharString;->getGID()I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->t1Font:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 360
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->getGlyphName(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDamaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isDamaged:Z

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDCIDFontType0;->isEmbedded:Z

    return v0
.end method
