.class public Lcom/tom_roush/pdfbox/contentstream/operator/state/Restore;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "Restore.java"


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

    const-string v0, "Q"

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
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/state/Restore;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsStackSize()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    .line 39
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/state/Restore;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->restoreGraphicsState()V

    return-void

    .line 44
    :cond_0
    new-instance p1, Lcom/tom_roush/pdfbox/contentstream/operator/state/EmptyGraphicsStackException;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/state/EmptyGraphicsStackException;-><init>()V

    throw p1
.end method
