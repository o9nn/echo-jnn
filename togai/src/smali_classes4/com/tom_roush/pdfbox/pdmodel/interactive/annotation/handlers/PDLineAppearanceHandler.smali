.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDLineAppearanceHandler.java"


# static fields
.field static final FONT_SIZE:I = 0x9


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 36

    const-string v1, "None"

    const-string v2, "PdfBox-Android"

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;

    .line 56
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getLine()[F

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 66
    :cond_1
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->getAnnotationBorder(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;

    move-result-object v5

    .line 67
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 68
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    goto/16 :goto_10

    .line 72
    :cond_2
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getLeaderLineLength()F

    move-result v7

    .line 73
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getLeaderLineExtensionLength()F

    move-result v8

    .line 74
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getLeaderLineOffsetLength()F

    move-result v9

    const/4 v10, 0x1

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    move v13, v11

    move v14, v13

    const/4 v15, 0x0

    move v11, v10

    .line 81
    :goto_0
    array-length v12, v4

    const/16 v17, 0x2

    div-int/lit8 v12, v12, 0x2

    const/16 v18, 0x1

    if-ge v15, v12, :cond_3

    mul-int/lit8 v12, v15, 0x2

    move-object/from16 v19, v1

    .line 83
    aget v1, v4, v12

    add-int/lit8 v12, v12, 0x1

    .line 84
    aget v12, v4, v12

    .line 85
    invoke-static {v13, v1}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 86
    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 87
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 88
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v19

    goto :goto_0

    :cond_3
    move-object/from16 v19, v1

    const/4 v1, 0x0

    cmpg-float v12, v7, v1

    if-gez v12, :cond_4

    neg-float v9, v9

    neg-float v8, v8

    .line 102
    :cond_4
    iget v12, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    move-object v15, v2

    float-to-double v1, v12

    const-wide v21, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, v1, v21

    if-gez v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    iget v1, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    :goto_1
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v1

    add-float/2addr v7, v9

    add-float/2addr v8, v7

    .line 108
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v13, v2

    .line 109
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-virtual {v0, v12}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    sub-float/2addr v14, v2

    .line 110
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v12

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-virtual {v0, v12}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    add-float/2addr v10, v2

    .line 111
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v0, v10}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    add-float/2addr v11, v2

    .line 112
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 114
    invoke-virtual {v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    const/4 v2, 0x0

    .line 120
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v2

    .line 122
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getConstantOpacity()F

    move-result v0

    move-object/from16 v10, p0

    invoke-virtual {v10, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 130
    invoke-virtual {v2, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v6

    .line 132
    iget-object v0, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineDashPattern([FF)V

    .line 136
    :cond_6
    iget v0, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const/4 v11, 0x0

    .line 138
    aget v12, v4, v11

    .line 139
    aget v11, v4, v18

    .line 140
    aget v13, v4, v17

    const/4 v0, 0x3

    .line 141
    aget v4, v4, v0

    .line 148
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getContents()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    .line 154
    :cond_7
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    sub-float v14, v4, v11

    move/from16 v18, v4

    move-object/from16 v17, v5

    float-to-double v4, v14

    sub-float v10, v13, v12

    move/from16 v23, v6

    move/from16 v32, v7

    float-to-double v6, v10

    .line 155
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 156
    invoke-static {v4, v5, v12, v11}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    mul-float/2addr v10, v10

    mul-float/2addr v14, v14

    add-float/2addr v10, v14

    float-to-double v6, v10

    .line 157
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x0

    .line 160
    invoke-virtual {v2, v7, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 161
    invoke-virtual {v2, v7, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 162
    invoke-virtual {v2, v6, v9}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 163
    invoke-virtual {v2, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 165
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getCaption()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 171
    sget-object v7, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v8, 0x41100000    # 9.0f

    .line 177
    :try_start_1
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getStringWidth(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v0, v9

    mul-float/2addr v0, v8

    move-object v10, v15

    goto :goto_2

    :catch_0
    move-exception v0

    .line 186
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "line text \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getContents()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' can\'t be shown"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v15

    :try_start_3
    invoke-static {v10, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_2
    sub-float v9, v6, v0

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v9, v14

    .line 191
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getCaptionPositioning()Ljava/lang/String;

    move-result-object v15

    .line 195
    sget-object v14, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->SHORT_STYLES:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move/from16 v8, v32

    .line 197
    invoke-virtual {v2, v1, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    goto :goto_3

    :cond_8
    move/from16 v8, v32

    const/4 v14, 0x0

    .line 201
    invoke-virtual {v2, v14, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    :goto_3
    const-string v14, "Top"

    .line 203
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    const v14, 0x3ff43958    # 1.908f

    goto :goto_4

    :cond_9
    sub-float v14, v9, v1

    .line 214
    invoke-virtual {v2, v14, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    sub-float v14, v6, v9

    add-float/2addr v14, v1

    .line 215
    invoke-virtual {v2, v14, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const v14, -0x3fd9999a    # -2.6f

    .line 217
    :goto_4
    sget-object v15, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->SHORT_STYLES:Ljava/util/Set;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v32, v10

    :try_start_4
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    sub-float v10, v6, v1

    .line 219
    invoke-virtual {v2, v10, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    goto :goto_5

    .line 223
    :cond_a
    invoke-virtual {v2, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    :goto_5
    move/from16 v10, v23

    const/4 v15, 0x0

    .line 225
    invoke-virtual {v2, v1, v10, v15}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawShape(FZZ)V

    .line 228
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getCaptionHorizontalOffset()F

    move-result v15

    move/from16 v33, v13

    .line 229
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getCaptionVerticalOffset()F

    move-result v13

    const/16 v20, 0x0

    cmpl-float v0, v0, v20

    if-lez v0, :cond_b

    .line 234
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->beginText()V

    move-wide/from16 v34, v4

    const/high16 v4, 0x41100000    # 9.0f

    .line 235
    invoke-virtual {v2, v7, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V

    add-float/2addr v9, v15

    add-float v7, v8, v14

    add-float/2addr v7, v13

    .line 236
    invoke-virtual {v2, v9, v7}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->newLineAtOffset(FF)V

    .line 238
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getContents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->showText(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->endText()V

    goto :goto_6

    :cond_b
    move-wide/from16 v34, v4

    :goto_6
    const/4 v4, 0x0

    .line 242
    invoke-static {v13, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_c

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v6, v0

    add-float/2addr v6, v4

    .line 245
    invoke-virtual {v2, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    add-float v7, v8, v13

    .line 246
    invoke-virtual {v2, v6, v7}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/4 v4, 0x0

    .line 247
    invoke-virtual {v2, v1, v10, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawShape(FZZ)V

    :cond_c
    const/4 v4, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v32, v10

    goto/16 :goto_d

    :cond_d
    move-wide/from16 v34, v4

    move/from16 v33, v13

    move/from16 v10, v23

    move/from16 v8, v32

    move-object/from16 v32, v15

    .line 252
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->SHORT_STYLES:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 254
    invoke-virtual {v2, v1, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    .line 258
    invoke-virtual {v2, v4, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 260
    :goto_7
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->SHORT_STYLES:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sub-float/2addr v6, v1

    .line 262
    invoke-virtual {v2, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    goto :goto_8

    .line 266
    :cond_f
    invoke-virtual {v2, v6, v8}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    :goto_8
    const/4 v4, 0x0

    .line 268
    invoke-virtual {v2, v1, v10, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawShape(FZZ)V

    .line 270
    :goto_9
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    .line 274
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getInteriorColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v0

    move-object/from16 v5, v17

    .line 279
    iget v5, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    float-to-double v5, v5

    cmpg-double v5, v5, v21

    if-gez v5, :cond_10

    goto :goto_a

    :cond_10
    move v4, v10

    .line 285
    :goto_a
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v19

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 287
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    .line 288
    sget-object v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->ANGLED_STYLES:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-wide/from16 v9, v34

    .line 290
    invoke-static {v9, v10, v12, v11}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 291
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v31, 0x0

    move-object/from16 v23, p0

    move-object/from16 v25, v2

    move/from16 v27, v8

    move/from16 v28, v1

    move/from16 v29, v4

    move/from16 v30, v0

    invoke-virtual/range {v23 .. v31}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->drawStyle(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFFZZZ)V

    move v5, v8

    goto :goto_b

    :cond_11
    move-wide/from16 v9, v34

    float-to-double v13, v8

    .line 299
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move v5, v8

    mul-double v7, v13, v15

    double-to-float v7, v7

    sub-float v26, v12, v7

    .line 300
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v13, v7

    double-to-float v7, v13

    add-float v27, v11, v7

    .line 301
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getStartPointEndingStyle()Ljava/lang/String;

    move-result-object v24

    const/16 v31, 0x0

    move-object/from16 v23, p0

    move-object/from16 v25, v2

    move/from16 v28, v1

    move/from16 v29, v4

    move/from16 v30, v0

    invoke-virtual/range {v23 .. v31}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->drawStyle(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFFZZZ)V

    .line 303
    :goto_b
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    goto :goto_c

    :cond_12
    move v5, v8

    move-wide/from16 v9, v34

    .line 307
    :goto_c
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 310
    sget-object v6, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->ANGLED_STYLES:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move/from16 v7, v18

    move/from16 v6, v33

    .line 312
    invoke-static {v9, v10, v6, v7}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 313
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v31, 0x1

    move-object/from16 v23, p0

    move-object/from16 v25, v2

    move/from16 v27, v5

    move/from16 v28, v1

    move/from16 v29, v4

    move/from16 v30, v0

    invoke-virtual/range {v23 .. v31}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->drawStyle(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFFZZZ)V

    goto :goto_e

    :cond_13
    move/from16 v7, v18

    move/from16 v6, v33

    float-to-double v11, v5

    .line 321
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v11

    double-to-float v5, v13

    sub-float v26, v6, v5

    .line 322
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v11, v5

    double-to-float v5, v11

    add-float v27, v7, v5

    .line 323
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationLine;->getEndPointEndingStyle()Ljava/lang/String;

    move-result-object v24

    const/16 v31, 0x1

    move-object/from16 v23, p0

    move-object/from16 v25, v2

    move/from16 v28, v1

    move/from16 v29, v4

    move/from16 v30, v0

    invoke-virtual/range {v23 .. v31}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDLineAppearanceHandler;->drawStyle(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFFZZZ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :catchall_0
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    move-object/from16 v32, v15

    .line 329
    :goto_d
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v32

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 332
    :cond_14
    :goto_e
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_f
    invoke-static {v2}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 333
    throw v0

    :cond_15
    :goto_10
    return-void
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method
