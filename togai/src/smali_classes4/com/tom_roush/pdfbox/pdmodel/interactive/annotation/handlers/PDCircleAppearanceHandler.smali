.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCircleAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDCircleAppearanceHandler.java"


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
    .locals 22

    move-object/from16 v1, p0

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCircleAppearanceHandler;->getLineWidth()F

    move-result v0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCircleAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;

    const/4 v3, 0x0

    .line 63
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCircleAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v3

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCircleAppearanceHandler;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v11

    .line 66
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getInteriorColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v12

    .line 68
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getConstantOpacity()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCircleAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 70
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setBorderLine(FLcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 71
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getBorderEffect()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->getStyle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "C"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    new-instance v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;

    .line 76
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->getIntensity()F

    move-result v4

    float-to-double v6, v4

    float-to-double v8, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCircleAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v10

    move-object v4, v13

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;DDLcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 77
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getRectDifference()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->createCloudyEllipse(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 78
    invoke-virtual {v13}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 79
    invoke-virtual {v13}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getRectDifference()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->setRectDifference(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 80
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v2

    .line 81
    invoke-virtual {v13}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 82
    invoke-virtual {v13}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getMatrix()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    goto/16 :goto_0

    .line 89
    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCircleAppearanceHandler;->handleBorderBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationSquareCircle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v13

    .line 93
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v14

    .line 95
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v15

    .line 96
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v10

    .line 98
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v9, v13, v4

    .line 99
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v4

    div-float/2addr v4, v5

    add-float v16, v14, v4

    .line 105
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v4

    div-float/2addr v4, v5

    const v6, 0x3f0e38cc

    mul-float v17, v4, v6

    .line 106
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v2

    div-float/2addr v2, v5

    mul-float/2addr v2, v6

    .line 108
    invoke-virtual {v3, v9, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    add-float v18, v9, v2

    add-float v19, v16, v17

    move-object v4, v3

    move/from16 v5, v18

    move v6, v10

    move v7, v15

    move/from16 v8, v19

    move/from16 v20, v9

    move v9, v15

    move/from16 v21, v10

    move/from16 v10, v16

    .line 109
    invoke-virtual/range {v4 .. v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    sub-float v17, v16, v17

    move-object v4, v3

    move v5, v15

    move/from16 v6, v17

    move/from16 v7, v18

    move v8, v14

    move/from16 v9, v20

    move v10, v14

    .line 110
    invoke-virtual/range {v4 .. v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    sub-float v2, v20, v2

    move-object v4, v3

    move v5, v2

    move v6, v14

    move v7, v13

    move/from16 v8, v17

    move v9, v13

    move/from16 v10, v16

    .line 111
    invoke-virtual/range {v4 .. v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    move-object v4, v3

    move v5, v13

    move/from16 v6, v19

    move v7, v2

    move/from16 v8, v21

    move/from16 v9, v20

    move/from16 v10, v21

    .line 112
    invoke-virtual/range {v4 .. v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    .line 113
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    .line 116
    :goto_0
    invoke-virtual {v3, v0, v11, v12}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawShape(FZZ)V
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
    const-string v2, "PdfBox-Android"

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :goto_1
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    throw v0
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method

.method getLineWidth()F
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDCircleAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;

    .line 158
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result v0

    return v0

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    .line 168
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 169
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_1

    .line 171
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
