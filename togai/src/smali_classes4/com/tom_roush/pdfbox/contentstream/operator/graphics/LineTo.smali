.class public Lcom/tom_roush/pdfbox/contentstream/operator/graphics/LineTo;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "LineTo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "l"

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

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 p1, 0x0

    .line 45
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 46
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 50
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 51
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v0, :cond_1

    return-void

    .line 56
    :cond_1
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 57
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 59
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/LineTo;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->transformedPoint(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/LineTo;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->getCurrentPoint()Landroid/graphics/PointF;

    move-result-object p2

    if-nez p2, :cond_2

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "LineTo ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") without initial MoveTo"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/LineTo;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->moveTo(FF)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/LineTo;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->lineTo(FF)V

    :goto_0
    return-void

    .line 43
    :cond_3
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
