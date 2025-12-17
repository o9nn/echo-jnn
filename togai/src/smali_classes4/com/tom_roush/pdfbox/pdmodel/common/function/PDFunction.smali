.class public abstract Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
.super Ljava/lang/Object;
.source "PDFunction.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private domain:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private functionDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private functionStream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

.field private numberOfInputValues:I

.field private numberOfOutputValues:I

.field private range:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->functionStream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->functionDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->range:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->numberOfInputValues:I

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->numberOfOutputValues:I

    .line 55
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSStream;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->functionStream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    .line 58
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FUNCTION:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSStream;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 60
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_1

    .line 62
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->functionDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    :cond_1
    :goto_0
    return-void
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->IDENTITY:Lcom/tom_roush/pdfbox/cos/COSName;

    if-ne p0, v0, :cond_0

    .line 119
    new-instance p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionTypeIdentity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionTypeIdentity;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object p0

    .line 123
    :cond_0
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_1

    .line 125
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p0

    .line 127
    :cond_1
    instance-of v0, p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-nez v0, :cond_3

    .line 129
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Function must be a Dictionary, but is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_2

    const-string p0, "(null)"

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    check-cast p0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 133
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FUNCTION_TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 143
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType4;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0

    .line 145
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Unknown function type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_5
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType3;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0

    .line 139
    :cond_6
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0

    .line 137
    :cond_7
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType0;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0
.end method

.method private getDomainValues()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOMAIN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method


# virtual methods
.method protected clipToRange(FFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    return p2

    :cond_0
    cmpl-float p2, p1, p3

    if-lez p2, :cond_1

    return p3

    :cond_1
    return p1
.end method

.method protected clipToRange([F)[F
    .locals 7

    .line 312
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getRangeValues()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 316
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object v0

    .line 317
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 318
    new-array v2, v1, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    shl-int/lit8 v4, v3, 0x1

    .line 322
    aget v5, p1, v3

    aget v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    aget v4, v0, v4

    invoke-virtual {p0, v5, v6, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->clipToRange(FFF)F

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :cond_1
    return-object p1
.end method

.method public eval(Lcom/tom_roush/pdfbox/cos/COSArray;)Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->eval([F)[F

    move-result-object p1

    .line 257
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 258
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setFloatArray([F)V

    return-object v0
.end method

.method public abstract eval([F)[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->functionStream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSStream;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->functionDictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getDomainForInput(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
    .locals 2

    .line 230
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getDomainValues()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    invoke-direct {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    return-object v1
.end method

.method public abstract getFunctionType()I
.end method

.method public getNumberOfInputParameters()I
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->numberOfInputValues:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getDomainValues()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->numberOfInputValues:I

    :cond_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->numberOfInputValues:I

    return v0
.end method

.method public getNumberOfOutputParameters()I
    .locals 2

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->numberOfOutputValues:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getRangeValues()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->numberOfOutputValues:I

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->numberOfOutputValues:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->numberOfOutputValues:I

    return v0
.end method

.method protected getPDStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->functionStream:Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    return-object v0
.end method

.method public getRangeForOutput(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getRangeValues()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;

    invoke-direct {v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDRange;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    return-object v1
.end method

.method protected getRangeValues()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->range:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RANGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->range:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->range:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method protected interpolate(FFFFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p5, p4

    mul-float/2addr p1, p5

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    add-float/2addr p4, p1

    return p4
.end method

.method public setDomainValues(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 242
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOMAIN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setRangeValues(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->range:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 199
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->RANGE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FunctionType"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;->getFunctionType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
