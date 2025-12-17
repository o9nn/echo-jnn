.class public final Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;
.super Ljava/lang/Object;
.source "PDGamma.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final values:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 42
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 43
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 44
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-void
.end method


# virtual methods
.method public getB()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x2

    .line 116
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public getCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getG()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public getR()F
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    return v0
.end method

.method public setB(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 125
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setG(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 107
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setR(F)V
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDGamma;->values:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 89
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
