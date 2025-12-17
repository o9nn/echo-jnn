.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDUnderlineAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDUnderlineAppearanceHandler.java"


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
    .locals 18

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDUnderlineAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

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

    .line 80
    :goto_0
    array-length v12, v2

    div-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_4

    mul-int/lit8 v12, v11, 0x2

    .line 82
    aget v13, v2, v12

    add-int/lit8 v12, v12, 0x1

    .line 83
    aget v12, v2, v12

    .line 84
    invoke-static {v9, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 85
    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 86
    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 87
    invoke-static {v8, v12}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 89
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

    .line 90
    iget v9, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v9, v12

    sub-float/2addr v10, v9

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 91
    iget v9, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v9, v12

    add-float/2addr v7, v9

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 92
    iget v7, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v7, v12

    add-float/2addr v8, v7

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const/4 v1, 0x0

    .line 99
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDUnderlineAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v1

    .line 101
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationTextMarkup;->getConstantOpacity()F

    move-result v0

    move-object/from16 v7, p0

    invoke-virtual {v7, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDUnderlineAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 103
    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    .line 104
    iget-object v0, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    invoke-virtual {v1, v0, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineDashPattern([FF)V

    .line 108
    :cond_5
    iget v0, v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 112
    :goto_1
    array-length v0, v2

    div-int/lit8 v0, v0, 0x8

    if-ge v5, v0, :cond_8

    mul-int/lit8 v0, v5, 0x8

    .line 117
    aget v3, v2, v0

    add-int/lit8 v4, v0, 0x4

    aget v8, v2, v4

    sub-float/2addr v3, v8

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-int/lit8 v3, v0, 0x1

    aget v12, v2, v3

    add-int/lit8 v13, v0, 0x5

    aget v14, v2, v13

    sub-float/2addr v12, v14

    float-to-double v14, v12

    .line 118
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v8, v14

    .line 117
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 119
    aget v9, v2, v4

    .line 120
    aget v12, v2, v13

    .line 121
    invoke-static {v8, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    const/high16 v15, 0x40e00000    # 7.0f

    if-eqz v14, :cond_6

    .line 124
    aget v14, v2, v0

    aget v4, v2, v4

    sub-float/2addr v14, v4

    div-float/2addr v14, v8

    mul-float/2addr v14, v8

    div-float/2addr v14, v15

    add-float/2addr v9, v14

    .line 125
    aget v3, v2, v3

    aget v4, v2, v13

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    div-float/2addr v8, v15

    mul-float/2addr v3, v8

    add-float/2addr v12, v3

    :cond_6
    add-int/lit8 v3, v0, 0x2

    .line 127
    aget v4, v2, v3

    add-int/lit8 v8, v0, 0x6

    aget v13, v2, v8

    sub-float/2addr v4, v13

    float-to-double v13, v4

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-int/lit8 v4, v0, 0x3

    aget v16, v2, v4

    add-int/lit8 v0, v0, 0x7

    aget v17, v2, v0

    sub-float v15, v16, v17

    float-to-double v6, v15

    .line 128
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v13, v6

    .line 127
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 129
    aget v7, v2, v8

    .line 130
    aget v10, v2, v0

    const/4 v11, 0x0

    .line 131
    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_7

    .line 134
    aget v3, v2, v3

    aget v8, v2, v8

    sub-float/2addr v3, v8

    div-float/2addr v3, v6

    mul-float/2addr v3, v6

    const/high16 v8, 0x40e00000    # 7.0f

    div-float/2addr v3, v8

    add-float/2addr v7, v3

    .line 135
    aget v3, v2, v4

    aget v0, v2, v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v6

    mul-float/2addr v3, v6

    div-float/2addr v3, v8

    add-float/2addr v10, v3

    .line 137
    :cond_7
    invoke-virtual {v1, v9, v12}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 138
    invoke-virtual {v1, v7, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, p0

    move v6, v11

    goto/16 :goto_1

    .line 140
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

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_2
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_3
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    throw v0

    :cond_9
    :goto_4
    return-void
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method
