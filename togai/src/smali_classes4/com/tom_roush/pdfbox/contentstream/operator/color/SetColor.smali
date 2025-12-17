.class public abstract Lcom/tom_roush/pdfbox/contentstream/operator/color/SetColor;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "SetColor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
.end method

.method protected abstract getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;
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
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetColor;->getColorSpace()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;

    move-result-object v0

    .line 44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;->getNumberOfComponents()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 48
    const-class p1, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {p0, p2, p1}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetColor;->checkArrayTypesClass(Ljava/util/List;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 54
    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->addAll(Ljava/util/Collection;)V

    .line 55
    new-instance p2, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    invoke-direct {p2, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/color/SetColor;->setColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void

    .line 46
    :cond_1
    new-instance v0, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;

    invoke-direct {v0, p1, p2}, Lcom/tom_roush/pdfbox/contentstream/operator/MissingOperandException;-><init>(Lcom/tom_roush/pdfbox/contentstream/operator/Operator;Ljava/util/List;)V

    throw v0
.end method

.method protected abstract setColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
.end method
