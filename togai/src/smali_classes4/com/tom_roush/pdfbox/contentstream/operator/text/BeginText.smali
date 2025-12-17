.class public Lcom/tom_roush/pdfbox/contentstream/operator/text/BeginText;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "BeginText.java"


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

    const-string v0, "BT"

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

    .line 39
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/BeginText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    new-instance p2, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {p2}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 40
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/BeginText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    new-instance p2, Lcom/tom_roush/pdfbox/util/Matrix;

    invoke-direct {p2}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>()V

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->setTextLineMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 41
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/BeginText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->beginText()V

    return-void
.end method
