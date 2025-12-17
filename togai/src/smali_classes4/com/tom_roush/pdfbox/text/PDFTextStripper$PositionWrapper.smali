.class final Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;
.super Ljava/lang/Object;
.source "PDFTextStripper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tom_roush/pdfbox/text/PDFTextStripper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PositionWrapper"
.end annotation


# instance fields
.field private isArticleStart:Z

.field private isHangingIndent:Z

.field private isLineStart:Z

.field private isPageBreak:Z

.field private isParagraphStart:Z

.field private position:Lcom/tom_roush/pdfbox/text/TextPosition;


# direct methods
.method constructor <init>(Lcom/tom_roush/pdfbox/text/TextPosition;)V
    .locals 1

    .line 2081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isLineStart:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isParagraphStart:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isPageBreak:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isHangingIndent:Z

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isArticleStart:Z

    iput-object p1, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->position:Lcom/tom_roush/pdfbox/text/TextPosition;

    return-void
.end method


# virtual methods
.method public getTextPosition()Lcom/tom_roush/pdfbox/text/TextPosition;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->position:Lcom/tom_roush/pdfbox/text/TextPosition;

    return-object v0
.end method

.method public isArticleStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isArticleStart:Z

    return v0
.end method

.method public isHangingIndent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isHangingIndent:Z

    return v0
.end method

.method public isLineStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isLineStart:Z

    return v0
.end method

.method public isPageBreak()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isPageBreak:Z

    return v0
.end method

.method public isParagraphStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isParagraphStart:Z

    return v0
.end method

.method public setArticleStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isArticleStart:Z

    return-void
.end method

.method public setHangingIndent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isHangingIndent:Z

    return-void
.end method

.method public setLineStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isLineStart:Z

    return-void
.end method

.method public setPageBreak()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isPageBreak:Z

    return-void
.end method

.method public setParagraphStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tom_roush/pdfbox/text/PDFTextStripper$PositionWrapper;->isParagraphStart:Z

    return-void
.end method
