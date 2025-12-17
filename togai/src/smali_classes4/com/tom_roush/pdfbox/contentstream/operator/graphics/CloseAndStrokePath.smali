.class public Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CloseAndStrokePath;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "CloseAndStrokePath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "s"

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

    .line 36
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CloseAndStrokePath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    const-string v0, "h"

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    .line 37
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/CloseAndStrokePath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    const-string v0, "S"

    invoke-virtual {p1, v0, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->processOperator(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
