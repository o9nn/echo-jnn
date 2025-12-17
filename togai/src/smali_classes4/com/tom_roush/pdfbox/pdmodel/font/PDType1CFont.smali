.class public Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;
.super Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;
.source "PDType1CFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont$FF3ByteSource;
    }
.end annotation


# instance fields
.field private avgWidth:Ljava/lang/Float;

.field private final cffFont:Lcom/tom_roush/fontbox/cff/CFFType1Font;

.field private fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

.field private fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

.field private final fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

.field private final genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

.field private final glyphHeights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final isDamaged:Z

.field private final isEmbedded:Z


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Expected CFFType1Font, got "

    .line 74
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->glyphHeights:Ljava/util/Map;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->avgWidth:Ljava/lang/Float;

    .line 76
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v1

    const-string v2, "PdfBox-Android"

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontFile3()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->toByteArray()[B

    move-result-object v3

    .line 84
    array-length v4, v3

    if-nez v4, :cond_1

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid data for embedded Type1C font "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v3, p1

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 99
    :try_start_0
    new-instance v6, Lcom/tom_roush/fontbox/cff/CFFParser;

    invoke-direct {v6}, Lcom/tom_roush/fontbox/cff/CFFParser;-><init>()V

    .line 100
    new-instance v7, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont$FF3ByteSource;

    invoke-direct {v7, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont$FF3ByteSource;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont$1;)V

    invoke-virtual {v6, v3, v7}, Lcom/tom_roush/fontbox/cff/CFFParser;->parse([BLcom/tom_roush/fontbox/cff/CFFParser$ByteSource;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/fontbox/cff/CFFFont;

    .line 101
    instance-of v6, v3, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    if-eqz v6, :cond_2

    .line 103
    check-cast v3, Lcom/tom_roush/fontbox/cff/CFFType1Font;

    move-object p1, v3

    goto :goto_1

    .line 107
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t read the embedded Type1C font "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    move v0, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->isDamaged:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->cffFont:Lcom/tom_roush/fontbox/cff/CFFType1Font;

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    iput-boolean v4, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->isEmbedded:Z

    goto :goto_3

    .line 127
    :cond_4
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMappers;->instance()Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapper;->getFontBoxFont(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;)Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->getFont()Lcom/tom_roush/fontbox/FontBoxFont;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 131
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/FontMapping;->isFallback()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Using fallback font "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v5, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->isEmbedded:Z

    .line 137
    :goto_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->readEncoding()V

    .line 138
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 139
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->scale(DD)V

    return-void
.end method

.method private generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontBoundingBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    new-instance v1, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    .line 219
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(FFFF)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 222
    invoke-interface {v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getFontBBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method private getAverageCharacterWidth()F
    .locals 1

    const/high16 v0, 0x43fa0000    # 500.0f

    return v0
.end method

.method private getNameInFont(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 422
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/UniUtil;->getUniNameOfCodePoint(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 423
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const-string p1, ".notdef"

    :cond_2
    :goto_0
    return-object p1
.end method


# virtual methods
.method public codeToName(I)Ljava/lang/String;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected encode(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->codePointToName(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getNameInFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getNameToCodeMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, ".notdef"

    .line 351
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    invoke-interface {v3, v1}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-object v0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "No glyph for U+%04X in font %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getEncodingName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v0, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "U+%04X (\'%s\') is not available in this font\'s encoding: %s"

    .line 343
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAverageFontWidth()F
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->avgWidth:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getAverageCharacterWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->avgWidth:Ljava/lang/Float;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->avgWidth:Ljava/lang/Float;

    .line 386
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getBaseFont()Ljava/lang/String;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

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

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    return-object v0
.end method

.method public getCFFType1Font()Lcom/tom_roush/fontbox/cff/CFFType1Font;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->cffFont:Lcom/tom_roush/fontbox/cff/CFFType1Font;

    return-object v0
.end method

.method public getFontBoxFont()Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    return-object v0
.end method

.method public final getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 10

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 268
    invoke-interface {v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getFontMatrix()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->DEFAULT_FONT_MATRIX:Lcom/tom_roush/pdfbox/util/Matrix;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 277
    new-instance v1, Lcom/tom_roush/pdfbox/util/Matrix;

    const/4 v2, 0x0

    .line 278
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v2, 0x2

    .line 279
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v7

    const/4 v2, 0x4

    .line 280
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v8

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v9

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    goto :goto_1

    .line 284
    :cond_0
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getHeight(I)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->codeToName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->glyphHeights:Ljava/util/Map;

    .line 319
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->cffFont:Lcom/tom_roush/fontbox/cff/CFFType1Font;

    if-nez v0, :cond_0

    const-string p1, "PdfBox-Android"

    const-string v0, "No embedded CFF font, returning 0"

    .line 323
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 326
    :cond_0
    invoke-virtual {v0, p1}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/fontbox/cff/Type1CharString;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->glyphHeights:Ljava/util/Map;

    .line 327
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->glyphHeights:Ljava/util/Map;

    .line 331
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ".notdef"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->isStandard14()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "sfthyphen"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    const-string v0, "hyphen"

    .line 175
    invoke-interface {p1, v0}, Lcom/tom_roush/fontbox/FontBoxFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "nbspace"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "space"

    .line 179
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 183
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 185
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method public getStringWidth(Ljava/lang/String;)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->cffFont:Lcom/tom_roush/fontbox/cff/CFFType1Font;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "PdfBox-Android"

    const-string v0, "No embedded CFF font, returning 0"

    .line 366
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 370
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 373
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->codePointToName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->cffFont:Lcom/tom_roush/fontbox/cff/CFFType1Font;

    .line 374
    invoke-virtual {v3, v2}, Lcom/tom_roush/fontbox/cff/CFFType1Font;->getType1CharString(Ljava/lang/String;)Lcom/tom_roush/fontbox/cff/Type1CharString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/fontbox/cff/Type1CharString;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getWidthFromFont(I)F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->codeToName(I)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getNameInFont(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 301
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->getWidth(Ljava/lang/String;)F

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v7, 0x0

    aput p1, v0, v7

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->fontMatrixTransform:Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v0

    move-object v4, v0

    .line 304
    invoke-virtual/range {v1 .. v6}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->transform([FI[FII)V

    aget p1, v0, v7

    return p1
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 191
    invoke-interface {v0, p1}, Lcom/tom_roush/fontbox/FontBoxFont;->hasGlyph(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDamaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->isDamaged:Z

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->isEmbedded:Z

    return v0
.end method

.method public readCode(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    return p1
.end method

.method protected readEncodingFromFont()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->getStandard14AFM()Lcom/tom_roush/fontbox/afm/FontMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;-><init>(Lcom/tom_roush/fontbox/afm/FontMetrics;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1CFont;->genericFont:Lcom/tom_roush/fontbox/FontBoxFont;

    .line 242
    instance-of v1, v0, Lcom/tom_roush/fontbox/EncodedFont;

    if-eqz v1, :cond_1

    .line 244
    check-cast v0, Lcom/tom_roush/fontbox/EncodedFont;

    invoke-interface {v0}, Lcom/tom_roush/fontbox/EncodedFont;->getEncoding()Lcom/tom_roush/fontbox/encoding/Encoding;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;->fromFontBox(Lcom/tom_roush/fontbox/encoding/Encoding;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Type1Encoding;

    move-result-object v0

    return-object v0

    .line 249
    :cond_1
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/StandardEncoding;

    return-object v0
.end method
