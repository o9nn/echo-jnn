.class public Lcom/tom_roush/pdfbox/contentstream/operator/text/NextLine;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "NextLine.java"


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

    const-string v0, "T*"

    return-object v0
.end method

.method public process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 1
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
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    new-instance p2, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance p2, Lcom/tom_roush/pdfbox/cos/COSFloat;

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/NextLine;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->getTextState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDTextState;->getLeading()F

    move-result v0

    neg-float v0, v0

    invoke-direct {p2, v0}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/NextLine;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    const-string v0, "Td"

    invoke-virtual {p2, v0, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
