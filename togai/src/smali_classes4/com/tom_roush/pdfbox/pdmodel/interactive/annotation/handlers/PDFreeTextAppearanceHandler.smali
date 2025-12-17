.class public Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;
.source "PDFreeTextAppearanceHandler.java"


# static fields
.field private static final COLOR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private fontName:Lcom/tom_roush/pdfbox/cos/COSName;

.field private fontSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*color\\:\\s*\\#([0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]).*"

    .line 57
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->COLOR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;)V

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontSize:F

    .line 60
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->HELV:Lcom/tom_roush/pdfbox/cos/COSName;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontName:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDAbstractAppearanceHandler;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontSize:F

    .line 60
    sget-object p1, Lcom/tom_roush/pdfbox/cos/COSName;->HELV:Lcom/tom_roush/pdfbox/cos/COSName;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontName:Lcom/tom_roush/pdfbox/cos/COSName;

    return-void
.end method

.method private extractFontDetails(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;)V
    .locals 5

    .line 439
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getDefaultAppearance()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultAppearance()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 456
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;

    sget-object v1, Lcom/tom_roush/fontbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;-><init>([B)V

    .line 457
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 458
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 459
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 461
    instance-of v3, v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-eqz v3, :cond_3

    .line 463
    check-cast v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    .line 464
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Tf"

    .line 465
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    .line 469
    :goto_1
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_0

    .line 473
    :cond_3
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 476
    :cond_4
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_6

    const/4 p1, 0x0

    .line 478
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 479
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v0, :cond_5

    .line 481
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontName:Lcom/tom_roush/pdfbox/cos/COSName;

    :cond_5
    const/4 p1, 0x1

    .line 483
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 484
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v0, :cond_6

    .line 486
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontSize:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "PdfBox-Android"

    const-string v1, "Problem parsing /DA, will use default \'Helv 10\'"

    .line 492
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-void
.end method

.method private extractNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 9

    .line 377
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-direct {v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 378
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getDefaultAppearance()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 387
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;

    sget-object v2, Lcom/tom_roush/fontbox/util/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;-><init>([B)V

    .line 388
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 391
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const-string v5, "k"

    const-string v6, "rg"

    const-string v7, "g"

    if-eqz v2, :cond_4

    .line 393
    :try_start_1
    instance-of v8, v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    if-eqz v8, :cond_3

    .line 395
    check-cast v2, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;

    .line 396
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object v8

    .line 397
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 398
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 399
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v2

    .line 404
    :goto_2
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    move-object v4, p1

    move-object p1, v2

    goto :goto_3

    .line 408
    :cond_3
    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 391
    :goto_3
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdfparser/PDFStreamParser;->parseNextToken()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    .line 413
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getName()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 416
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceGray;

    invoke-direct {p1, v4, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    :goto_4
    move-object v0, p1

    goto :goto_5

    .line 418
    :cond_5
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 420
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {p1, v4, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    goto :goto_4

    .line 422
    :cond_6
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    const-string v1, "PdfBox-Android"

    const-string v2, "Problem parsing /DA, will use default black"

    .line 430
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_5
    return-object v0
.end method


# virtual methods
.method public generateDownAppearance()V
    .locals 0

    return-void
.end method

.method public generateNormalAppearance()V
    .locals 24

    move-object/from16 v10, p0

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->getAnnotation()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;

    .line 77
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getIntent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreeTextCallout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x4

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCallout()[F

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    array-length v4, v1

    if-eq v4, v3, :cond_2

    array-length v4, v1

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    :cond_0
    new-array v1, v11, [F

    goto :goto_0

    :cond_1
    new-array v1, v11, [F

    :cond_2
    :goto_0
    move-object v12, v1

    .line 89
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderStyle()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->getAnnotationBorder(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotation;Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v1, 0x0

    .line 95
    :try_start_0
    invoke-virtual {v10, v14}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->getNormalAppearanceAsContentStream(Z)Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;

    move-result-object v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 98
    :try_start_1
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v9

    .line 99
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getConstantOpacity()F

    move-result v1

    invoke-virtual {v10, v15, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->setOpacity(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;F)V

    .line 103
    invoke-direct {v10, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->extractNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v1

    .line 104
    invoke-virtual {v15, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z

    move-result v8

    .line 106
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getDefaultStyleString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const/16 v22, 0x2

    if-eqz v4, :cond_3

    sget-object v6, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->COLOR_PATTERN:Ljava/util/regex/Pattern;

    .line 109
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    invoke-virtual {v4, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v4, v6

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v6

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v6

    .line 116
    new-instance v6, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    new-array v3, v5, [F

    aput v4, v3, v11

    aput v7, v3, v14

    aput v1, v3, v22

    sget-object v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {v6, v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>([FLcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    move-object/from16 v23, v6

    goto :goto_1

    :cond_3
    move-object/from16 v23, v1

    .line 120
    :goto_1
    iget-object v1, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->dashArray:[F

    invoke-virtual {v15, v1, v7}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineDashPattern([FF)V

    .line 124
    :cond_4
    iget v1, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    invoke-virtual {v15, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    move v1, v11

    .line 129
    :goto_2
    array-length v3, v12

    div-int/lit8 v3, v3, 0x2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-ge v1, v3, :cond_8

    mul-int/lit8 v3, v1, 0x2

    .line 131
    :try_start_2
    aget v4, v12, v3

    add-int/lit8 v3, v3, 0x1

    .line 132
    aget v3, v12, v3

    if-nez v1, :cond_7

    .line 135
    sget-object v6, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->SHORT_STYLES:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getLineEndingStyle()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 139
    aget v6, v12, v22

    .line 140
    aget v14, v12, v5

    sub-float v11, v4, v6

    move/from16 v18, v6

    float-to-double v5, v11

    move v11, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 141
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-float v10, v3, v14

    move/from16 v20, v9

    float-to-double v9, v10

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v7, 0x0

    .line 142
    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_6

    sub-float v6, v18, v4

    div-float/2addr v6, v5

    .line 144
    iget v8, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v6, v8

    add-float/2addr v4, v6

    sub-float/2addr v14, v3

    div-float/2addr v14, v5

    .line 145
    iget v5, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v14, v5

    add-float/2addr v3, v14

    goto :goto_3

    :cond_5
    move v11, v8

    move/from16 v20, v9

    .line 148
    :cond_6
    :goto_3
    invoke-virtual {v15, v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->moveTo(FF)V

    goto :goto_4

    :cond_7
    move v11, v8

    move/from16 v20, v9

    .line 152
    invoke-virtual {v15, v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->lineTo(FF)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v8, v11

    move/from16 v9, v20

    const/4 v5, 0x3

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object/from16 v10, p0

    goto :goto_2

    :cond_8
    move v11, v8

    move/from16 v20, v9

    .line 155
    array-length v1, v12

    if-lez v1, :cond_9

    .line 157
    invoke-virtual {v15}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->stroke()V

    .line 161
    :cond_9
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getIntent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "None"

    .line 163
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getLineEndingStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    array-length v1, v12

    const/4 v2, 0x4

    if-lt v1, v2, :cond_b

    .line 166
    aget v1, v12, v22

    const/4 v2, 0x3

    .line 167
    aget v2, v12, v2

    const/4 v3, 0x0

    .line 168
    aget v4, v12, v3

    const/4 v3, 0x1

    .line 169
    aget v5, v12, v3

    .line 170
    invoke-virtual {v15}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->saveGraphicsState()V

    .line 171
    sget-object v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->ANGLED_STYLES:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getLineEndingStyle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sub-float/2addr v2, v5

    float-to-double v2, v2

    sub-float/2addr v1, v4

    float-to-double v8, v1

    .line 178
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    .line 179
    invoke-static {v1, v2, v4, v5}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    goto :goto_5

    .line 183
    :cond_a
    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/util/Matrix;->getTranslateInstance(FF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 185
    :goto_5
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getLineEndingStyle()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object v3, v15

    move v10, v7

    move v7, v11

    move/from16 v8, v20

    move/from16 v14, v20

    invoke-virtual/range {v1 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->drawStyle(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;FFFZZZ)V

    .line 186
    invoke-virtual {v15}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->restoreGraphicsState()V

    goto :goto_6

    :cond_b
    move v10, v7

    move/from16 v14, v20

    .line 190
    :goto_6
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getBorderEffect()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_c

    .line 191
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->getStyle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getRectDifferences()[F

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v5, p0

    :try_start_3
    invoke-virtual {v5, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->applyRectDifferences(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;[F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    .line 199
    new-instance v4, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;

    .line 200
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderEffectDictionary;->getIntensity()F

    move-result v1

    float-to-double v6, v1

    iget v1, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    float-to-double v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v21
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v15

    move-object v15, v4

    move-object/from16 v16, v1

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    :try_start_4
    invoke-direct/range {v15 .. v21}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;DDLcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 201
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getRectDifference()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->createCloudyRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 202
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 203
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getRectDifference()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->setRectDifference(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 204
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v6

    .line 205
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getBBox()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 206
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/CloudyBorder;->getMatrix()Lcom/tom_roush/harmony/awt/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :catch_0
    move-exception v0

    goto/16 :goto_11

    :cond_c
    move-object/from16 v5, p0

    move-object v1, v15

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getRectDifferences()[F

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->applyRectDifferences(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;[F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v3

    .line 218
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 221
    iget v4, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    div-float/2addr v4, v2

    invoke-virtual {v5, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->getPaddedRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;F)Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v4

    .line 222
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v6

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v7

    .line 223
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v8

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v4

    .line 222
    invoke-virtual {v1, v6, v7, v8, v4}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->addRect(FFFF)V

    .line 225
    :goto_7
    iget v4, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    invoke-virtual {v1, v4, v11, v14}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->drawShape(FZZ)V

    .line 229
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v4

    sget-object v6, Lcom/tom_roush/pdfbox/cos/COSName;->ROTATE:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v4

    int-to-double v8, v4

    .line 230
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9, v10, v10}, Lcom/tom_roush/pdfbox/util/Matrix;->getRotateInstance(DFF)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    const/16 v6, 0x10e

    const/16 v8, 0x5a

    if-eq v4, v8, :cond_e

    if-ne v4, v6, :cond_d

    goto :goto_8

    .line 233
    :cond_d
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v9

    goto :goto_9

    :cond_e
    :goto_8
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v9

    .line 236
    :goto_9
    sget-object v10, Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;->HELVETICA:Lcom/tom_roush/pdfbox/pdmodel/font/PDType1Font;

    .line 238
    iget v11, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/high16 v14, 0x40800000    # 4.0f

    mul-float/2addr v11, v14

    sub-float v11, v9, v11

    if-eq v4, v8, :cond_10

    if-ne v4, v6, :cond_f

    goto :goto_a

    .line 240
    :cond_f
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getHeight()F

    move-result v15

    iget v7, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v7, v14

    sub-float/2addr v15, v7

    goto :goto_b

    :cond_10
    :goto_a
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getWidth()F

    move-result v7

    iget v15, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v15, v14

    sub-float v15, v7, v15

    .line 241
    :goto_b
    invoke-direct {v5, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->extractFontDetails(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;)V

    .line 242
    iget-object v7, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    if-eqz v7, :cond_11

    .line 244
    iget-object v7, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->document:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->getAcroForm()Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 249
    invoke-virtual {v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/form/PDAcroForm;->getDefaultResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v14, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontName:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 252
    invoke-virtual {v7, v14}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFont(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object v7

    if-eqz v7, :cond_11

    move-object v10, v7

    :cond_11
    const v7, 0x3f4a233a    # 0.7896f

    if-eq v4, v8, :cond_14

    const/16 v8, 0xb4

    if-eq v4, v8, :cond_13

    if-eq v4, v6, :cond_12

    .line 283
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v4

    iget v6, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 284
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v6

    iget v8, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v8, v2

    sub-float/2addr v6, v8

    iget v8, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontSize:F

    mul-float/2addr v8, v7

    sub-float/2addr v6, v8

    .line 285
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v3

    iget v7, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    goto :goto_c

    .line 277
    :cond_12
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v4

    neg-float v4, v4

    iget v6, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 278
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v6

    iget v8, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v8, v2

    sub-float/2addr v6, v8

    iget v8, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontSize:F

    mul-float/2addr v8, v7

    sub-float/2addr v6, v8

    .line 279
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v3

    iget v7, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    goto :goto_c

    .line 267
    :cond_13
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v4

    neg-float v4, v4

    iget v6, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 268
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v6

    neg-float v6, v6

    iget v8, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v8, v2

    sub-float/2addr v6, v8

    iget v8, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontSize:F

    mul-float/2addr v8, v7

    sub-float/2addr v6, v8

    .line 269
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    neg-float v3, v3

    iget v7, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    goto :goto_c

    .line 272
    :cond_14
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v4

    iget v6, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v6, v2

    add-float/2addr v4, v6

    .line 273
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v6

    neg-float v6, v6

    iget v8, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v8, v2

    sub-float/2addr v6, v8

    iget v8, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontSize:F

    mul-float/2addr v8, v7

    sub-float/2addr v6, v8

    .line 274
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v3

    neg-float v3, v3

    iget v7, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    :goto_c
    mul-float/2addr v7, v2

    add-float/2addr v3, v7

    .line 290
    invoke-virtual {v1, v4, v3, v11, v15}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->addRect(FFFF)V

    .line 291
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->clip()V

    .line 293
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getContents()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 295
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->beginText()V

    iget v2, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontSize:F

    .line 296
    invoke-virtual {v1, v10, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V

    .line 297
    invoke-virtual/range {v23 .. v23}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColor([F)V

    .line 298
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;-><init>()V

    .line 299
    invoke-virtual {v2, v10}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;->setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    iget v3, v5, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->fontSize:F

    .line 300
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;->setFontSize(F)V

    .line 301
    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;

    invoke-direct {v3, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;)V

    .line 302
    invoke-virtual {v3, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->style(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/AppearanceStyle;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;

    move-result-object v2

    new-instance v3, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;

    .line 303
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getContents()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->text(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainText;)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;

    move-result-object v2

    iget v3, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v3, v7

    sub-float/2addr v9, v3

    .line 304
    invoke-virtual {v2, v9}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->width(F)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 305
    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->wrapLines(Z)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;

    move-result-object v2

    .line 306
    invoke-virtual {v2, v4, v6}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->initialOffset(FF)Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter$Builder;->build()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 312
    :try_start_5
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/layout/PlainTextFormatter;->format()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 320
    :try_start_6
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->endText()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 316
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 320
    :goto_d
    :try_start_8
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->endText()V

    .line 321
    throw v0

    .line 324
    :cond_15
    :goto_e
    array-length v2, v12

    if-lez v2, :cond_17

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    move v6, v4

    move v7, v6

    const/4 v11, 0x0

    move v4, v3

    .line 337
    :goto_f
    array-length v8, v12

    div-int/lit8 v8, v8, 0x2

    if-ge v11, v8, :cond_16

    mul-int/lit8 v8, v11, 0x2

    .line 339
    aget v9, v12, v8

    add-int/lit8 v8, v8, 0x1

    .line 340
    aget v8, v12, v8

    .line 341
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 342
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 343
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 344
    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 347
    :cond_16
    iget v8, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    sub-float/2addr v6, v8

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftX()F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftX(F)V

    .line 348
    iget v6, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v6, v9

    sub-float/2addr v7, v6

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getLowerLeftY()F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setLowerLeftY(F)V

    .line 349
    iget v6, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v6, v9

    add-float/2addr v3, v6

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightX()F

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightX(F)V

    .line 350
    iget v3, v13, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/AnnotationBorder;->width:F

    mul-float/2addr v3, v9

    add-float/2addr v4, v3

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->getUpperRightY()F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;->setUpperRightY(F)V

    .line 351
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->setRectangle(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V

    .line 354
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAnnotationMarkup;->getNormalAppearanceStream()Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/handlers/PDFreeTextAppearanceHandler;->getRectangle()Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->setBBox(Lcom/tom_roush/pdfbox/pdmodel/common/PDRectangle;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_11

    :catchall_3
    move-exception v0

    move-object v5, v10

    :goto_10
    move-object v1, v15

    goto :goto_14

    :catch_4
    move-exception v0

    move-object v5, v10

    :goto_11
    move-object v1, v15

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object v5, v10

    goto :goto_14

    :catch_5
    move-exception v0

    move-object v5, v10

    :goto_12
    :try_start_9
    const-string v2, "PdfBox-Android"

    .line 361
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 365
    :cond_17
    :goto_13
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_5
    move-exception v0

    :goto_14
    invoke-static {v1}, Lcom/tom_roush/pdfbox/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 366
    throw v0
.end method

.method public generateRolloverAppearance()V
    .locals 0

    return-void
.end method
