.class public Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowText;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "ShowText.java"


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

    const-string v0, "Tj"

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

    .line 38
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 43
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 44
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSString;

    if-nez p2, :cond_1

    return-void

    .line 49
    :cond_1
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getTextMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 54
    :cond_2
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 55
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSString;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->showTextString([B)V

    return-void
.end method
