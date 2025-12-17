.class public Lcom/tom_roush/pdfbox/contentstream/operator/state/SetRenderingIntent;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "SetRenderingIntent.java"


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

    const-string v0, "ri"

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

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 44
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 45
    instance-of p2, p1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-nez p2, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/tom_roush/pdfbox/contentstream/operator/state/SetRenderingIntent;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->getGraphicsState()Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;

    move-result-object p2

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSName;

    .line 50
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;->fromString(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;

    move-result-object p1

    .line 49
    invoke-virtual {p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDGraphicsState;->setRenderingIntent(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingIntent;)V

    return-void

    .line 42
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method
