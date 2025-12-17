.class public Lcom/tom_roush/pdfbox/contentstream/operator/state/SetMatrix;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "SetMatrix.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Tm"

    return-object v0
.end method

.method public process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 12
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
            Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;
        }
    .end annotation

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 43
    const-class p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p0, p2, p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetMatrix;->checkArrayTypesClass(Ljava/util/List;Ljava/lang/Class;)Z

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

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const/4 v3, 0x4

    .line 52
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSNumber;

    const/4 v4, 0x5

    .line 53
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 55
    new-instance v11, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v5

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v6

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v7

    .line 56
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v8

    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v9

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    .line 58
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetMatrix;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1, v11}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 59
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetMatrix;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v11}, Lcom/tom_roush/pdfbox/util/Matrix;->clone()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->setTextLineMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void

    .line 41
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
