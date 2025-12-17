.class public Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;
.super Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;
.source "PDFunctionType2.java"


# instance fields
.field private final c0:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private final c1:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private final exponent:F


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunction;-><init>(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 58
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->C0:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c0:Lcom/tom_roush/pdfbox/cos/COSArray;

    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c0:Lcom/tom_roush/pdfbox/cos/COSArray;

    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c0:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 67
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c0:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 69
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->C1:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c1:Lcom/tom_roush/pdfbox/cos/COSArray;

    goto :goto_1

    .line 79
    :cond_2
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c1:Lcom/tom_roush/pdfbox/cos/COSArray;

    :goto_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c1:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 81
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c1:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 83
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->N:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFloat(Lcom/tom_roush/pdfbox/cos/COSName;)F

    move-result p1

    iput p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->exponent:F

    return-void
.end method


# virtual methods
.method public eval([F)[F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    aget p1, p1, v0

    float-to-double v1, p1

    iget p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->exponent:F

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c0:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 109
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c1:Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v2, v1, [F

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c0:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 112
    invoke-virtual {v3, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c1:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 113
    invoke-virtual {v4, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v4

    sub-float/2addr v4, v3

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    .line 114
    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->clipToRange([F)[F

    move-result-object p1

    return-object p1
.end method

.method public getC0()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c0:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getC1()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->c1:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getFunctionType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getN()F
    .locals 1

    iget v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->exponent:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FunctionType2{C0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->getC0()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " C1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->getC1()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " N: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/function/PDFunctionType2;->getN()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
