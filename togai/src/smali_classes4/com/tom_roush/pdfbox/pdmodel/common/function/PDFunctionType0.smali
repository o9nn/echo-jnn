.class public Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;
.super Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
.source "PDFunctionType0.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;
    }
.end annotation


# instance fields
.field private decode:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private encode:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private samples:[[I

.field private size:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->size:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->samples:[[I

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;)[[I
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->samples:[[I

    return-object p0
.end method

.method static synthetic access$002(Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;[[I)[[I
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->samples:[[I

    return-object p1
.end method

.method private getDecodeValues()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getRangeValues()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method private getEncodeValues()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 8

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 147
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getSize()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 151
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSInteger;->ZERO:Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 152
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method


# virtual methods
.method public eval([F)[F
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getSize()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v7

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getBitsPerSample()I

    move-result v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    int-to-double v3, v0

    .line 427
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-float v8, v0

    move-object/from16 v0, p1

    .line 428
    array-length v9, v0

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getNumberOfOutputParameters()I

    move-result v10

    .line 431
    new-array v11, v9, [I

    .line 432
    new-array v12, v9, [I

    .line 433
    invoke-virtual/range {p1 .. p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [F

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v9, :cond_0

    .line 437
    invoke-virtual {v6, v15}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getDomainForInput(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v0

    .line 438
    invoke-virtual {v6, v15}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getEncodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v1

    .line 439
    aget v2, v13, v15

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v3

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v4

    invoke-virtual {v6, v2, v3, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->clipToRange(FFF)F

    move-result v2

    aput v2, v13, v15

    .line 440
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v3

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v4

    .line 441
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v5

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v16

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    .line 440
    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->interpolate(FFFFF)F

    move-result v0

    aput v0, v13, v15

    .line 442
    aget v1, v7, v15

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->clipToRange(FFF)F

    move-result v0

    aput v0, v13, v15

    float-to-double v0, v0

    .line 443
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v11, v15

    .line 444
    aget v0, v13, v15

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v12, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 447
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;

    invoke-direct {v0, v6, v13, v11, v12}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;[F[I[I)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0$Rinterpol;->rinterpolate()[F

    move-result-object v7

    :goto_1
    if-ge v14, v10, :cond_2

    .line 451
    invoke-virtual {v6, v14}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getRangeForOutput(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v9

    .line 452
    invoke-virtual {v6, v14}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 457
    aget v1, v7, v14

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v4

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v5

    move-object/from16 v0, p0

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->interpolate(FFFFF)F

    move-result v0

    aput v0, v7, v14

    .line 458
    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v1

    invoke-virtual {v9}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->clipToRange(FFF)F

    move-result v0

    aput v0, v7, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 455
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Range missing in function /Decode entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v7
.end method

.method public getBitsPerSample()I
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_SAMPLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    return v0
.end method

.method public getDecodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
    .locals 3

    .line 217
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getDecodeValues()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_0

    .line 220
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    invoke-direct {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getEncodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
    .locals 3

    .line 188
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getEncodeValues()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_0

    .line 191
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    invoke-direct {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFunctionType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ORDER:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getSize()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->size:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SIZE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->size:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->size:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public setBitsPerSample(I)V
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BITS_PER_SAMPLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method public setDecodeValues(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->decode:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 233
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setEncodeValues(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 204
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
