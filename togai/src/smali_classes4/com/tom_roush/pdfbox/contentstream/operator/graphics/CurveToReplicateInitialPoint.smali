.class public Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateInitialPoint;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "CurveToReplicateInitialPoint.java"


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

    const-string v0, "v"

    return-object v0
.end method

.method public process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 8
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

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 45
    const-class p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p0, p2, p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateInitialPoint;->checkArrayTypesClass(Ljava/util/List;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const/4 v0, 0x1

    .line 50
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const/4 v1, 0x2

    .line 51
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const/4 v2, 0x3

    .line 52
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 54
    iget-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateInitialPoint;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->getCurrentPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateInitialPoint;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    invoke-virtual {v3, p1, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->transformedPoint(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateInitialPoint;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->transformedPoint(FF)Landroid/graphics/PointF;

    move-result-object p2

    if-nez v2, :cond_1

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "curveTo ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") without initial MoveTo"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateInitialPoint;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->moveTo(FF)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CurveToReplicateInitialPoint;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget v6, p2, Landroid/graphics/PointF;->x:F

    iget v7, p2, Landroid/graphics/PointF;->y:F

    move v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->curveTo(FFFFFF)V

    :goto_0
    return-void

    .line 43
    :cond_2
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
