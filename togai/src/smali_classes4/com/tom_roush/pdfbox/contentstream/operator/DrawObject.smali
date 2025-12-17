.class public Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "DrawObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Do"

    return-object v0
.end method

.method public process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 1
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

    .line 41
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 p1, 0x0

    .line 45
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 46
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez p2, :cond_0

    return-void

    .line 50
    :cond_0
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 52
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->isImageXObject(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 58
    :cond_1
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getXObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;

    move-result-object p1

    .line 60
    instance-of p2, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    if-eqz p2, :cond_4

    .line 64
    :try_start_0
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->increaseLevel()V

    .line 65
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getLevel()I

    move-result p2

    const/16 v0, 0x32

    if-le p2, v0, :cond_2

    const-string p1, "PdfBox-Android"

    const-string p2, "recursion is too deep, skipping form XObject"

    .line 67
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->decreaseLevel()V

    return-void

    .line 70
    :cond_2
    :try_start_1
    instance-of p2, p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    if-eqz p2, :cond_3

    .line 72
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showTransparencyGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V

    goto :goto_0

    .line 76
    :cond_3
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->decreaseLevel()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->decreaseLevel()V

    .line 82
    throw p1

    :cond_4
    :goto_1
    return-void

    .line 43
    :cond_5
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
