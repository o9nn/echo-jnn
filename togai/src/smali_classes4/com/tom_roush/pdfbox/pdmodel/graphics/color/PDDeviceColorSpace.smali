.class public abstract Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceColorSpace;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
.source "PDDeviceColorSpace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;-><init>()V

    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceColorSpace;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceColorSpace;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
