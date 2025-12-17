.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDStrikeoutAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDStrikeoutAppearanceHandler.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 19

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDStrikeoutAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;

    .line 50
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getQuadPoints()[F

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 60
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->getAnnotationBorder(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;

    move-result-object v3

    .line 61
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 62
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto/16 :goto_4

    .line 66
    :cond_2
    iget v5, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_3

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 69
    iput v5, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x1

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    move v11, v5

    move v9, v8

    move v10, v9

    move v8, v7

    .line 79
    :goto_0
    array-length v12, v2

    div-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_4

    mul-int/lit8 v12, v11, 0x2

    .line 81
    aget v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    .line 82
    aget v12, v2, v12

    .line 83
    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 84
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 85
    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 86
    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 88
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

    .line 89
    iget v9, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v9, v12

    sub-float/2addr v10, v9

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 90
    iget v9, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v9, v12

    add-float/2addr v7, v9

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 91
    iget v7, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v7, v12

    add-float/2addr v8, v7

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const/4 v1, 0x0

    .line 98
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDStrikeoutAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getConstantOpacity()F

    move-result v0

    move-object/from16 v7, p0

    invoke-virtual {v7, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDStrikeoutAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 102
    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    .line 103
    iget-object v0, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    invoke-virtual {v1, v0, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineDashPattern([FF)V

    .line 107
    :cond_5
    iget v0, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 111
    :goto_1
    array-length v0, v2

    div-int/lit8 v0, v0, 0x8

    if-ge v5, v0, :cond_8

    mul-int/lit8 v0, v5, 0x8

    .line 118
    aget v4, v2, v0

    add-int/lit8 v8, v0, 0x4

    aget v9, v2, v8

    sub-float/2addr v4, v9

    float-to-double v9, v4

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-int/lit8 v4, v0, 0x1

    aget v11, v2, v4

    add-int/lit8 v15, v0, 0x5

    aget v16, v2, v15

    sub-float v11, v11, v16

    float-to-double v6, v11

    .line 119
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v9, v6

    .line 118
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 120
    aget v7, v2, v8

    .line 121
    aget v9, v2, v15

    const/4 v10, 0x0

    .line 122
    invoke-static {v6, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-eqz v11, :cond_6

    .line 125
    aget v10, v2, v0

    aget v8, v2, v8

    sub-float/2addr v10, v8

    div-float/2addr v10, v6

    div-float v8, v6, v12

    iget v11, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    sub-float v11, v8, v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 126
    aget v4, v2, v4

    aget v10, v2, v15

    sub-float/2addr v4, v10

    div-float/2addr v4, v6

    iget v6, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    sub-float/2addr v8, v6

    mul-float/2addr v4, v8

    add-float/2addr v9, v4

    :cond_6
    add-int/lit8 v4, v0, 0x2

    .line 128
    aget v6, v2, v4

    add-int/lit8 v8, v0, 0x6

    aget v10, v2, v8

    sub-float/2addr v6, v10

    float-to-double v10, v6

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-int/lit8 v6, v0, 0x3

    aget v15, v2, v6

    add-int/lit8 v0, v0, 0x7

    aget v17, v2, v0

    sub-float v15, v15, v17

    move/from16 v17, v5

    move/from16 v18, v6

    float-to-double v5, v15

    .line 129
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v10, v5

    .line 128
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 130
    aget v6, v2, v8

    .line 131
    aget v10, v2, v0

    const/4 v11, 0x0

    .line 132
    invoke-static {v5, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_7

    .line 135
    aget v4, v2, v4

    aget v8, v2, v8

    sub-float/2addr v4, v8

    div-float/2addr v4, v5

    div-float v8, v5, v12

    iget v13, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    sub-float v13, v8, v13

    mul-float/2addr v4, v13

    add-float/2addr v6, v4

    .line 136
    aget v4, v2, v18

    aget v0, v2, v0

    sub-float/2addr v4, v0

    div-float/2addr v4, v5

    iget v0, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    sub-float/2addr v8, v0

    mul-float/2addr v4, v8

    add-float/2addr v10, v4

    .line 138
    :cond_7
    invoke-virtual {v1, v7, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 139
    invoke-virtual {v1, v6, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v7, p0

    move v6, v11

    goto/16 :goto_1

    .line 141
    :cond_8
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->stroke()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PdfBox-Android"

    .line 145
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :goto_2
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_3
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 150
    throw v0

    :cond_9
    :goto_4
    return-void
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method
