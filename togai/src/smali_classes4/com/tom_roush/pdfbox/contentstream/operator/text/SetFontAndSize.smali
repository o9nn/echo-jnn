.class public Lcom/tom_roush/pdfbox/contentstream/operator/text/SetFontAndSize;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "SetFontAndSize.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Tf"

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

    .line 44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 p1, 0x0

    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    const/4 v0, 0x1

    .line 50
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 51
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v0, :cond_1

    return-void

    .line 59
    :cond_1
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 60
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p2

    .line 61
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetFontAndSize;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->setFontSize(F)V

    .line 62
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetFontAndSize;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getFont(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;

    move-result-object p2

    if-nez p2, :cond_2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "font \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' not found in resources"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/SetFontAndSize;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;)V

    return-void

    .line 46
    :cond_3
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
