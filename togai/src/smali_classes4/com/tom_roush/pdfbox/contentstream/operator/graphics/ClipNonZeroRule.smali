.class public Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClipNonZeroRule;
.super Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.source "ClipNonZeroRule.java"


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

    const-string v0, "W"

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
    iget-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/ClipNonZeroRule;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    sget-object p2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;->clip(Landroid/graphics/Path$FillType;)V

    return-void
.end method
