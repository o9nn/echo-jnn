.class public Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLineAndSpace;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "ShowTextLineAndSpace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "\""

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

    .line 38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLineAndSpace;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-interface {p2, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    const-string v3, "Tw"

    invoke-virtual {p1, v3, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    .line 43
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLineAndSpace;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    const-string v0, "Tc"

    const/4 v3, 0x2

    invoke-interface {p2, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    .line 44
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLineAndSpace;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    const-string v0, "\'"

    invoke-interface {p2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
