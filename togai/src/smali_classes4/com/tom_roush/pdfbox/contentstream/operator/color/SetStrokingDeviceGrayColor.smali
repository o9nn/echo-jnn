.class public Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceGrayColor;
.super Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;
.source "SetStrokingDeviceGrayColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "G"

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

    .line 38
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceGrayColor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DEVICEGRAY:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getColorSpace(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingDeviceGrayColor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setStrokingColorSpace(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    .line 40
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetStrokingColor;->process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    return-void
.end method
