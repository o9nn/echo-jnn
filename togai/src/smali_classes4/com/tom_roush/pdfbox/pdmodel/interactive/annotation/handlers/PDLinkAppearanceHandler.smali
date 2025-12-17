.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLinkAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDLinkAppearanceHandler.java"


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


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 17

    const-string v1, "PdfBox-Android"

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLinkAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;

    .line 57
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLinkAppearanceHandler;->getLineWidth()F

    move-result v3

    .line 71
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLinkAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    :try_start_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_1

    .line 77
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    new-array v9, v7, [F

    const/4 v10, 0x0

    aput v10, v9, v8

    sget-object v10, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-direct {v6, v9, v10}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 79
    :cond_1
    invoke-virtual {v5, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v6

    .line 81
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v9

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v10

    invoke-virtual {v5, v3, v9, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setBorderLine(FLcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLinkAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v3, v10

    move-object/from16 v11, p0

    :try_start_2
    invoke-virtual {v11, v9, v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLinkAppearanceHandler;->getPaddedRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v9

    .line 87
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getQuadPoints()[F

    move-result-object v10

    const/4 v12, 0x2

    if-eqz v10, :cond_3

    move v13, v8

    .line 93
    :goto_0
    array-length v14, v10

    div-int/2addr v14, v12

    if-ge v13, v14, :cond_3

    mul-int/lit8 v14, v13, 0x2

    .line 95
    aget v15, v10, v14

    add-int/lit8 v16, v14, 0x1

    aget v4, v10, v16

    invoke-virtual {v2, v15, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->contains(FF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "At least one /QuadPoints entry ("

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v13, v10, v14

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ";"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v10, v10, v16

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, ") is outside of rectangle, "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", /QuadPoints are ignored and /Rect is used instead"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move-object v4, v10

    :goto_1
    const/16 v2, 0x8

    if-nez v4, :cond_4

    new-array v4, v2, [F

    .line 111
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v10

    aput v10, v4, v8

    .line 112
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v10

    aput v10, v4, v7

    .line 113
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v7

    aput v7, v4, v12

    .line 114
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v7

    const/4 v10, 0x3

    aput v7, v4, v10

    .line 115
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v7

    const/4 v10, 0x4

    aput v7, v4, v10

    .line 116
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v7

    const/4 v10, 0x5

    aput v7, v4, v10

    .line 117
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v7

    const/4 v10, 0x6

    aput v7, v4, v10

    .line 118
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v7

    const/4 v9, 0x7

    aput v7, v4, v9

    .line 122
    :cond_4
    array-length v7, v4

    if-lt v7, v2, :cond_5

    .line 124
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "U"

    .line 127
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v8

    :goto_2
    move v2, v8

    :goto_3
    add-int/lit8 v7, v2, 0x7

    .line 131
    array-length v9, v4

    if-ge v7, v9, :cond_7

    .line 133
    aget v9, v4, v2

    add-int/lit8 v10, v2, 0x1

    aget v10, v4, v10

    invoke-virtual {v5, v9, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    add-int/lit8 v9, v2, 0x2

    .line 134
    aget v9, v4, v9

    add-int/lit8 v10, v2, 0x3

    aget v10, v4, v10

    invoke-virtual {v5, v9, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    if-nez v0, :cond_6

    add-int/lit8 v9, v2, 0x4

    .line 137
    aget v9, v4, v9

    add-int/lit8 v10, v2, 0x5

    aget v10, v4, v10

    invoke-virtual {v5, v9, v10}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    add-int/lit8 v9, v2, 0x6

    .line 138
    aget v9, v4, v9

    aget v7, v4, v7

    invoke-virtual {v5, v9, v7}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 139
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    :cond_6
    add-int/lit8 v2, v2, 0x8

    goto :goto_3

    .line 144
    :cond_7
    invoke-virtual {v5, v3, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawShape(FZZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    invoke-static {v5}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v11, p0

    :goto_4
    move-object v4, v5

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v11, p0

    :goto_5
    move-object v4, v5

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v11, p0

    const/4 v4, 0x0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    const/4 v4, 0x0

    .line 148
    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 151
    invoke-static {v4}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_7
    return-void

    :catchall_3
    move-exception v0

    :goto_8
    invoke-static {v4}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    throw v0
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method

.method getLineWidth()F
    .locals 3

    .line 184
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLinkAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;

    .line 186
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result v0

    return v0

    .line 193
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLink;->getBorder()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    .line 196
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 197
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v1, :cond_1

    .line 199
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
