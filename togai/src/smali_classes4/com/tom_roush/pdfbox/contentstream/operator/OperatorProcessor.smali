.class public abstract Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.super Ljava/lang/Object;
.source "OperatorProcessor.java"


# instance fields
.field protected context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkArrayTypesClass(Ljava/util/List;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected final getContext()Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract process(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V
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
.end method

.method public setContext(Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;

    return-void
.end method
