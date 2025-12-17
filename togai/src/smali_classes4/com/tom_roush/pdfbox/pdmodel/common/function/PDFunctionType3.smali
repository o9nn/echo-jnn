.class public Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;
.super Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
.source "PDFunctionType3.java"


# instance fields
.field private bounds:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private boundsValues:[F

.field private encode:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private functions:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private functionsArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functions:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->bounds:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functionsArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->boundsValues:[F

    return-void
.end method

.method private getEncodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->getEncode()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    invoke-direct {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    return-object v1
.end method


# virtual methods
.method public eval([F)[F
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    aget p1, p1, v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->getDomainForInput(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v2

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->clipToRange(FFF)F

    move-result v5

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functionsArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->getFunctions()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    new-array v2, v2, [Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    iput-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functionsArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move v2, v0

    .line 77
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functionsArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    .line 79
    invoke-virtual {p1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    invoke-static {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functionsArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    .line 83
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 86
    aget-object p1, p1, v0

    .line 87
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->getEncodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v2

    .line 88
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v6

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v7

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v8

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v9

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->interpolate(FFFFF)F

    move-result v5

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->boundsValues:[F

    if-nez p1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->getBounds()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->boundsValues:[F

    :cond_2
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->boundsValues:[F

    .line 96
    array-length p1, p1

    add-int/lit8 v2, p1, 0x2

    .line 99
    new-array v2, v2, [F

    .line 101
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v4, p1, 0x1

    .line 102
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v1

    aput v1, v2, v4

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->boundsValues:[F

    .line 103
    invoke-static {v1, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_5

    .line 107
    aget v6, v2, v1

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_4

    add-int/lit8 v6, v1, 0x1

    aget v7, v2, v6

    cmpg-float v8, v5, v7

    if-ltz v8, :cond_3

    if-ne v1, p1, :cond_4

    cmpl-float v7, v5, v7

    if-nez v7, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functionsArray:[Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;

    .line 110
    aget-object p1, p1, v1

    .line 111
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->getEncodeForParameter(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    move-result-object v4

    .line 112
    aget v1, v2, v1

    aget v7, v2, v6

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMin()F

    move-result v8

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;->getMax()F

    move-result v9

    move-object v4, p0

    move v6, v1

    invoke-virtual/range {v4 .. v9}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->interpolate(FFFFF)F

    move-result v5

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    new-array v1, v3, [F

    aput v5, v1, v0

    .line 123
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->eval([F)[F

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->clipToRange([F)[F

    move-result-object p1

    return-object p1

    .line 119
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "partition not found in type 3 function"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBounds()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->bounds:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->BOUNDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->bounds:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->bounds:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getEncode()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ENCODE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->encode:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getFunctionType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getFunctions()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functions:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FUNCTIONS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functions:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;->functions:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method
