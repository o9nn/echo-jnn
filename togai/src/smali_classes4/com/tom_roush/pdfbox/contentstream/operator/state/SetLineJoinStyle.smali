.class public Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineJoinStyle;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "SetLineJoinStyle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "j"

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
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 45
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 54
    :cond_0
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 51
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 48
    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 59
    :goto_0
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineJoinStyle;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setLineJoin(Landroid/graphics/Paint$Join;)V

    return-void

    .line 42
    :cond_3
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
