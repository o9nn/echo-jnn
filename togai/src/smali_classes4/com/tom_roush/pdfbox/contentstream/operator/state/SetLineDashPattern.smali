.class public Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineDashPattern;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "SetLineDashPattern.java"


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

    const-string v0, "d"

    return-object v0
.end method

.method public process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 3
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

    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    const/4 p1, 0x0

    .line 45
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 46
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 50
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 51
    instance-of v0, p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 56
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result p2

    .line 58
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 60
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-eqz v2, :cond_3

    .line 62
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 63
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    goto :goto_0

    .line 70
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "dash array has non number element "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", ignored"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PdfBox-Android"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 75
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetLineDashPattern;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->setLineDashPattern(Lcom/tom_roush/pdfbox/cos/COSArray;I)V

    return-void

    .line 43
    :cond_5
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
