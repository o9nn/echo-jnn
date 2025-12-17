.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;
.super Ljava/lang/Object;
.source "PDFourColours.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final array:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 38
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 39
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 40
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 41
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 48
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 52
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getColourByIndex(I)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 158
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 159
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setColourByIndex(ILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 1

    if-nez p2, :cond_0

    .line 177
    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 183
    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method


# virtual methods
.method public getAfterColour()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->getColourByIndex(I)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v0

    return-object v0
.end method

.method public getBeforeColour()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->getColourByIndex(I)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->array:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getEndColour()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
    .locals 1

    const/4 v0, 0x3

    .line 125
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->getColourByIndex(I)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v0

    return-object v0
.end method

.method public getStartColour()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
    .locals 1

    const/4 v0, 0x2

    .line 105
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->getColourByIndex(I)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;

    move-result-object v0

    return-object v0
.end method

.method public setAfterColour(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->setColourByIndex(ILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V

    return-void
.end method

.method public setBeforeColour(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->setColourByIndex(ILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V

    return-void
.end method

.method public setEndColour(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 1

    const/4 v0, 0x3

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->setColourByIndex(ILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V

    return-void
.end method

.method public setStartColour(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V
    .locals 1

    const/4 v0, 0x2

    .line 115
    invoke-direct {p0, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/taggedpdf/PDFourColours;->setColourByIndex(ILcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;)V

    return-void
.end method
