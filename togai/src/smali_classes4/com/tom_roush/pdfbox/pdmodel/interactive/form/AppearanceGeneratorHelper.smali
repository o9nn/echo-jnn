.class Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;
.super Ljava/lang/Object;
.source "AppearanceGeneratorHelper.java"


# static fields
.field private static final BMC:Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

.field private static final DEFAULT_FONT_SIZE:F = 12.0f

.field private static final DEFAULT_PADDING:F = 0.5f

.field private static final EMC:Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

.field private static final FONTSCALE:I = 0x3e8

.field private static final HIGHLIGHT_COLOR:[F

.field private static final MAXIMUM_FONT_SIZE:F = 300.0f

.field private static final MINIMUM_FONT_SIZE:F = 4.0f


# instance fields
.field private defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

.field private final field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BMC"

    .line 65
    invoke-static {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->BMC:Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    const-string v0, "EMC"

    .line 66
    invoke-static {v0}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getOperator(Ljava/lang/String;)Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->EMC:Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->HIGHLIGHT_COLOR:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f41c1c2
        0x3f57d7d8
    .end array-data
.end method

.method constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 113
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->validateAndEnsureAcroFormResources()V

    .line 116
    :try_start_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getDefaultAppearanceString()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not process default appearance string \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getDefaultAppearance()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' for field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 119
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private applyPadding(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 5

    .line 926
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    add-float/2addr v2, p2

    .line 927
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr p2, v4

    sub-float/2addr v3, p2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FFFF)V

    return-object v0
.end method

.method private calculateFontSize(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)F
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    .line 787
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFontSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_6

    .line 791
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->isMultiLine()Z

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_4

    .line 792
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->getParagraphs()Ljava/util/List;

    move-result-object v1

    const/high16 v3, 0x41400000    # 12.0f

    if-eqz v1, :cond_3

    .line 794
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v4

    sub-float/2addr v1, v4

    const/high16 v4, 0x40800000    # 4.0f

    move v5, v4

    :goto_0
    cmpg-float v6, v5, v3

    if-gtz v6, :cond_2

    .line 799
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;->getParagraphs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;

    .line 800
    invoke-virtual {v8, p1, v5, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText$Paragraph;->getLines(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;FF)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_1

    :cond_0
    div-float v6, v5, v2

    .line 804
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tom_roush/fontbox/util/BoundingBox;->getHeight()F

    move-result v8

    mul-float/2addr v8, v6

    int-to-float v6, v7

    mul-float/2addr v8, v6

    .line 808
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v6

    cmpl-float v6, v8, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_1

    sub-float/2addr v5, v7

    .line 809
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_1
    add-float/2addr v5, v7

    goto :goto_0

    .line 813
    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_3
    return v3

    .line 819
    :cond_4
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleY()F

    move-result v0

    mul-float/2addr v0, v2

    .line 820
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleX()F

    move-result v3

    mul-float/2addr v3, v2

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->value:Ljava/lang/String;

    .line 823
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleX()F

    move-result v4

    mul-float/2addr v2, v4

    .line 824
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v4

    div-float/2addr v4, v2

    mul-float/2addr v4, v3

    .line 827
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getCapHeight()F

    move-result v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getDescent()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v2, v3

    .line 828
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_5

    .line 830
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getHeight()F

    move-result v1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getScaleY()F

    move-result p1

    mul-float v2, v1, p1

    .line 833
    :cond_5
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    div-float/2addr p1, v2

    mul-float/2addr p1, v0

    .line 835
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method private calculateMatrix(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;I)Lcom/tom_roush/harmony/awt/geom/AffineTransform;
    .locals 5

    if-nez p2, :cond_0

    .line 587
    new-instance p1, Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    invoke-direct {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;-><init>()V

    return-object p1

    :cond_0
    const/16 v0, 0x5a

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_1

    move p1, v1

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result p1

    goto :goto_0

    .line 595
    :cond_2
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v1

    .line 596
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result p1

    goto :goto_0

    .line 592
    :cond_3
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result p1

    move v4, v1

    move v1, p1

    move p1, v4

    :goto_0
    int-to-double v2, p2

    .line 604
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3, v1, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->createAffineTransform()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    return-object p1
.end method

.method private getFormattedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 260
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getActions()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 265
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDFormFieldAdditionalActions;->getF()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 268
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getScriptingHandler()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/ScriptingHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 270
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getScriptingHandler()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/ScriptingHandler;

    move-result-object v1

    .line 271
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;

    invoke-interface {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/ScriptingHandler;->format(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionJavaScript;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "PdfBox-Android"

    const-string v1, "Field contains a formatting action but no ScriptingHandler has been supplied - formatted value might be incorrect"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p1
.end method

.method private getTextAlign(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)I
    .locals 2

    .line 582
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->Q:Lcom/tom_roush/pdfbox/cos/COSName;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getQ()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result p1

    return p1
.end method

.method private getWidgetDefaultAppearanceString(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 317
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    invoke-direct {v1, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;-><init>(Lcom/tom_roush/pdfbox/cos/COSString;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-object v1
.end method

.method private initializeAppearanceContent(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceCharacteristicsDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 348
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v2

    invoke-direct {v1, v2, p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Ljava/io/OutputStream;)V

    if-eqz p2, :cond_4

    .line 353
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceCharacteristicsDictionary;->getBackground()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    .line 356
    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->resolveBoundingBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v3

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v4

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v5

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v2

    invoke-virtual {v1, v3, v4, v5, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->addRect(FFFF)V

    .line 358
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fill()V

    .line 362
    :cond_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceCharacteristicsDictionary;->getBorderColour()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object p2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 364
    invoke-virtual {v1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 367
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 368
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_2

    .line 369
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result v4

    :cond_2
    cmpl-float v3, v4, v3

    if-lez v3, :cond_4

    if-eqz p2, :cond_4

    cmpl-float p2, v4, v2

    if-eqz p2, :cond_3

    .line 374
    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setLineWidth(F)V

    .line 376
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->resolveBoundingBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v4, p2

    const/high16 p2, 0x3f000000    # 0.5f

    .line 377
    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->applyPadding(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result p2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v3

    .line 379
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    .line 378
    invoke-virtual {v1, p2, v2, v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->addRect(FFFF)V

    .line 380
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->closeAndStroke()V

    .line 384
    :cond_4
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->close()V

    .line 385
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 386
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->writeToStream([BLcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    return-void
.end method

.method private insertGeneratedAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v0

    invoke-direct {v6, v0, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Ljava/io/OutputStream;)V

    .line 447
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->resolveBoundingBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p3

    .line 455
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 458
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-direct {p0, p3, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->applyPadding(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p3

    .line 459
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->applyPadding(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    .line 461
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->saveGraphicsState()V

    .line 464
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v0

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v2

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v4

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v5

    invoke-virtual {v6, v0, v2, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->addRect(FFFF)V

    .line 465
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->clip()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    .line 468
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFont()Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 472
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "PdfBox-Android"

    if-eqz v0, :cond_1

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Font \'"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFontName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' of field \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 474
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' contains subsetted font \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "This may bring trouble with PDField.setValue(), PDAcroForm.flatten() or PDAcroForm.refreshAppearances()"

    .line 475
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "You should replace this font with a non-subsetted font:"

    .line 477
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PDFont font = PDType0Font.load(doc, new FileInputStream(fontfile), false);"

    .line 478
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "acroForm.getDefaultResources().put(COSName.getPDFName(\""

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    .line 480
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFontName()Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\", font);"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    .line 484
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->getFontSize()F

    move-result v0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 487
    invoke-direct {p0, v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->calculateFontSize(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)F

    move-result v0

    :cond_2
    move v5, v0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 492
    instance-of v0, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;

    if-eqz v0, :cond_3

    .line 493
    invoke-direct {p0, v6, p2, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->insertGeneratedListboxSelectionHighlight(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V

    .line 497
    :cond_3
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->beginText()V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    .line 500
    invoke-virtual {v0, v6, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->writeTo(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;F)V

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v0, v5, v0

    .line 507
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getHeight()F

    move-result v1

    mul-float/2addr v1, v0

    .line 512
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 513
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getCapHeight()F

    move-result v2

    mul-float/2addr v2, v0

    .line 514
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getDescent()F

    move-result v7

    mul-float/2addr v7, v0

    goto :goto_1

    .line 516
    :cond_4
    invoke-direct {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->resolveCapHeight(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)F

    move-result v7

    .line 517
    invoke-direct {p0, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->resolveDescent(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)F

    move-result v8

    .line 518
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "missing font descriptor - resolved Cap/Descent to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-float v2, v7, v0

    mul-float v7, v8, v0

    :goto_1
    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 523
    instance-of v9, v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    if-eqz v9, :cond_5

    check-cast v8, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    invoke-virtual {v8}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;->isMultiline()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 524
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result p3

    sub-float/2addr p3, v1

    goto :goto_2

    .line 528
    :cond_5
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_6

    .line 529
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result p3

    neg-float v1, v7

    add-float/2addr p3, v1

    goto :goto_2

    .line 532
    :cond_6
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v8

    sub-float/2addr v8, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v1, v8

    .line 535
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result p3

    sub-float p3, v1, p3

    neg-float v7, v7

    cmpg-float p3, p3, v7

    if-gez p3, :cond_7

    .line 537
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result p3

    add-float/2addr v7, p3

    .line 538
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p3

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v8

    sub-float/2addr p3, v8

    sub-float/2addr p3, v2

    .line 540
    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {v7, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    goto :goto_2

    :cond_7
    move p3, v1

    .line 546
    :goto_2
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    .line 550
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->shallComb()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 551
    invoke-direct {p0, v6, p2, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->insertGeneratedCombAppearance(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 552
    instance-of v2, v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;

    if-eqz v2, :cond_9

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    .line 553
    invoke-direct/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->insertGeneratedListboxAppearance(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V

    goto :goto_3

    .line 555
    :cond_9
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->value:Ljava/lang/String;

    invoke-direct {p2, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;-><init>(Ljava/lang/String;)V

    .line 556
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;-><init>()V

    .line 557
    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    .line 558
    invoke-virtual {v2, v5}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->setFontSize(F)V

    .line 561
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/fontbox/util/BoundingBox;->getHeight()F

    move-result v4

    mul-float/2addr v4, v0

    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;->setLeading(F)V

    .line 563
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;

    invoke-direct {v0, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;)V

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->style(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceStyle;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->text(Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainText;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;

    move-result-object p2

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->width(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;

    move-result-object p2

    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->isMultiLine()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->wrapLines(Z)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;

    move-result-object p2

    invoke-virtual {p2, v1, p3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->initialOffset(FF)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;

    move-result-object p2

    .line 565
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->getTextAlign(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->textAlign(I)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter$Builder;->build()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;

    move-result-object p1

    .line 566
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PlainTextFormatter;->format()V

    .line 569
    :goto_3
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->endText()V

    .line 570
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->restoreGraphicsState()V

    .line 571
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->close()V

    return-void

    .line 470
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "font is null, check whether /DA entry is incomplete or incorrect"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private insertGeneratedCombAppearance(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 641
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;->getMaxLen()I

    move-result v0

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 642
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getQ()I

    move-result v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->value:Ljava/lang/String;

    .line 643
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 645
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->applyPadding(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    .line 647
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 648
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getAscent()F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, p4

    .line 649
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    .line 650
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p2

    sub-float/2addr p2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p2, v5

    add-float/2addr v3, p2

    div-float p2, v4, v5

    const/4 v7, 0x2

    if-ne v1, v7, :cond_0

    sub-int/2addr v0, v2

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, v4

    add-float/2addr p2, v0

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    if-ne v1, v8, :cond_1

    sub-int/2addr v0, v2

    .line 663
    div-int/2addr v0, v7

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v7, v0

    :goto_2
    if-ge v1, v2, :cond_2

    iget-object v8, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->value:Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    .line 668
    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 669
    invoke-virtual {p3, v1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v8, v6

    mul-float/2addr v8, p4

    div-float/2addr v8, v5

    div-float/2addr v7, v5

    add-float/2addr p2, v7

    div-float v7, v8, v5

    sub-float/2addr p2, v7

    .line 673
    invoke-virtual {p1, p2, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->newLineAtOffset(FF)V

    .line 674
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->showText(Ljava/lang/String;)V

    move v3, v0

    move p2, v4

    move v7, v8

    move v1, v9

    goto :goto_2

    :cond_2
    return-void
.end method

.method private insertGeneratedListboxAppearance(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 723
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(F)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 725
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getQ()I

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 738
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error: Unknown justification value:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 728
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result p2

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->value:Ljava/lang/String;

    .line 729
    invoke-virtual {p4, v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getStringWidth(Ljava/lang/String;)F

    move-result v4

    div-float/2addr v4, v2

    mul-float/2addr v4, p5

    sub-float/2addr p2, v4

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr p2, v4

    if-ne v1, v3, :cond_3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    .line 736
    :cond_3
    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->newLineAtOffset(FF)V

    :goto_1
    iget-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 741
    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;->getOptionsDisplayValues()Ljava/util/List;

    move-result-object p2

    .line 742
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 744
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v1

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 746
    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;->getTopIndex()I

    move-result v3

    .line 747
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getFontDescriptor()Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFontDescriptor;->getAscent()F

    move-result v4

    .line 748
    invoke-virtual {p4}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object p4

    invoke-virtual {p4}, Lcom/tom_roush/fontbox/util/BoundingBox;->getHeight()F

    move-result p4

    move v5, v3

    :goto_2
    if-ge v5, v0, :cond_6

    if-ne v5, v3, :cond_4

    div-float v6, v4, v2

    mul-float/2addr v6, p5

    sub-float/2addr v1, v6

    goto :goto_3

    :cond_4
    div-float v6, p4, v2

    mul-float/2addr v6, p5

    sub-float/2addr v1, v6

    .line 756
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->beginText()V

    .line 759
    :goto_3
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v6

    invoke-virtual {p1, v6, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->newLineAtOffset(FF)V

    .line 760
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->showText(Ljava/lang/String;)V

    add-int/lit8 v6, v0, -0x1

    if-eq v5, v6, :cond_5

    .line 763
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->endText()V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private insertGeneratedListboxSelectionHighlight(Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 685
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;

    .line 686
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;->getSelectedOptionsIndex()Ljava/util/List;

    move-result-object v1

    .line 687
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;->getValue()Ljava/util/List;

    move-result-object v2

    .line 688
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;->getOptionsExportValues()Ljava/util/List;

    move-result-object v3

    .line 690
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 693
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 694
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 696
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 703
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDListBox;->getTopIndex()I

    move-result v0

    .line 705
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object p3

    invoke-virtual {p3}, Lcom/tom_roush/fontbox/util/BoundingBox;->getHeight()F

    move-result p3

    mul-float/2addr p3, p4

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    .line 708
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->applyPadding(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    .line 710
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->HIGHLIGHT_COLOR:[F

    const/4 v3, 0x0

    .line 711
    aget v3, v2, v3

    const/4 v4, 0x1

    aget v5, v2, v4

    const/4 v6, 0x2

    aget v2, v2, v6

    invoke-virtual {p1, v3, v5, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(FFF)V

    .line 713
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v2

    .line 714
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, p3

    sub-float/2addr v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v3, v1

    .line 715
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    .line 713
    invoke-virtual {p1, v2, v3, v1, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->addRect(FFFF)V

    .line 716
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->fill()V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 718
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDPageContentStream;->setNonStrokingColor(F)V

    return-void
.end method

.method private isMultiLine()Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 610
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;->isMultiline()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidAppearanceStream(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->isStream()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->getAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v2

    if-lez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private prepareNormalAppearanceStream(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;
    .locals 5

    .line 294
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDocument()Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    .line 298
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->resolveRotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)I

    move-result v1

    .line 299
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    int-to-double v2, v1

    .line 300
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v2

    .line 301
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/tom_roush/pdfbox/util/Matrix;->transformPoint(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 303
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    .line 304
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 306
    invoke-direct {p0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->calculateMatrix(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;I)Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    :cond_0
    const/4 p1, 0x1

    .line 310
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setFormType(I)V

    .line 311
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setResources(Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-object v0
.end method

.method private resolveBoundingBox(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;
    .locals 0

    .line 912
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    if-nez p2, :cond_0

    .line 914
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->createRetranslatedRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private resolveCapHeight(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "H"

    const/4 v1, 0x0

    .line 847
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->resolveGlyphHeight(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;I)F

    move-result p1

    return p1
.end method

.method private resolveDescent(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "y"

    const/4 v1, 0x0

    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->resolveGlyphHeight(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;I)F

    move-result v0

    const-string v2, "a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->resolveGlyphHeight(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;I)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private resolveGlyphHeight(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;I)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 862
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 868
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;

    .line 869
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getCharProc(I)Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 871
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3Font;->getBoundingBox()Lcom/tom_roush/fontbox/util/BoundingBox;

    move-result-object p1

    .line 872
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDType3CharProc;->getGlyphBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 875
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getLowerLeftX()F

    move-result v0

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 876
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getLowerLeftY()F

    move-result v0

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 877
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getUpperRightX()F

    move-result v0

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 878
    invoke-virtual {p1}, Lcom/tom_roush/fontbox/util/BoundingBox;->getUpperRightY()F

    move-result p1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 879
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->toGeneralPath()Landroid/graphics/Path;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    .line 882
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;

    if-eqz v0, :cond_1

    .line 883
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;

    .line 884
    invoke-interface {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDVectorFont;->getPath(I)Landroid/graphics/Path;

    move-result-object v1

    goto :goto_0

    .line 885
    :cond_1
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    if-eqz v0, :cond_2

    .line 886
    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;

    .line 890
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getEncoding()Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/encoding/Encoding;->getName(I)Ljava/lang/String;

    move-result-object p2

    .line 891
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/font/PDSimpleFont;->getPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    goto :goto_0

    .line 894
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown font class: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 899
    :cond_4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    const/4 p2, 0x1

    .line 900
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 901
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    return p1
.end method

.method private resolveRotation(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)I
    .locals 0

    .line 322
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getAppearanceCharacteristics()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceCharacteristicsDictionary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceCharacteristicsDictionary;->getRotation()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setAppearanceContent(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    .line 405
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;->copyNeededResourcesTo(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    .line 409
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 410
    new-instance v1, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 412
    invoke-direct {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->tokenize(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->BMC:Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    .line 413
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 416
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeTokens(Ljava/util/List;)V

    .line 417
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSName;->TX:Lcom/tom_roush/pdfbox/cos/COSName;

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeTokens([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    .line 420
    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeTokens(Ljava/util/List;)V

    .line 424
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->insertGeneratedAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Ljava/io/OutputStream;)V

    sget-object p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->EMC:Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    .line 426
    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 429
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeTokens([Ljava/lang/Object;)V

    goto :goto_1

    .line 432
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdfwriter/ContentStreamWriter;->writeTokens(Ljava/util/List;)V

    .line 435
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 436
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->writeToStream([BLcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    return-void
.end method

.method private shallComb()Z
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 626
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;->isComb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;->isMultiline()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    .line 627
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;->isPassword()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;->isFileSelect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private tokenize(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;-><init>(Lcom/tom_roush/pdfbox/contentstream/PDContentStream;)V

    .line 394
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parse()V

    .line 395
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->getTokens()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private validateAndEnsureAcroFormResources()V
    .locals 9

    const-string v0, "PdfBox-Android"

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 131
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 135
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 137
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getWidgets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 139
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 150
    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    .line 151
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->FONT:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 152
    invoke-virtual {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v5

    .line 153
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFontNames()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 157
    :try_start_0
    invoke-virtual {v1, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFont(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v7

    if-nez v7, :cond_4

    .line 159
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding font resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from widget to AcroForm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v4, v6}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v7

    .line 161
    invoke-virtual {v5, v6, v7}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v6, "Unable to match field level font with AcroForm font"

    .line 167
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    return-void
.end method

.method private writeToStream([BLcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 775
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 776
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method public setAppearanceValue(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->getFormattedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->value:Ljava/lang/String;

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 188
    instance-of v0, p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDTextField;->isMultiline()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->value:Ljava/lang/String;

    const-string v0, "\\u000D\\u000A|[\\u000A\\u000B\\u000C\\u000D\\u0085\\u2028\\u2029]"

    const-string v1, " "

    .line 189
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->value:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    .line 192
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getWidgets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;

    .line 194
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    const-string v2, "PMD"

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "widget of field "

    const-string v3, "PdfBox-Android"

    if-eqz v1, :cond_1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is a PaperMetaData widget, no appearance stream created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    .line 204
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    sget-object v5, Lcom/tom_roush/pdfbox/cos/COSName;->DA:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 205
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->getWidgetDefaultAppearanceString(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    move-result-object v4

    iput-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    .line 208
    :cond_2
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v4

    if-nez v4, :cond_3

    .line 210
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->AP:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->removeItem(Lcom/tom_roush/pdfbox/cos/COSName;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->field:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDVariableText;->getFullyQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no rectangle, no appearance stream created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    move-result-object v2

    if-nez v2, :cond_4

    .line 218
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;-><init>()V

    .line 219
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->setAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;)V

    .line 222
    :cond_4
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->getNormalAppearance()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;

    move-result-object v3

    .line 226
    invoke-static {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->isValidAppearanceStream(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 227
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceEntry;->getAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v2

    goto :goto_1

    .line 229
    :cond_5
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->prepareNormalAppearanceStream(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceDictionary;->setNormalAppearance(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    move-object v2, v3

    .line 234
    :goto_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;->getAppearanceCharacteristics()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceCharacteristicsDictionary;

    move-result-object v3

    if-nez v3, :cond_6

    .line 243
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getContentStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getLength()I

    move-result v4

    if-nez v4, :cond_7

    .line 245
    :cond_6
    invoke-direct {p0, v0, v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->initializeAppearanceContent(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceCharacteristicsDictionary;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    .line 248
    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->setAppearanceContent(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationWidget;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V

    iput-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/AppearanceGeneratorHelper;->defaultAppearance:Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDDefaultAppearanceString;

    goto/16 :goto_0

    :cond_8
    return-void
.end method
