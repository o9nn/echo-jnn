.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquareAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDSquareAppearanceHandler.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 13

    .line 57
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquareAppearanceHandler;->getLineWidth()F

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquareAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;

    const/4 v2, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquareAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquareAppearanceHandler;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v10

    .line 66
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getInteriorColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v11

    .line 68
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getConstantOpacity()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquareAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 70
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setBorderLine(FLcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 71
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getBorderEffect()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->getStyle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    new-instance v12, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;

    .line 76
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->getIntensity()F

    move-result v3

    float-to-double v5, v3

    float-to-double v7, v0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquareAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v9

    move-object v3, v12

    move-object v4, v2

    invoke-direct/range {v3 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;DDLcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 77
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getRectDifference()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->createCloudyRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 78
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 79
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getRectDifference()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->setRectDifference(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 80
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v1

    .line 81
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 82
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getMatrix()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquareAppearanceHandler;->handleBorderBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v3

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v4

    .line 89
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v5

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v1

    .line 88
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->addRect(FFFF)V

    .line 92
    :goto_0
    invoke-virtual {v2, v0, v10, v11}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawShape(FZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "PdfBox-Android"

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_1
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 100
    throw v0
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method

.method getLineWidth()F
    .locals 3

    .line 132
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquareAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;

    .line 134
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result v0

    return v0

    .line 141
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    .line 144
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 145
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_1

    .line 147
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
