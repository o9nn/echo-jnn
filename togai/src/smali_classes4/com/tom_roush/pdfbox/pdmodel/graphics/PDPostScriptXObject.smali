.class public Lcom/tom_roush/pdfbox/pdmodel/graphics/PDPostScriptXObject;
.super Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;
.source "PDPostScriptXObject.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSStream;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;-><init>(Lcom/tom_roush/pdfbox/cos/COSStream;Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void
.end method
