.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDInkAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDInkAppearanceHandler.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 16

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDInkAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;

    .line 51
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 52
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->getAnnotationBorder(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;

    move-result-object v2

    .line 58
    iget v3, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getInkList()[[F

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x1

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    move v9, v7

    move v10, v9

    const/4 v11, 0x0

    move v7, v6

    :goto_0
    if-ge v11, v5, :cond_3

    aget-object v12, v3, v11

    .line 72
    array-length v13, v12

    div-int/lit8 v13, v13, 0x2

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_2

    mul-int/lit8 v15, v14, 0x2

    .line 75
    aget v8, v12, v15

    add-int/lit8 v15, v15, 0x1

    .line 76
    aget v15, v12, v15

    .line 77
    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 78
    invoke-static {v10, v15}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 79
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 80
    invoke-static {v7, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 83
    :cond_3
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    if-nez v3, :cond_4

    return-void

    .line 88
    :cond_4
    iget v5, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v5, v8

    sub-float/2addr v9, v5

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 89
    iget v5, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v5, v8

    sub-float/2addr v10, v5

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 90
    iget v5, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v5, v8

    add-float/2addr v6, v5

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 91
    iget v5, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v5, v8

    add-float/2addr v7, v5

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 92
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const/4 v3, 0x0

    .line 98
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDInkAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v3

    .line 100
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getConstantOpacity()F

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p0

    :try_start_1
    invoke-virtual {v6, v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDInkAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 102
    invoke-virtual {v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    .line 103
    iget-object v1, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    if-eqz v1, :cond_5

    .line 105
    iget-object v1, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    invoke-virtual {v3, v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineDashPattern([FF)V

    .line 107
    :cond_5
    iget v1, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    invoke-virtual {v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 109
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getInkList()[[F

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_8

    aget-object v4, v0, v2

    .line 111
    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v5, :cond_7

    mul-int/lit8 v8, v7, 0x2

    .line 117
    aget v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    .line 118
    aget v8, v4, v8

    if-nez v7, :cond_6

    .line 122
    invoke-virtual {v3, v9, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    goto :goto_4

    .line 126
    :cond_6
    invoke-virtual {v3, v9, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 129
    :cond_7
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->stroke()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v6, p0

    :goto_5
    :try_start_2
    const-string v1, "PdfBox-Android"

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    :cond_8
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_6
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    throw v0

    :cond_9
    :goto_7
    move-object/from16 v6, p0

    return-void
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method
