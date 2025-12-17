.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;
.super Ljava/lang/Object;
.source "PDExtendedGraphicsState.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 49
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->EXT_G_STATE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method private defaultIfNull(Ljava/lang/Float;F)F
    .locals 0

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_0
    return p2
.end method

.method private getFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 649
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 650
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_0

    .line 652
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 653
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private setFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/Float;)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 668
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 672
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {v1, p2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public copyIntoGraphicsState(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 71
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 73
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getLineWidth()Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->defaultIfNull(Ljava/lang/Float;F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setLineWidth(F)V

    goto :goto_0

    .line 77
    :cond_1
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getLineCapStyle()Landroid/graphics/Paint$Cap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setLineCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 81
    :cond_2
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getLineJoinStyle()Landroid/graphics/Paint$Join;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setLineJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0

    .line 85
    :cond_3
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->ML:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getMiterLimit()Ljava/lang/Float;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->defaultIfNull(Ljava/lang/Float;F)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setMiterLimit(F)V

    goto :goto_0

    .line 89
    :cond_4
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 91
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getLineDashPattern()Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setLineDashPattern(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;)V

    goto :goto_0

    .line 93
    :cond_5
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->RI:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getRenderingIntent()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setRenderingIntent(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;)V

    goto :goto_0

    .line 97
    :cond_6
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OPM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 99
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getOverprintMode()Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->defaultIfNull(Ljava/lang/Float;F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setOverprintMode(D)V

    goto/16 :goto_0

    .line 101
    :cond_7
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 103
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getStrokingOverprintControl()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setOverprint(Z)V

    goto/16 :goto_0

    .line 105
    :cond_8
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->OP_NS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 107
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getNonStrokingOverprintControl()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setNonStrokingOverprint(Z)V

    goto/16 :goto_0

    .line 109
    :cond_9
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 111
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getFontSetting()Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    .line 115
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;->getFontSize()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->setFontSize(F)V

    goto/16 :goto_0

    .line 118
    :cond_a
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->FL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 120
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getFlatnessTolerance()Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->defaultIfNull(Ljava/lang/Float;F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setFlatness(D)V

    goto/16 :goto_0

    .line 122
    :cond_b
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 124
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getSmoothnessTolerance()Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->defaultIfNull(Ljava/lang/Float;F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setSmoothness(D)V

    goto/16 :goto_0

    .line 126
    :cond_c
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 128
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getAutomaticStrokeAdjustment()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setStrokeAdjustment(Z)V

    goto/16 :goto_0

    .line 130
    :cond_d
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 132
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getStrokingAlphaConstant()Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->defaultIfNull(Ljava/lang/Float;F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setAlphaConstant(D)V

    goto/16 :goto_0

    .line 134
    :cond_e
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->CA_NS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 136
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getNonStrokingAlphaConstant()Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->defaultIfNull(Ljava/lang/Float;F)F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setNonStrokeAlphaConstant(D)V

    goto/16 :goto_0

    .line 138
    :cond_f
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->AIS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 140
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getAlphaSourceFlag()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setAlphaSource(Z)V

    goto/16 :goto_0

    .line 142
    :cond_10
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 144
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getTextKnockoutFlag()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->setKnockoutFlag(Z)V

    goto/16 :goto_0

    .line 146
    :cond_11
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->SMASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 148
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getSoftMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 153
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getCurrentTransformationMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/util/Matrix;->clone()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->setInitialTransformationMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 155
    :cond_12
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setSoftMask(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;)V

    goto/16 :goto_0

    .line 157
    :cond_13
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->BM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 159
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getBlendMode()Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V

    goto/16 :goto_0

    .line 161
    :cond_14
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 163
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TR2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_0

    .line 169
    :cond_15
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getTransfer()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setTransfer(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto/16 :goto_0

    .line 171
    :cond_16
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TR2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getTransfer2()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setTransfer(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto/16 :goto_0

    :cond_17
    return-void
.end method

.method public getAlphaSourceFlag()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 568
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AIS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getAutomaticStrokeAdjustment()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 506
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SA:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getBlendMode()Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 590
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->getInstance(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getFlatnessTolerance()Ljava/lang/Float;
    .locals 1

    .line 466
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getFontSetting()Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 440
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 441
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    .line 443
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 444
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getLineCapStyle()Landroid/graphics/Paint$Cap;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 230
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 235
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 233
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getLineDashPattern()Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 312
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 313
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 315
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    const/4 v2, 0x1

    .line 316
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 317
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v2, :cond_0

    .line 319
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v0

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getLineJoinStyle()Landroid/graphics/Paint$Join;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 260
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 267
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object v0

    .line 265
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0

    .line 263
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object v0
.end method

.method public getLineWidth()Ljava/lang/Float;
    .locals 1

    .line 210
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getMiterLimit()Ljava/lang/Float;
    .locals 1

    .line 291
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ML:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getNonStrokingAlphaConstant()Ljava/lang/Float;
    .locals 1

    .line 546
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CA_NS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getNonStrokingOverprintControl()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 391
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OP_NS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getStrokingOverprintControl()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getOverprintMode()Ljava/lang/Float;
    .locals 1

    .line 411
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->OPM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingIntent()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "RI"

    .line 342
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->fromString(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmoothnessTolerance()Ljava/lang/Float;
    .locals 1

    .line 486
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getSoftMask()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 610
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SMASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 614
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SMASK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDSoftMask;

    move-result-object v0

    return-object v0
.end method

.method public getStrokingAlphaConstant()Ljava/lang/Float;
    .locals 1

    .line 526
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->getFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getStrokingOverprintControl()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 370
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OP:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getTextKnockoutFlag()Z
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 626
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TK:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)Z

    move-result v0

    return v0
.end method

.method public getTransfer()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 686
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 687
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getTransfer2()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 718
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TR2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 719
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public setAlphaSourceFlag(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 580
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AIS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setAutomaticStrokeAdjustment(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 516
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 600
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->getCOSName(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setFlatnessTolerance(Ljava/lang/Float;)V
    .locals 1

    .line 476
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FL:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/Float;)V

    return-void
.end method

.method public setFontSetting(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDFontSetting;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 456
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setLineCapStyle(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 250
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LC:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setLineDashPattern(Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 332
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setLineJoinStyle(I)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 280
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LJ:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setLineWidth(Ljava/lang/Float;)V
    .locals 1

    .line 220
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LW:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/Float;)V

    return-void
.end method

.method public setMiterLimit(Ljava/lang/Float;)V
    .locals 1

    .line 301
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->ML:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/Float;)V

    return-void
.end method

.method public setNonStrokingAlphaConstant(Ljava/lang/Float;)V
    .locals 1

    .line 556
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CA_NS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/Float;)V

    return-void
.end method

.method public setNonStrokingOverprintControl(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 401
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OP_NS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setOverprintMode(Ljava/lang/Float;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 424
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->OPM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 428
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OPM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    :goto_0
    return-void
.end method

.method public setRenderingIntent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const-string v1, "RI"

    .line 360
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSmoothnessTolerance(Ljava/lang/Float;)V
    .locals 1

    .line 496
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->SM:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/Float;)V

    return-void
.end method

.method public setStrokingAlphaConstant(Ljava/lang/Float;)V
    .locals 1

    .line 536
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->CA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setFloatItem(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/Float;)V

    return-void
.end method

.method public setStrokingOverprintControl(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 380
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setTextKnockoutFlag(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 636
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TK:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setBoolean(Lcom/tom_roush/pdfbox/cos/COSName;Z)V

    return-void
.end method

.method public setTransfer(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 704
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TR:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setTransfer2(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->dict:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 737
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TR2:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
