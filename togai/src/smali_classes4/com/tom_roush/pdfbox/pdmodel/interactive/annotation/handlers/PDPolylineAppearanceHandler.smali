.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDPolylineAppearanceHandler.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 30

    const-string v0, "None"

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;

    .line 59
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getVertices()[F

    move-result-object v3

    if-eqz v3, :cond_f

    .line 65
    array-length v4, v3

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    goto/16 :goto_9

    .line 69
    :cond_1
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->getAnnotationBorder(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;

    move-result-object v4

    .line 70
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 71
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object v7

    array-length v7, v7

    if-eqz v7, :cond_f

    iget v7, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_9

    :cond_2
    const/4 v7, 0x1

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    move v11, v9

    move v12, v11

    const/4 v13, 0x0

    move v9, v7

    .line 83
    :goto_0
    array-length v14, v3

    const/4 v15, 0x2

    div-int/2addr v14, v15

    const/16 v16, 0x1

    if-ge v13, v14, :cond_3

    mul-int/lit8 v14, v13, 0x2

    .line 85
    aget v15, v3, v14

    add-int/lit8 v14, v14, 0x1

    .line 86
    aget v14, v3, v14

    .line 87
    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 88
    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 89
    invoke-static {v7, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 90
    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 93
    :cond_3
    iget v13, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/high16 v14, 0x41200000    # 10.0f

    mul-float/2addr v13, v14

    sub-float/2addr v11, v13

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual {v2, v11}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 94
    iget v11, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v11, v14

    sub-float/2addr v12, v11

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual {v2, v11}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 95
    iget v11, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v11, v14

    add-float/2addr v7, v11

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v2, v7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 96
    iget v7, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v7, v14

    add-float/2addr v9, v7

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v2, v7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 97
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const/4 v2, 0x0

    .line 103
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v2

    .line 105
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getInteriorColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v7

    .line 106
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getConstantOpacity()F

    move-result v9

    move-object/from16 v11, p0

    invoke-virtual {v11, v2, v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 107
    invoke-virtual {v2, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v6

    .line 109
    iget-object v9, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    if-eqz v9, :cond_4

    .line 111
    iget-object v9, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    invoke-virtual {v2, v9, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineDashPattern([FF)V

    .line 113
    :cond_4
    iget v9, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    invoke-virtual {v2, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const/4 v9, 0x0

    .line 115
    :goto_1
    array-length v12, v3

    div-int/2addr v12, v15

    const/4 v13, 0x3

    if-ge v9, v12, :cond_a

    mul-int/lit8 v12, v9, 0x2

    .line 117
    aget v14, v3, v12

    add-int/lit8 v12, v12, 0x1

    .line 118
    aget v12, v3, v12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    if-nez v9, :cond_7

    .line 121
    sget-object v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->SHORT_STYLES:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 125
    aget v5, v3, v15

    .line 126
    aget v8, v3, v13

    sub-float v13, v14, v5

    move/from16 v27, v6

    move/from16 v26, v7

    float-to-double v6, v13

    .line 127
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-float v13, v12, v8

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    float-to-double v0, v13

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_6

    sub-float/2addr v5, v14

    div-float/2addr v5, v0

    .line 130
    iget v1, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v5, v1

    add-float/2addr v14, v5

    sub-float/2addr v8, v12

    div-float/2addr v8, v0

    .line 131
    iget v0, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v8, v0

    add-float/2addr v12, v8

    goto :goto_2

    :cond_5
    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move/from16 v27, v6

    move/from16 v26, v7

    .line 134
    :cond_6
    :goto_2
    invoke-virtual {v2, v14, v12}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move/from16 v27, v6

    move/from16 v26, v7

    .line 138
    array-length v0, v3

    div-int/2addr v0, v15

    add-int/lit8 v0, v0, -0x1

    if-ne v9, v0, :cond_8

    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->SHORT_STYLES:Ljava/util/Set;

    .line 139
    invoke-virtual/range {v29 .. v29}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    array-length v0, v3

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    aget v0, v3, v0

    .line 144
    array-length v1, v3

    sub-int/2addr v1, v13

    aget v1, v3, v1

    sub-float v5, v0, v14

    float-to-double v5, v5

    .line 145
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-float v7, v1, v12

    float-to-double v7, v7

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v6, 0x0

    .line 146
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_9

    sub-float v0, v14, v0

    div-float/2addr v0, v5

    .line 148
    iget v7, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v0, v7

    sub-float/2addr v14, v0

    sub-float v0, v12, v1

    div-float/2addr v0, v5

    .line 149
    iget v1, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v0, v1

    sub-float/2addr v12, v0

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    .line 152
    :cond_9
    :goto_3
    invoke-virtual {v2, v14, v12}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, p0

    move v8, v6

    move/from16 v7, v26

    move/from16 v6, v27

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    const/4 v5, 0x4

    goto/16 :goto_1

    :cond_a
    move-object/from16 v28, v0

    move-object/from16 v29, v1

    move/from16 v27, v6

    move/from16 v26, v7

    .line 155
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->stroke()V

    .line 162
    invoke-virtual/range {v29 .. v29}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v28

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 165
    aget v0, v3, v15

    .line 166
    aget v5, v3, v13

    const/4 v6, 0x0

    .line 167
    aget v6, v3, v6

    .line 168
    aget v7, v3, v16

    .line 169
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    .line 170
    sget-object v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->ANGLED_STYLES:Ljava/util/Set;

    invoke-virtual/range {v29 .. v29}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    sub-float/2addr v5, v7

    float-to-double v8, v5

    sub-float/2addr v0, v6

    float-to-double v10, v0

    .line 172
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 173
    invoke-static {v8, v9, v6, v7}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    goto :goto_5

    .line 177
    :cond_b
    invoke-static {v6, v7}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 179
    :goto_5
    invoke-virtual/range {v29 .. v29}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v0, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/16 v25, 0x0

    move-object/from16 v17, p0

    move-object/from16 v19, v2

    move/from16 v22, v0

    move/from16 v23, v27

    move/from16 v24, v26

    invoke-virtual/range {v17 .. v25}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->drawStyle(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFFZZZ)V

    .line 180
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    .line 183
    :cond_c
    invoke-virtual/range {v29 .. v29}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 186
    array-length v0, v3

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    aget v0, v3, v0

    .line 187
    array-length v1, v3

    sub-int/2addr v1, v13

    aget v1, v3, v1

    .line 188
    array-length v5, v3

    sub-int/2addr v5, v15

    aget v5, v3, v5

    .line 189
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget v3, v3, v6

    .line 191
    sget-object v6, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->ANGLED_STYLES:Ljava/util/Set;

    invoke-virtual/range {v29 .. v29}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    sub-float v1, v3, v1

    float-to-double v6, v1

    sub-float v0, v5, v0

    float-to-double v0, v0

    .line 193
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 194
    invoke-static {v0, v1, v5, v3}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    goto :goto_6

    .line 198
    :cond_d
    invoke-static {v5, v3}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 200
    :goto_6
    invoke-virtual/range {v29 .. v29}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v0, v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/16 v25, 0x1

    move-object/from16 v17, p0

    move-object/from16 v19, v2

    move/from16 v22, v0

    move/from16 v23, v27

    move/from16 v24, v26

    invoke-virtual/range {v17 .. v25}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->drawStyle(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFFZZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "PdfBox-Android"

    .line 205
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_e
    :goto_7
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_8
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 210
    throw v0

    :cond_f
    :goto_9
    return-void
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method

.method getLineWidth()F
    .locals 3

    .line 244
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolylineAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;

    .line 246
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result v0

    return v0

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    .line 256
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 257
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_1

    .line 259
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
