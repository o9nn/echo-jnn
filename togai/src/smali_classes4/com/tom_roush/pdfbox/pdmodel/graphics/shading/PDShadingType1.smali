.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;
.source "PDShadingType1.java"


# instance fields
.field private domain:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-void
.end method


# virtual methods
.method public getDomain()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOMAIN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getMatrix()Lcom/tom_roush/pdfbox/util/Matrix;
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MATRIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/util/Matrix;->createMatrix(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getShadingType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setDomain(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 98
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOMAIN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setMatrix(Lcom/tom_roush/harmony/awt/geom/AffineTransform;)V
    .locals 6

    .line 66
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    const/4 v1, 0x6

    new-array v2, v1, [D

    .line 68
    invoke-virtual {p1, v2}, Lcom/tom_roush/harmony/awt/geom/AffineTransform;->getMatrix([D)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 69
    aget-wide v3, v2, p1

    .line 71
    new-instance v5, Lcom/tom_roush/pdfbox/cos/COSFloat;

    double-to-float v3, v3

    invoke-direct {v5, v3}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType1;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->MATRIX:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
