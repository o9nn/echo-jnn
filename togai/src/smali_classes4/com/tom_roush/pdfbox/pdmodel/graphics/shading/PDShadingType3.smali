.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType3;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;
.source "PDShadingType3.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShadingType2;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public getShadingType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
