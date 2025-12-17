.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDHighlightAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDHighlightAppearanceHandler.java"


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
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDHighlightAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;

    .line 58
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getQuadPoints()[F

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 64
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    goto/16 :goto_c

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->getAnnotationBorder(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;

    move-result-object v4

    const/4 v5, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    move v8, v6

    move v9, v8

    move v10, v7

    move v6, v5

    .line 83
    :goto_0
    array-length v11, v1

    div-int/lit8 v11, v11, 0x2

    if-ge v10, v11, :cond_3

    mul-int/lit8 v11, v10, 0x2

    .line 85
    aget v12, v1, v11

    add-int/lit8 v11, v11, 0x1

    .line 86
    aget v11, v1, v11

    .line 87
    invoke-static {v8, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 88
    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 89
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 90
    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    move v11, v7

    move v12, v10

    .line 95
    :goto_1
    array-length v13, v1

    div-int/lit8 v13, v13, 0x8

    const/high16 v14, 0x40800000    # 4.0f

    if-ge v11, v13, :cond_4

    .line 100
    aget v13, v1, v11

    add-int/lit8 v15, v11, 0x4

    aget v15, v1, v15

    sub-float/2addr v13, v15

    div-float/2addr v13, v14

    add-int/lit8 v15, v11, 0x1

    aget v16, v1, v15

    add-int/lit8 v11, v11, 0x5

    aget v11, v1, v11

    sub-float v16, v16, v11

    div-float v11, v16, v14

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 102
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move v11, v15

    goto :goto_1

    .line 105
    :cond_4
    iget v11, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v11, v13

    sub-float/2addr v8, v11

    sub-float/2addr v8, v12

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v3, v8}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 106
    iget v8, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v8, v13

    sub-float/2addr v9, v8

    sub-float/2addr v9, v12

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v3, v8}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 107
    iget v8, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    add-float/2addr v5, v8

    add-float/2addr v5, v12

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 108
    iget v4, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    add-float/2addr v6, v4

    add-float/2addr v6, v12

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 109
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const/4 v3, 0x0

    .line 116
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDHighlightAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 118
    :try_start_1
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    invoke-direct {v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>()V

    .line 119
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    invoke-direct {v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>()V

    .line 120
    invoke-virtual {v5, v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setAlphaSourceFlag(Z)V

    .line 121
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getConstantOpacity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 122
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getConstantOpacity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setNonStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 123
    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setAlphaSourceFlag(Z)V

    .line 124
    sget-object v8, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->MULTIPLY:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-virtual {v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V

    .line 125
    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    .line 126
    invoke-virtual {v4, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    .line 127
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDHighlightAppearanceHandler;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 128
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDHighlightAppearanceHandler;->createCOSStream()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    .line 129
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {v8}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    invoke-virtual {v5, v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 134
    :try_start_2
    new-instance v8, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;

    invoke-direct {v8, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 135
    :try_start_3
    invoke-virtual {v8, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->drawForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 139
    :try_start_4
    invoke-static {v8}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 141
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 142
    new-instance v8, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v8}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 143
    sget-object v9, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v11, Lcom/tom_roush/pdfbox/cos/COSName;->TRANSPARENCY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v8, v9, v11}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 145
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v9

    sget-object v11, Lcom/tom_roush/pdfbox/cos/COSName;->GROUP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v9, v11, v8}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 146
    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V

    .line 147
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 153
    :try_start_5
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;

    invoke-direct {v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    :try_start_6
    invoke-virtual {v5, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    :goto_2
    add-int/lit8 v0, v7, 0x7

    .line 156
    array-length v2, v1

    if-ge v0, v2, :cond_b

    .line 165
    aget v2, v1, v7

    add-int/lit8 v3, v7, 0x4

    aget v6, v1, v3

    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v2, v7, 0x1

    aget v6, v1, v2

    add-int/lit8 v8, v7, 0x3

    aget v8, v1, v8

    .line 166
    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 v6, v7, 0x2

    aget v6, v1, v6

    add-int/lit8 v8, v7, 0x6

    aget v8, v1, v8

    .line 167
    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 v6, v7, 0x5

    aget v8, v1, v6

    aget v9, v1, v0

    .line 168
    invoke-static {v8, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_5

    .line 171
    aget v2, v1, v2

    aget v6, v1, v6

    :goto_3
    sub-float/2addr v2, v6

    div-float/2addr v2, v14

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v7, 0x1

    .line 173
    aget v2, v1, v2

    add-int/lit8 v6, v7, 0x5

    aget v6, v1, v6

    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6

    aget v2, v1, v7

    add-int/lit8 v6, v7, 0x2

    aget v6, v1, v6

    .line 174
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v2, v7, 0x3

    aget v2, v1, v2

    aget v6, v1, v0

    .line 175
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6

    aget v2, v1, v3

    add-int/lit8 v6, v7, 0x6

    aget v6, v1, v6

    .line 176
    invoke-static {v2, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_6

    .line 179
    aget v2, v1, v7

    aget v6, v1, v3

    goto :goto_3

    :cond_6
    move v2, v10

    .line 182
    :goto_4
    aget v6, v1, v3

    add-int/lit8 v8, v7, 0x5

    aget v9, v1, v8

    invoke-virtual {v5, v6, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->moveTo(FF)V

    .line 184
    aget v6, v1, v7

    aget v9, v1, v3

    invoke-static {v6, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_7

    .line 187
    aget v3, v1, v3

    sub-float v16, v3, v2

    aget v3, v1, v8

    add-float v17, v3, v2

    aget v20, v1, v7

    sub-float v18, v20, v2

    add-int/lit8 v3, v7, 0x1

    aget v21, v1, v3

    sub-float v19, v21, v2

    move-object v15, v5

    invoke-virtual/range {v15 .. v21}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->curveTo(FFFFFF)V

    goto :goto_5

    .line 191
    :cond_7
    aget v6, v1, v8

    add-int/lit8 v9, v7, 0x1

    aget v11, v1, v9

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_8

    .line 194
    aget v3, v1, v3

    add-float v16, v3, v2

    aget v3, v1, v8

    add-float v17, v3, v2

    aget v20, v1, v7

    sub-float v18, v20, v2

    aget v21, v1, v9

    add-float v19, v21, v2

    move-object v15, v5

    invoke-virtual/range {v15 .. v21}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->curveTo(FFFFFF)V

    goto :goto_5

    .line 200
    :cond_8
    aget v3, v1, v7

    aget v6, v1, v9

    invoke-virtual {v5, v3, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->lineTo(FF)V

    :goto_5
    add-int/lit8 v3, v7, 0x2

    .line 202
    aget v6, v1, v3

    add-int/lit8 v8, v7, 0x3

    aget v9, v1, v8

    invoke-virtual {v5, v6, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->lineTo(FF)V

    .line 203
    aget v6, v1, v3

    add-int/lit8 v9, v7, 0x6

    aget v11, v1, v9

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_9

    .line 206
    aget v3, v1, v3

    add-float v16, v3, v2

    aget v3, v1, v8

    sub-float v17, v3, v2

    aget v20, v1, v9

    add-float v18, v20, v2

    aget v21, v1, v0

    add-float v19, v21, v2

    move-object v15, v5

    invoke-virtual/range {v15 .. v21}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->curveTo(FFFFFF)V

    goto :goto_6

    .line 210
    :cond_9
    aget v6, v1, v8

    aget v11, v1, v0

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_a

    .line 213
    aget v3, v1, v3

    sub-float v16, v3, v2

    aget v3, v1, v8

    sub-float v17, v3, v2

    aget v20, v1, v9

    add-float v18, v20, v2

    aget v21, v1, v0

    sub-float v19, v21, v2

    move-object v15, v5

    invoke-virtual/range {v15 .. v21}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->curveTo(FFFFFF)V

    goto :goto_6

    .line 219
    :cond_a
    aget v2, v1, v9

    aget v0, v1, v0

    invoke-virtual {v5, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->lineTo(FF)V

    .line 222
    :goto_6
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/PDFormContentStream;->fill()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_2

    .line 228
    :cond_b
    :try_start_7
    invoke-static {v5}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 237
    invoke-static {v4}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v3, v5

    goto :goto_7

    :catchall_1
    move-exception v0

    .line 228
    :goto_7
    :try_start_8
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 229
    throw v0

    :catchall_2
    move-exception v0

    move-object v3, v8

    goto :goto_8

    :catchall_3
    move-exception v0

    .line 139
    :goto_8
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 140
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v4

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_9

    :catchall_5
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    :goto_9
    :try_start_9
    const-string v1, "PdfBox-Android"

    .line 233
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 237
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_a
    return-void

    :goto_b
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 238
    throw v0

    :cond_c
    :goto_c
    return-void
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method
