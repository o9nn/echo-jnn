.class public Lcom/tom_roush/pdfbox/contentstream/operator/text/EndText;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "EndText.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ET"

    return-object v0
.end method

.method public process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 0
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

    .line 37
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/EndText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 38
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/EndText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->setTextLineMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 39
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/EndText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->endText()V

    return-void
.end method
