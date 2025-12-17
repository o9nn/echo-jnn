.class public Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;
.super Lcom/tom_roush/pdfbox/contentstream/operator/color/SetColor;
.source "SetStrokingColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetColor;-><init>()V

    return-void
.end method


# virtual methods
.method protected getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getStrokingColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    move-result-object v0

    return-object v0
.end method

.method protected getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getStrokingColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SC"

    return-object v0
.end method

.method protected setColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method
