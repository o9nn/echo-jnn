.class public Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLine;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "ShowTextLine.java"


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

    const-string v0, "\'"

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

    .line 37
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLine;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    const-string v0, "T*"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    .line 38
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/ShowTextLine;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    const-string v0, "Tj"

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
