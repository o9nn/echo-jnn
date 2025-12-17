.class public final Lcom/tom_roush/pdfbox/contentstream/operator/graphics/AppendRectangleToPath;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "AppendRectangleToPath.java"


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

    const-string v0, "re"

    return-object v0
.end method

.method public process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 4
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

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 44
    const-class p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p0, p2, p1}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/AppendRectangleToPath;->checkArrayTypesClass(Ljava/util/List;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 48
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const/4 v0, 0x1

    .line 49
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const/4 v1, 0x2

    .line 50
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const/4 v2, 0x3

    .line 51
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 53
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    .line 54
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v0

    .line 57
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    add-float/2addr v1, p1

    .line 58
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p2

    add-float/2addr p2, v0

    .line 60
    iget-object v2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/AppendRectangleToPath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {v2, p1, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->transformedPoint(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/AppendRectangleToPath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {v3, v1, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->transformedPoint(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/AppendRectangleToPath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {v3, v1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->transformedPoint(FF)Landroid/graphics/PointF;

    move-result-object v1

    .line 63
    iget-object v3, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/AppendRectangleToPath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {v3, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->transformedPoint(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/AppendRectangleToPath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p2, v2, v0, v1, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->appendRectangle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void

    .line 42
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
