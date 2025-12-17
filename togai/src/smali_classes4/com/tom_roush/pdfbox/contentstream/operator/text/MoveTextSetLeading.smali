.class public Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveTextSetLeading;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "MoveTextSetLeading.java"


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

    const-string v0, "TD"

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

    if-lt v0, v1, :cond_1

    const/4 p1, 0x1

    .line 47
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 48
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result p1

    neg-float p1, p1

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveTextSetLeading;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    const-string v1, "TL"

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    .line 57
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveTextSetLeading;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    const-string v0, "Td"

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 43
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
