.class public Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceRGBColor;
.super Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;
.source "SetStrokingDeviceRGBColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RG"

    return-object v0
.end method

.method public process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/contentstream/operator/Operator;",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceRGBColor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICERGB:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceRGBColor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setStrokingColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 47
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;->process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    return-void
.end method
