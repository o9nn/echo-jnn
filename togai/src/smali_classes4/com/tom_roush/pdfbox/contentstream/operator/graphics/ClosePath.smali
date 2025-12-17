.class public final Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClosePath;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "ClosePath.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "h"

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
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClosePath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->getCurrentPoint()Landroid/graphics/PointF;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "PdfBox-Android"

    const-string p2, "ClosePath without initial MoveTo"

    .line 40
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClosePath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->closePath()V

    return-void
.end method
