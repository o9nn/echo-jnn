.class public final Lcom/tom_roush/pdfbox/contentstream/operator/graphics/StrokePath;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "StrokePath.java"


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

    const-string v0, "S"

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

    .line 36
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/StrokePath;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->strokePath()V

    return-void
.end method
