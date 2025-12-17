.class public Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;
.super Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;
.source "PDType3Font.java"


# instance fields
.field private charProcs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

.field private fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

.field private final resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

.field private resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    .line 76
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->readEncoding()V

    return-void
.end method

.method private checkFontMatrixValues(Lcom/tom_roush/pdfbox/cos/COSArray;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 253
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->toList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 259
    instance-of v1, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 6

    .line 324
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getFontBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "PdfBox-Android"

    const-string v1, "FontBBox missing, returning empty rectangle"

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-direct {v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>()V

    return-object v0

    .line 330
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 331
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getCharProcs()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 337
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 339
    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSStream(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 342
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;

    invoke-direct {v4, p0, v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 345
    :try_start_0
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->getGlyphBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v4

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 350
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 353
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v4

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 352
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 355
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v4

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 354
    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 357
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v4

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 356
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :cond_3
    new-instance v1, Lcom/tom_roush/fontbox/util/BoundingBox;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    .line 368
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/tom_roush/fontbox/util/BoundingBox;-><init>(FFFF)V

    return-object v1
.end method


# virtual methods
.method protected encode(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented: Type3"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    if-nez v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->generateBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->fontBBox:Lcom/tom_roush/fontbox/util/BoundingBox;

    return-object v0
.end method

.method public getCharProc(I)Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;
    .locals 2

    .line 393
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getCharProcs()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getCharProcs()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSStream(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 399
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;

    invoke-direct {v1, p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;-><init>(Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;Lcom/tom_roush/pdfbox/cos/COSStream;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getCharProcs()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->charProcs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->CHAR_PROCS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->charProcs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->charProcs:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDisplacement(I)Lcom/tom_roush/pdfbox/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    new-instance v1, Lcom/tom_roush/pdfbox/util/Vector;

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getWidth(I)F

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/tom_roush/pdfbox/util/Vector;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/util/Matrix;->transform(Lcom/tom_roush/pdfbox/util/Vector;)Lcom/tom_roush/pdfbox/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method public getFontBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_BBOX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 305
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 307
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFontBoxFont()Lcom/tom_roush/fontbox/FontBoxFont;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for Type 3 fonts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT_MATRIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 245
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->checkFontMatrixValues(Lcom/tom_roush/pdfbox/cos/COSArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->createMatrix(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_0
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->fontMatrix:Lcom/tom_roush/pdfbox/util/Matrix;

    return-object v0
.end method

.method public getHeight(I)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 200
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getFontBoundingBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    cmpl-float v2, v1, v0

    if-nez v2, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getCapHeight()F

    move-result v1

    :cond_1
    cmpl-float v2, v1, v0

    if-nez v2, :cond_2

    .line 212
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getAscent()F

    move-result v1

    :cond_2
    cmpl-float v2, v1, v0

    if-nez v2, :cond_3

    .line 216
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getXHeight()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 219
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getDescent()F

    move-result p1

    sub-float/2addr v1, p1

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAME:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

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

    .line 122
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not supported for Type 3 fonts"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RESOURCES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 288
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 290
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->resourceCache:Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Lcom/tom_roush/pdfbox/pdmodel/ResourceCache;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->resources:Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    return-object v0
.end method

.method public getWidth(I)F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST_CHAR:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->LAST_CHAR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v3, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v1

    .line 150
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getWidths()Ljava/util/List;

    move-result-object v2

    .line 151
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-lt p1, v0, :cond_2

    if-gt p1, v1, :cond_2

    sub-int/2addr p1, v0

    .line 153
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    .line 157
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_1

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getMissingWidth()F

    move-result p1

    return p1

    .line 169
    :cond_3
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getWidthFromFont(I)F

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

    .line 177
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getCharProc(I)Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->getContentStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->getWidth()F

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasGlyph(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getCharProcs()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getCharProcs()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSStream(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isDamaged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isFontSymbolic()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isStandard14()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readCode(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    return p1
.end method

.method protected final readEncoding()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODING:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 89
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 92
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getInstance(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v1

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 93
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    if-nez v1, :cond_1

    .line 95
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

    goto :goto_0

    .line 98
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/DictionaryEncoding;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->encoding:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    .line 102
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;->getAdobeGlyphList()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->glyphList:Lcom/tom_roush/pdfbox/pdmodel/font/encoding/GlyphList;

    return-void
.end method

.method protected readEncodingFromFont()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported for Type 3 fonts"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
