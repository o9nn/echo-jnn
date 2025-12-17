.class public abstract Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;
.super Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;
.source "GraphicsOperatorProcessor.java"


# instance fields
.field protected context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public setContext(Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/contentstream/operator/OperatorProcessor;->setContext(Lcom/tom_roush/pdfbox/contentstream/PDFStreamEngine;)V

    .line 37
    check-cast p1, Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/contentstream/operator/graphics/GraphicsOperatorProcessor;->context:Lcom/tom_roush/pdfbox/contentstream/PDFGraphicsStreamEngine;

    return-void
.end method
