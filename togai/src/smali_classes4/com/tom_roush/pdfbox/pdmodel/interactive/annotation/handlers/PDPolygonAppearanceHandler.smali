.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDPolygonAppearanceHandler.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method private getPathArray(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;)[[F
    .locals 7

    .line 166
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getPath()[[F

    move-result-object v0

    if-nez v0, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getVertices()[F

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_0
    array-length v0, p1

    const/4 v1, 0x2

    div-int/2addr v0, v1

    filled-new-array {v0, v1}, [I

    move-result-object v1

    .line 176
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 179
    aget-object v4, v1, v3

    mul-int/lit8 v5, v3, 0x2

    aget v6, p1, v5

    aput v6, v4, v2

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 180
    aget v5, p1, v5

    aput v5, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 17

    move-object/from16 v1, p0

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;->getLineWidth()F

    move-result v2

    .line 58
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;->getPathArray(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;)[[F

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v8, v6

    move v9, v8

    const/4 v10, 0x0

    move v6, v5

    .line 76
    :goto_0
    array-length v11, v4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v10, v11, :cond_3

    const/4 v11, 0x0

    .line 78
    :goto_1
    aget-object v14, v4, v10

    array-length v15, v14

    div-int/2addr v15, v12

    if-ge v11, v15, :cond_2

    mul-int/lit8 v15, v11, 0x2

    .line 80
    aget v7, v14, v15

    add-int/2addr v15, v13

    .line 81
    aget v14, v14, v15

    .line 82
    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 83
    invoke-static {v9, v14}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 84
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 85
    invoke-static {v6, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    sub-float/2addr v8, v2

    .line 89
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    sub-float/2addr v9, v2

    .line 90
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    add-float/2addr v5, v2

    .line 91
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    add-float/2addr v6, v2

    .line 92
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 93
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const/4 v3, 0x0

    .line 99
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v3

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v14

    .line 104
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getInteriorColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v15

    .line 106
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getConstantOpacity()F

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 108
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v6

    invoke-virtual {v3, v2, v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setBorderLine(FLcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 110
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderEffect()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 111
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->getStyle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "C"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 113
    new-instance v12, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;

    .line 114
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->getIntensity()F

    move-result v5

    float-to-double v7, v5

    float-to-double v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v11

    move-object v5, v12

    move-object v6, v3

    invoke-direct/range {v5 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;DDLcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 115
    invoke-virtual {v12, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->createCloudyPolygon([[F)V

    .line 116
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 117
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v0

    .line 118
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 119
    invoke-virtual {v12}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getMatrix()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 126
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_8

    .line 128
    aget-object v5, v4, v0

    if-nez v0, :cond_5

    .line 130
    array-length v6, v5

    if-ne v6, v12, :cond_5

    const/4 v6, 0x0

    .line 132
    aget v7, v5, v6

    aget v5, v5, v13

    invoke-virtual {v3, v7, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    goto :goto_3

    .line 137
    :cond_5
    array-length v6, v5

    if-ne v6, v12, :cond_6

    const/4 v6, 0x0

    .line 139
    aget v7, v5, v6

    aget v5, v5, v13

    invoke-virtual {v3, v7, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    goto :goto_3

    .line 141
    :cond_6
    array-length v6, v5

    const/4 v7, 0x6

    if-ne v6, v7, :cond_7

    const/16 v16, 0x0

    .line 143
    aget v6, v5, v16

    aget v7, v5, v13

    aget v8, v5, v12

    const/4 v9, 0x3

    aget v9, v5, v9

    const/4 v10, 0x4

    aget v10, v5, v10

    const/4 v11, 0x5

    aget v11, v5, v11

    move-object v5, v3

    invoke-virtual/range {v5 .. v11}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    goto :goto_4

    :cond_7
    :goto_3
    const/16 v16, 0x0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 149
    :cond_8
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    .line 151
    :goto_5
    invoke-virtual {v3, v2, v14, v15}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawShape(FZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PdfBox-Android"

    .line 155
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :goto_6
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_7
    invoke-static {v3}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    throw v0
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method

.method getLineWidth()F
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDPolygonAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;

    .line 217
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result v0

    return v0

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    .line 227
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 228
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_1

    .line 230
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
