.class public final Lcom/tom_roush/pdfbox/contentstream/operator/graphics/MoveTo;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "MoveTo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "m"

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

    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 p1, 0x0

    .line 44
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 45
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 49
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 50
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v0, :cond_1

    return-void

    .line 54
    :cond_1
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 55
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 56
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/MoveTo;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->transformedPoint(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/MoveTo;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->moveTo(FF)V

    return-void

    .line 42
    :cond_2
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
