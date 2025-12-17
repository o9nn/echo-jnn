.class public Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequenceWithProperties;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "BeginMarkedContentSequenceWithProperties.java"


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

    const-string v0, "BDC"

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
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object v0, p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 43
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v2, :cond_1

    .line 45
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSName;

    move-object p2, v1

    goto :goto_0

    .line 47
    :cond_1
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_0

    .line 49
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-object v0, v1

    goto :goto_0

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/markedcontent/BeginMarkedContentSequenceWithProperties;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;->beginMarkedContentSequence(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method
