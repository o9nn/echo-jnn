.class public Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveText;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "MoveText.java"


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

    const-string v0, "Td"

    return-object v0
.end method

.method public process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
    .locals 9
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

    if-lt v0, v1, :cond_3

    .line 45
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getTextLineMatrix()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "TextLineMatrix is null, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveText;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " operator will be ignored"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PdfBox-Android"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 52
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    const/4 v1, 0x1

    .line 53
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 54
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v1, :cond_1

    return-void

    .line 58
    :cond_1
    instance-of v1, p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    if-nez v1, :cond_2

    return-void

    .line 62
    :cond_2
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 63
    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSNumber;

    .line 65
    new-instance v8, Lcom/tom_roush/pdfbox/util/Matrix;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v6

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSNumber;->floatValue()F

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/tom_roush/pdfbox/util/Matrix;-><init>(FFFFFF)V

    .line 66
    invoke-virtual {p1, v8}, Lcom/tom_roush/pdfbox/util/Matrix;->concatenate(Lcom/tom_roush/pdfbox/util/Matrix;)V

    .line 67
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/text/MoveText;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/util/Matrix;->clone()Lcom/tom_roush/pdfbox/util/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void

    .line 43
    :cond_3
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
