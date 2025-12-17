.class public final Lcom/tom_roush/pdfbox/contentstream/operator/graphics/BeginInlineImage;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "BeginInlineImage.java"


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

    const-string v0, "BI"

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

    .line 38
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getImageData()[B

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getImageData()[B

    move-result-object p2

    array-length p2, p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getImageParameters()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/contentstream/operator/Operator;->getImageData()[B

    move-result-object p1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/BeginInlineImage;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    .line 44
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;[BLcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    .line 45
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/BeginInlineImage;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImage;)V

    :cond_1
    :goto_0
    return-void
.end method
