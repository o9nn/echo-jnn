.class public final Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "DrawObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Do"

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

    .line 46
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 p1, 0x0

    .line 50
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 51
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez p2, :cond_0

    return-void

    .line 55
    :cond_0
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 56
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDResources;->getXObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/graphics/PDXObject;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 62
    instance-of p1, p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    if-eqz p1, :cond_1

    .line 64
    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;

    .line 65
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;)V

    goto :goto_1

    .line 67
    :cond_1
    instance-of p1, p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    if-eqz p1, :cond_4

    .line 71
    :try_start_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->increaseLevel()V

    .line 72
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->getLevel()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_2

    const-string p1, "PdfBox-Android"

    const-string p2, "recursion is too deep, skipping form XObject"

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->decreaseLevel()V

    return-void

    .line 77
    :cond_2
    :try_start_1
    instance-of p1, p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    if-eqz p1, :cond_3

    .line 79
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->showTransparencyGroup(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDTransparencyGroup;)V

    goto :goto_0

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->showForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->decreaseLevel()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/DrawObject;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->decreaseLevel()V

    .line 89
    throw p1

    :cond_4
    :goto_1
    return-void

    .line 60
    :cond_5
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing XObject: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/MissingResourceException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 48
    :cond_6
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
