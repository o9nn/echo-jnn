.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquigglyAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDSquigglyAppearanceHandler.java"


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

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquigglyAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;

    .line 58
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getQuadPoints()[F

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->getAnnotationBorder(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;

    move-result-object v3

    .line 69
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 70
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto/16 :goto_9

    .line 74
    :cond_2
    iget v5, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_3

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 77
    iput v5, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x1

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    move v11, v5

    move v9, v8

    move v10, v9

    move v8, v7

    .line 88
    :goto_0
    array-length v12, v2

    const/4 v13, 0x2

    div-int/2addr v12, v13

    const/4 v14, 0x1

    if-ge v11, v12, :cond_4

    mul-int/lit8 v12, v11, 0x2

    .line 90
    aget v13, v2, v12

    add-int/2addr v12, v14

    .line 91
    aget v12, v2, v12

    .line 92
    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 93
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 94
    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 95
    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 97
    :cond_4
    iget v11, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v9, v11

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 98
    iget v9, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v9, v12

    sub-float/2addr v10, v9

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 99
    iget v9, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v9, v12

    add-float/2addr v7, v9

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 100
    iget v3, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v3, v12

    add-float/2addr v8, v3

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 107
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquigglyAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 109
    :try_start_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getConstantOpacity()F

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v7, p0

    :try_start_2
    invoke-virtual {v7, v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquigglyAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 111
    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    .line 118
    :goto_1
    array-length v0, v2

    div-int/lit8 v0, v0, 0x8

    if-ge v5, v0, :cond_5

    mul-int/lit8 v0, v5, 0x8

    add-int/lit8 v4, v0, 0x1

    .line 124
    aget v4, v2, v4

    add-int/lit8 v8, v0, 0x5

    aget v9, v2, v8

    sub-float/2addr v4, v9

    .line 125
    new-instance v9, Lcom/tom_roush/pdfbox/util/Matrix;

    const/high16 v10, 0x42200000    # 40.0f

    div-float v16, v4, v10

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v11, 0x3fe66666    # 1.8f

    div-float v19, v16, v11

    add-int/lit8 v11, v0, 0x4

    aget v20, v2, v11

    aget v21, v2, v8

    move-object v15, v9

    invoke-direct/range {v15 .. v21}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    invoke-virtual {v3, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 130
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDSquigglyAppearanceHandler;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 131
    new-instance v9, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    add-int/lit8 v11, v0, 0x2

    aget v12, v2, v11

    aget v15, v2, v0

    sub-float/2addr v12, v15

    div-float/2addr v12, v4

    mul-float/2addr v12, v10

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v12, v15

    const/high16 v15, 0x41500000    # 13.0f

    const/high16 v1, -0x41000000    # -0.5f

    invoke-direct {v9, v1, v1, v12, v15}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    invoke-virtual {v8, v9}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 132
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    invoke-virtual {v8, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    move v9, v11

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 133
    invoke-static {v10, v11, v10, v11}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getTranslateInstance(DD)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    .line 134
    invoke-virtual {v3, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 140
    :try_start_3
    new-instance v10, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;

    invoke-direct {v10, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 141
    :try_start_4
    new-instance v11, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;

    invoke-direct {v11}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;-><init>()V

    .line 142
    new-instance v12, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v14, 0x41200000    # 10.0f

    invoke-direct {v12, v6, v6, v14, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    invoke-virtual {v11, v12}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 143
    invoke-virtual {v11, v14}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->setXStep(F)V

    .line 144
    invoke-virtual {v11, v15}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->setYStep(F)V

    const/4 v12, 0x3

    .line 145
    invoke-virtual {v11, v12}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->setTilingType(I)V

    .line 146
    invoke-virtual {v11, v13}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->setPaintType(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 152
    :try_start_5
    new-instance v12, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;

    invoke-direct {v12, v11}, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v15, 0x1

    .line 154
    :try_start_6
    invoke-virtual {v12, v15}, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;->setLineCapStyle(I)V

    .line 155
    invoke-virtual {v12, v15}, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;->setLineJoinStyle(I)V

    const/high16 v13, 0x3f800000    # 1.0f

    .line 156
    invoke-virtual {v12, v13}, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;->setLineWidth(F)V

    .line 157
    invoke-virtual {v12, v14}, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;->setMiterLimit(F)V

    .line 158
    invoke-virtual {v12, v6, v13}, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;->moveTo(FF)V

    const/high16 v15, 0x40a00000    # 5.0f

    const/high16 v1, 0x41300000    # 11.0f

    .line 159
    invoke-virtual {v12, v15, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;->lineTo(FF)V

    .line 160
    invoke-virtual {v12, v14, v13}, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;->lineTo(FF)V

    .line 161
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;->stroke()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 165
    :try_start_7
    invoke-static {v12}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 168
    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->add(Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDAbstractPattern;)Lcom/tom_roush/pdfbox/cos/COSName;

    .line 174
    aget v1, v2, v9

    aget v0, v2, v0

    sub-float/2addr v1, v0

    div-float/2addr v1, v4

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v10, v6, v6, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->addRect(FFFF)V

    .line 175
    invoke-virtual {v10}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->fill()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 179
    :try_start_8
    invoke-static {v10}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v12

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 165
    :goto_2
    :try_start_9
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v10

    goto :goto_3

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    .line 179
    :goto_3
    :try_start_a
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 189
    :cond_5
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v7, p0

    :goto_4
    move-object v1, v3

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    :goto_5
    move-object v1, v3

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    const/4 v1, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v7, p0

    const/4 v1, 0x0

    :goto_6
    :try_start_b
    const-string v2, "PdfBox-Android"

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 189
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_7
    return-void

    :catchall_7
    move-exception v0

    :goto_8
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 190
    throw v0

    :cond_6
    :goto_9
    move-object/from16 v7, p0

    return-void
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method
