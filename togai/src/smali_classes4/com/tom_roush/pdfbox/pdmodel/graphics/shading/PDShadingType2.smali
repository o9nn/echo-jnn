.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;
.source "PDShadingType2.java"


# instance fields
.field private coords:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private domain:Lcom/tom_roush/pdfbox/cos/COSArray;

.field private extend:Lcom/tom_roush/pdfbox/cos/COSArray;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->coords:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->extend:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-void
.end method


# virtual methods
.method public getCoords()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->coords:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COORDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->coords:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->coords:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getDomain()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOMAIN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getExtend()Lcom/tom_roush/pdfbox/cos/COSArray;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->extend:Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EXTEND:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->extend:Lcom/tom_roush/pdfbox/cos/COSArray;

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->extend:Lcom/tom_roush/pdfbox/cos/COSArray;

    return-object v0
.end method

.method public getShadingType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setCoords(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->coords:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 120
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COORDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setDomain(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->domain:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 95
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DOMAIN:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setExtend(Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 2

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->extend:Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 70
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->EXTEND:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
