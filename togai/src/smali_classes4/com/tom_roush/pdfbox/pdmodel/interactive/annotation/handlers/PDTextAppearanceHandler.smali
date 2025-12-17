.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDTextAppearanceHandler.java"


# static fields
.field private static final SUPPORTED_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->SUPPORTED_NAMES:Ljava/util/Set;

    const-string v1, "Note"

    .line 48
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Insert"

    .line 49
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Cross"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Help"

    .line 51
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Circle"

    .line 52
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Paragraph"

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "NewParagraph"

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Check"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Star"

    .line 56
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "RightArrow"

    .line 57
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "RightPointer"

    .line 58
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "CrossHairs"

    .line 59
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "UpArrow"

    .line 60
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "UpLeftArrow"

    .line 61
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Comment"

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "Key"

    .line 63
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    return-void
.end method

.method private addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method private adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->isNoZoom()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 196
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v1

    sub-float/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 197
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->setNoRotate(Z)V

    .line 203
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->setNoZoom(Z)V

    .line 205
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-direct {v0, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    .line 206
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    return-object v0
.end method

.method private drawCheck(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v1, 0x41980000    # 19.0f

    .line 463
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 467
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x1

    .line 468
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v0, 0x3f170a3d    # 0.59f

    .line 470
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p1, v0

    .line 472
    invoke-static {p1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const/4 p1, 0x0

    const/high16 v0, 0x42480000    # 50.0f

    .line 473
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 477
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v0, "a20"

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 478
    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V

    .line 479
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    return-void
.end method

.method private drawCircles(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    .line 238
    invoke-direct {p0, p1, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 251
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    .line 254
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 255
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 256
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>()V

    .line 257
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setAlphaSourceFlag(Z)V

    const v0, 0x3f19999a    # 0.6f

    .line 258
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 259
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setNonStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 260
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V

    .line 261
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    .line 262
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColor(F)V

    .line 263
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 264
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    div-float/2addr p1, v1

    const v1, 0x40cb851f    # 6.36f

    .line 265
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircle(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    .line 266
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fill()V

    .line 267
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    const v2, 0x3f170a3d    # 0.59f

    .line 269
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 270
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircle(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    const v1, 0x411c1893    # 9.756f

    .line 271
    invoke-virtual {p0, p2, v0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircle2(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    .line 272
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    return-void
.end method

.method private drawComment(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41900000    # 18.0f

    .line 614
    invoke-direct {p0, p1, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const/high16 v0, 0x40800000    # 4.0f

    .line 616
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x1

    .line 617
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const/high16 v1, 0x43480000    # 200.0f

    .line 619
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 622
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 623
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 624
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>()V

    .line 625
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setAlphaSourceFlag(Z)V

    const v0, 0x3f19999a    # 0.6f

    .line 626
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 627
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setNonStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 628
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V

    .line 629
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    .line 630
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColor(F)V

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x418b3333    # 17.4f

    .line 631
    invoke-virtual {p2, v0, v0, v1, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->addRect(FFFF)V

    .line 632
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fill()V

    .line 633
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    const v0, 0x3b449ba6    # 0.003f

    .line 635
    invoke-static {v0, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const/high16 v0, 0x43fa0000    # 500.0f

    const/high16 v1, -0x3c6a0000    # -300.0f

    .line 636
    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const v0, 0x451f5000    # 2549.0f

    const v1, 0x45a4a800    # 5269.0f

    .line 640
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const v1, 0x44a36000    # 1307.0f

    const v2, 0x45a4a800    # 5269.0f

    const/high16 v3, 0x43960000    # 300.0f

    const v4, 0x458b1800    # 4451.0f

    const/high16 v5, 0x43960000    # 300.0f

    const v6, 0x45571000    # 3441.0f

    move-object v0, p2

    .line 641
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v1, 0x43960000    # 300.0f

    const v2, 0x453cf000    # 3023.0f

    const/high16 v3, 0x43ed0000    # 474.0f

    const/high16 v4, 0x45250000    # 2640.0f

    const/high16 v5, 0x443f0000    # 764.0f

    const v6, 0x4511b000    # 2331.0f

    .line 642
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x441e4000    # 633.0f

    const v2, 0x44f82000    # 1985.0f

    const v3, 0x43b48000    # 361.0f

    const v4, 0x44d36000    # 1691.0f

    const v5, 0x43b28000    # 357.0f

    const/high16 v6, 0x44d30000    # 1688.0f

    .line 643
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x43958000    # 299.0f

    const v2, 0x44cb4000    # 1626.0f

    const v3, 0x438d8000    # 283.0f

    const v4, 0x44c02000    # 1537.0f

    const/high16 v5, 0x439e0000    # 316.0f

    const v6, 0x44b66000    # 1459.0f

    .line 644
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v1, 0x43af0000    # 350.0f

    const v2, 0x44acc000    # 1382.0f

    const/high16 v3, 0x43d50000    # 426.0f

    const v4, 0x44a68000    # 1332.0f

    const/high16 v5, 0x43ff0000    # 510.0f

    const v6, 0x44a68000    # 1332.0f

    .line 645
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x44836000    # 1051.0f

    const v2, 0x44a68000    # 1332.0f

    const v3, 0x44b8a000    # 1477.0f

    const v4, 0x44c2c000    # 1558.0f

    const v5, 0x44d8a000    # 1733.0f

    const v6, 0x44d96000    # 1739.0f

    .line 646
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x44f86000    # 1987.0f

    const v2, 0x44cf6000    # 1659.0f

    const v3, 0x450d5000    # 2261.0f

    const v4, 0x44c9a000    # 1613.0f

    const v5, 0x451f5000    # 2549.0f

    const v6, 0x44c9a000    # 1613.0f

    .line 647
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v1, 0x456d0000    # 3792.0f

    const v2, 0x44c9a000    # 1613.0f

    const v3, 0x4595f800    # 4799.0f

    const v4, 0x4517f000    # 2431.0f

    const v5, 0x4595f800    # 4799.0f

    const v6, 0x45571000    # 3441.0f

    .line 648
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x4595f800    # 4799.0f

    const v2, 0x458b1800    # 4451.0f

    const/high16 v3, 0x456d0000    # 3792.0f

    const v4, 0x45a4a800    # 5269.0f

    const v5, 0x451f5000    # 2549.0f

    const v6, 0x45a4a800    # 5269.0f

    .line 649
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    .line 650
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    const/high16 v0, -0x3c380000    # -400.0f

    const/high16 v1, 0x43c80000    # 400.0f

    .line 653
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const v2, 0x45c1c000    # 6200.0f

    .line 654
    invoke-virtual {p2, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v0, 0x45a8c000    # 5400.0f

    .line 655
    invoke-virtual {p2, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 656
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 658
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closeAndFillAndStroke()V

    return-void
.end method

.method private drawCross(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41980000    # 19.0f

    .line 293
    invoke-direct {p0, p1, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, p1, v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float v1, p1, v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 303
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v2, 0x1

    .line 304
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v2, 0x0

    .line 305
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v2, 0x3f170a3d    # 0.59f

    .line 306
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 308
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 309
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float v3, v2, v0

    .line 310
    invoke-virtual {p2, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    sub-float v4, p1, v1

    .line 311
    invoke-virtual {p2, v4, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    sub-float/2addr p1, v0

    .line 312
    invoke-virtual {p2, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    add-float v5, v2, v0

    .line 313
    invoke-virtual {p2, v5, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 314
    invoke-virtual {p2, p1, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 315
    invoke-virtual {p2, v4, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 316
    invoke-virtual {p2, v2, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 317
    invoke-virtual {p2, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 318
    invoke-virtual {p2, v0, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 319
    invoke-virtual {p2, v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 320
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closeAndFillAndStroke()V

    return-void
.end method

.method private drawCrossHairs(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    .line 508
    invoke-direct {p0, p1, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 510
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 512
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x0

    .line 513
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    .line 514
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v0, 0x3f1c28f6    # 0.61f

    .line 515
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3fc00000    # 1.5f

    div-float/2addr p1, v0

    .line 517
    invoke-static {p1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const/4 p1, 0x0

    const/high16 v0, 0x42480000    # 50.0f

    .line 518
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 522
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->SYMBOL:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v0, "circleplus"

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 523
    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V

    .line 524
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    return-void
.end method

.method private drawHelp(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    .line 329
    invoke-direct {p0, p1, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 333
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x1

    .line 334
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v1, 0x3f170a3d    # 0.59f

    .line 336
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 339
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 340
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 341
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>()V

    .line 342
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setAlphaSourceFlag(Z)V

    const v0, 0x3f19999a    # 0.6f

    .line 343
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 344
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setNonStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 345
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V

    .line 346
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    .line 347
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColor(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    sub-float v1, v0, v1

    .line 348
    invoke-virtual {p0, p2, v0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircle2(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    .line 349
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fill()V

    .line 350
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    .line 352
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr p1, v2

    const/high16 v2, 0x40100000    # 2.25f

    div-float/2addr p1, v2

    .line 355
    invoke-static {p1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const/high16 p1, 0x43fa0000    # 500.0f

    const v2, 0x43bb8000    # 375.0f

    .line 356
    invoke-static {p1, v2}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 360
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA_BOLD:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v2, "question"

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 361
    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V

    .line 362
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    .line 364
    invoke-virtual {p0, p2, v0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircle2(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    .line 365
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    return-void
.end method

.method private drawInsert(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v1, 0x41a00000    # 20.0f

    .line 278
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 280
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    .line 282
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v0, 0x3f170a3d    # 0.59f

    .line 283
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 284
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-virtual {p2, v0, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 285
    invoke-virtual {p2, v2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 286
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p1

    sub-float/2addr p1, v1

    invoke-virtual {p2, p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 287
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closeAndFillAndStroke()V

    return-void
.end method

.method private drawKey(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41500000    # 13.0f

    const/high16 v1, 0x41900000    # 18.0f

    .line 664
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const/high16 v0, 0x40800000    # 4.0f

    .line 666
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x1

    .line 667
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v0, 0x0

    .line 668
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const/high16 v0, 0x43480000    # 200.0f

    .line 669
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const v0, 0x3b449ba6    # 0.003f

    .line 671
    invoke-static {v0, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 672
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const v2, 0x451c4000    # 2500.0f

    const/high16 v3, -0x3bb80000    # -800.0f

    invoke-static {v0, v1, v2, v3}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const v0, 0x4595f800    # 4799.0f

    const v1, 0x457a4000    # 4004.0f

    .line 676
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const v1, 0x4595f800    # 4799.0f

    const v2, 0x4544d000    # 3149.0f

    const v3, 0x45805800    # 4107.0f

    const v4, 0x45199000    # 2457.0f

    const v5, 0x454b5000    # 3253.0f

    const v6, 0x45199000    # 2457.0f

    move-object v0, p2

    .line 677
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x45452000    # 3154.0f

    const v2, 0x45199000    # 2457.0f

    const v3, 0x453f2000    # 3058.0f

    const v4, 0x451a2000    # 2466.0f

    const v5, 0x45394000    # 2964.0f

    const v6, 0x451b4000    # 2484.0f

    .line 678
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v0, 0x452c1000    # 2753.0f

    const v1, 0x450c6000    # 2246.0f

    .line 679
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x45299000    # 2713.0f

    const v2, 0x45099000    # 2201.0f

    const/high16 v3, 0x45260000    # 2656.0f

    const v4, 0x4507f000    # 2175.0f

    const v5, 0x45223000    # 2595.0f

    const v6, 0x4507f000    # 2175.0f

    move-object v0, p2

    .line 680
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v0, 0x4507f000    # 2175.0f

    const v1, 0x450dc000    # 2268.0f

    .line 681
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 v0, 0x44e40000    # 1824.0f

    .line 682
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v2, 0x44d56000    # 1707.0f

    const v3, 0x4507e000    # 2174.0f

    const v4, 0x44c9a000    # 1613.0f

    const v5, 0x45009000    # 2057.0f

    const v6, 0x44c9a000    # 1613.0f

    move-object v0, p2

    .line 683
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v0, 0x44c9a000    # 1613.0f

    const v1, 0x44d54000    # 1706.0f

    .line 684
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v0, 0x449da000    # 1261.0f

    .line 685
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v2, 0x448f2000    # 1145.0f

    const v3, 0x44c96000    # 1611.0f

    const v4, 0x44834000    # 1050.0f

    const v5, 0x44bae000    # 1495.0f

    const v6, 0x44834000    # 1050.0f

    move-object v0, p2

    .line 686
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v0, 0x43ff0000    # 510.0f

    const v1, 0x44834000    # 1050.0f

    .line 687
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 v1, 0x43c50000    # 394.0f

    const v2, 0x44834000    # 1050.0f

    const/high16 v3, 0x43960000    # 300.0f

    const v4, 0x448f2000    # 1145.0f

    const/high16 v5, 0x43960000    # 300.0f

    const v6, 0x449da000    # 1261.0f

    move-object v0, p2

    .line 688
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v0, 0x43960000    # 300.0f

    const v1, 0x44f36000    # 1947.0f

    .line 689
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 v1, 0x43960000    # 300.0f

    const v2, 0x44fa6000    # 2003.0f

    const/high16 v3, 0x43a10000    # 322.0f

    const v4, 0x45009000    # 2057.0f

    const v5, 0x43b48000    # 361.0f

    const v6, 0x45031000    # 2097.0f

    move-object v0, p2

    .line 690
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v0, 0x44dee000    # 1783.0f

    const v1, 0x455bf000    # 3519.0f

    .line 691
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const v1, 0x44d8a000    # 1733.0f

    const v2, 0x45657000    # 3671.0f

    const v3, 0x44d54000    # 1706.0f

    const v4, 0x456fa000    # 3834.0f

    const v5, 0x44d54000    # 1706.0f

    const v6, 0x457a4000    # 4004.0f

    move-object v0, p2

    .line 692
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x44d54000    # 1706.0f

    const v2, 0x4597d000    # 4858.0f

    const v3, 0x4515e000    # 2398.0f

    const v4, 0x45ad7000    # 5550.0f

    const v5, 0x454b5000    # 3253.0f

    const v6, 0x45ad7000    # 5550.0f

    .line 693
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x45806800    # 4109.0f

    const v2, 0x45ad7000    # 5550.0f

    const v3, 0x4595f800    # 4799.0f

    const v4, 0x4597e000    # 4860.0f

    const v5, 0x4595f800    # 4799.0f

    const v6, 0x457a4000    # 4004.0f

    .line 694
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    .line 695
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closePath()V

    const v0, 0x454b5000    # 3253.0f

    const v1, 0x458a4800    # 4425.0f

    .line 696
    invoke-virtual {p2, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const v1, 0x454b5000    # 3253.0f

    const/high16 v2, 0x45830000    # 4192.0f

    const v3, 0x45571000    # 3441.0f

    const v4, 0x457a4000    # 4004.0f

    const v5, 0x4565a000    # 3674.0f

    move-object v0, p2

    .line 697
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x45743000    # 3907.0f

    const v2, 0x457a4000    # 4004.0f

    const/high16 v3, 0x45800000    # 4096.0f

    const/high16 v4, 0x45830000    # 4192.0f

    const/high16 v5, 0x45800000    # 4096.0f

    const v6, 0x458a4800    # 4425.0f

    .line 698
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const/high16 v1, 0x45800000    # 4096.0f

    const v2, 0x45919000    # 4658.0f

    const v3, 0x45743000    # 3907.0f

    const v4, 0x45977800    # 4847.0f

    const v5, 0x4565a000    # 3674.0f

    const v6, 0x45977800    # 4847.0f

    .line 699
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    const v1, 0x45571000    # 3441.0f

    const v2, 0x45977800    # 4847.0f

    const v3, 0x454b5000    # 3253.0f

    const v4, 0x45919000    # 4658.0f

    const v5, 0x454b5000    # 3253.0f

    const v6, 0x458a4800    # 4425.0f

    .line 700
    invoke-virtual/range {v0 .. v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->curveTo(FFFFFF)V

    .line 701
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    return-void
.end method

.method private drawNewParagraph(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41500000    # 13.0f

    const/high16 v1, 0x41a00000    # 20.0f

    .line 413
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const/high16 p1, 0x40800000    # 4.0f

    .line 415
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 p1, 0x0

    .line 416
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    .line 417
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const p1, 0x3f170a3d    # 0.59f

    .line 418
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const p1, 0x40cffbe7

    .line 421
    invoke-virtual {p2, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const p1, 0x3e970a3d    # 0.295f

    const v0, 0x40e92f1b    # 7.287f

    .line 422
    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const p1, 0x414b47ae    # 12.705f

    .line 423
    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 424
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closeAndFillAndStroke()V

    const p1, 0x3b83126f    # 0.004f

    .line 428
    invoke-static {p1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const/high16 p1, 0x43480000    # 200.0f

    const/4 v0, 0x0

    .line 429
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 430
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA_BOLD:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v1, "N"

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V

    const p1, 0x44a28000    # 1300.0f

    .line 431
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 432
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA_BOLD:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v0, "P"

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V

    .line 433
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fill()V

    return-void
.end method

.method private drawNote(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41900000    # 18.0f

    const/high16 v1, 0x41a00000    # 20.0f

    .line 213
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 214
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v1, 0x1

    .line 217
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v1, 0x3f1c28f6    # 0.61f

    .line 220
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 221
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    .line 222
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    sub-float v3, v1, v2

    sub-float v4, p1, v2

    const/high16 v5, 0x3f800000    # 1.0f

    .line 223
    invoke-virtual {p2, v5, v5, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->addRect(FFFF)V

    div-float v3, v1, v0

    const/high16 v4, 0x40e00000    # 7.0f

    div-float/2addr p1, v4

    mul-float/2addr v2, p1

    .line 224
    invoke-virtual {p2, v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v1, v4

    div-float/2addr v1, v0

    sub-float/2addr v1, v5

    .line 225
    invoke-virtual {p2, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    mul-float/2addr v4, p1

    .line 226
    invoke-virtual {p2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 227
    invoke-virtual {p2, v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    mul-float/2addr v0, p1

    .line 228
    invoke-virtual {p2, v3, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 229
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr p1, v0

    .line 230
    invoke-virtual {p2, v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    .line 231
    invoke-virtual {p2, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 232
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    return-void
.end method

.method private drawParagraph(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    .line 371
    invoke-direct {p0, p1, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 373
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 375
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x1

    .line 376
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v0, 0x0

    .line 377
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v1, 0x3f170a3d    # 0.59f

    .line 378
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 381
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 382
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 383
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>()V

    .line 384
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setAlphaSourceFlag(Z)V

    const v0, 0x3f19999a    # 0.6f

    .line 385
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 386
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setNonStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 387
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V

    .line 388
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    .line 389
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColor(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    sub-float v1, v0, v1

    .line 390
    invoke-virtual {p0, p2, v0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircle2(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    .line 391
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fill()V

    .line 392
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    .line 394
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr p1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr p1, v2

    .line 397
    invoke-static {p1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const p1, 0x44548000    # 850.0f

    const/high16 v2, 0x44610000    # 900.0f

    .line 398
    invoke-static {p1, v2}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 402
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v2, "paragraph"

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 403
    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V

    .line 404
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    .line 405
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    .line 406
    invoke-virtual {p0, p2, v0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircle(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    .line 407
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->stroke()V

    return-void
.end method

.method private drawRightArrow(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    .line 572
    invoke-direct {p0, p1, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 574
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 576
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x1

    .line 577
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v1, 0x3f170a3d    # 0.59f

    .line 579
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 582
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 583
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    .line 584
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;-><init>()V

    .line 585
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setAlphaSourceFlag(Z)V

    const v0, 0x3f19999a    # 0.6f

    .line 586
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 587
    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setNonStrokingAlphaConstant(Ljava/lang/Float;)V

    .line 588
    sget-object v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;->NORMAL:Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/SeparableBlendMode;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;->setBlendMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/blend/BlendMode;)V

    .line 589
    invoke-virtual {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    .line 590
    invoke-virtual {p2, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColor(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    sub-float v1, v0, v1

    .line 591
    invoke-virtual {p0, p2, v0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircle2(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    .line 592
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fill()V

    .line 593
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    .line 595
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr p1, v2

    const v2, 0x3fa66666    # 1.3f

    div-float/2addr p1, v2

    .line 598
    invoke-static {p1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const/high16 p1, 0x43480000    # 200.0f

    const/high16 v2, 0x43960000    # 300.0f

    .line 599
    invoke-static {p1, v2}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 603
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v2, "a160"

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 604
    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V

    .line 605
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    .line 607
    invoke-virtual {p0, p2, v0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircle(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFF)V

    .line 608
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    return-void
.end method

.method private drawRightPointer(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v1, 0x41880000    # 17.0f

    .line 486
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 490
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x1

    .line 491
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v0, 0x0

    .line 492
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v0, 0x3f170a3d    # 0.59f

    .line 493
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p1, v0

    .line 495
    invoke-static {p1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const/4 p1, 0x0

    const/high16 v0, 0x42480000    # 50.0f

    .line 496
    invoke-static {p1, v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 500
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v0, "a174"

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 501
    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V

    .line 502
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    return-void
.end method

.method private drawStar(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    const/high16 v1, 0x41980000    # 19.0f

    .line 439
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 441
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 443
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 v0, 0x1

    .line 444
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const v0, 0x3f170a3d    # 0.59f

    .line 446
    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const v0, 0x3a83126f    # 0.001f

    mul-float/2addr p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    div-float/2addr p1, v0

    .line 448
    invoke-static {p1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 452
    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->ZAPF_DINGBATS:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    const-string v0, "a35"

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    .line 453
    invoke-direct {p0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->addPath(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;Landroid/graphics/Path;)V

    .line 454
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    return-void
.end method

.method private drawUpArrow(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v1, 0x41a00000    # 20.0f

    .line 530
    invoke-direct {p0, p1, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const/high16 p1, 0x40800000    # 4.0f

    .line 532
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 p1, 0x1

    .line 533
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 p1, 0x0

    .line 534
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const p1, 0x3f170a3d    # 0.59f

    .line 535
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v0, 0x40e00000    # 7.0f

    .line 537
    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 538
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 539
    invoke-virtual {p2, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 540
    invoke-virtual {p2, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 541
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 542
    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 p1, 0x41080000    # 8.5f

    const/high16 v0, 0x41980000    # 19.0f

    .line 543
    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 544
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closeAndFillAndStroke()V

    return-void
.end method

.method private drawUpLeftArrow(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x41880000    # 17.0f

    .line 550
    invoke-direct {p0, p1, v0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->adjustRectAndBBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;FF)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    const/high16 p1, 0x40800000    # 4.0f

    .line 552
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setMiterLimit(F)V

    const/4 p1, 0x1

    .line 553
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineJoinStyle(I)V

    const/4 p1, 0x0

    .line 554
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineCapStyle(I)V

    const p1, 0x3f170a3d    # 0.59f

    .line 555
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 557
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const/high16 p1, 0x41000000    # 8.0f

    const/high16 v2, -0x3f800000    # -4.0f

    invoke-static {v0, v1, p1, v2}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v0, 0x40e00000    # 7.0f

    .line 559
    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    const/high16 v1, 0x40a00000    # 5.0f

    .line 560
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 561
    invoke-virtual {p2, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 562
    invoke-virtual {p2, v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 563
    invoke-virtual {p2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 564
    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    const/high16 p1, 0x41080000    # 8.5f

    const/high16 v0, 0x41980000    # 19.0f

    .line 565
    invoke-virtual {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    .line 566
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->closeAndFillAndStroke()V

    return-void
.end method


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 4

    .line 79
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->SUPPORTED_NAMES:Ljava/util/Set;

    .line 80
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->getNormalAppearanceAsContentStream()Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 95
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColor(F)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    .line 103
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getConstantOpacity()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 105
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Note"

    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawNote(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto/16 :goto_1

    :cond_2
    const-string v3, "Cross"

    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCross(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto/16 :goto_1

    :cond_3
    const-string v3, "Circle"

    .line 115
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCircles(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto/16 :goto_1

    :cond_4
    const-string v3, "Insert"

    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawInsert(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto/16 :goto_1

    :cond_5
    const-string v3, "Help"

    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 125
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawHelp(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto/16 :goto_1

    :cond_6
    const-string v3, "Paragraph"

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 129
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawParagraph(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto/16 :goto_1

    :cond_7
    const-string v3, "NewParagraph"

    .line 131
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawNewParagraph(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto/16 :goto_1

    :cond_8
    const-string v3, "Star"

    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawStar(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto/16 :goto_1

    :cond_9
    const-string v3, "Check"

    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 141
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCheck(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto :goto_1

    :cond_a
    const-string v3, "RightArrow"

    .line 143
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawRightArrow(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto :goto_1

    :cond_b
    const-string v3, "RightPointer"

    .line 147
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 149
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawRightPointer(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto :goto_1

    :cond_c
    const-string v3, "CrossHairs"

    .line 151
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawCrossHairs(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto :goto_1

    :cond_d
    const-string v3, "UpArrow"

    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 157
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawUpArrow(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto :goto_1

    :cond_e
    const-string v3, "UpLeftArrow"

    .line 159
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 161
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawUpLeftArrow(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto :goto_1

    :cond_f
    const-string v3, "Comment"

    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawComment(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    goto :goto_1

    :cond_10
    const-string v3, "Key"

    .line 167
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 169
    invoke-direct {p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDTextAppearanceHandler;->drawKey(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationText;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "PdfBox-Android"

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :cond_11
    :goto_1
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :goto_2
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 179
    throw v0
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method
