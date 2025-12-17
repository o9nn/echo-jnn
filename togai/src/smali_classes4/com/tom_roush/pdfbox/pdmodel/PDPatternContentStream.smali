.class public final Lcom/tom_roush/pdfbox/pdmodel/PDPatternContentStream;
.super Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;
.source "PDPatternContentStream.java"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getContentStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/pattern/PDTilingPattern;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addComment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->addComment(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic addRect(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->addRect(FFFF)V

    return-void
.end method

.method public bridge synthetic beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;)V

    return-void
.end method

.method public bridge synthetic beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->beginMarkedContent(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDPropertyList;)V

    return-void
.end method

.method public bridge synthetic beginText()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->beginText()V

    return-void
.end method

.method public bridge synthetic clip()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->clip()V

    return-void
.end method

.method public bridge synthetic clipEvenOdd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->clipEvenOdd()V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->close()V

    return-void
.end method

.method public bridge synthetic closeAndFillAndStroke()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->closeAndFillAndStroke()V

    return-void
.end method

.method public bridge synthetic closeAndFillAndStrokeEvenOdd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->closeAndFillAndStrokeEvenOdd()V

    return-void
.end method

.method public bridge synthetic closeAndStroke()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->closeAndStroke()V

    return-void
.end method

.method public bridge synthetic closePath()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->closePath()V

    return-void
.end method

.method public bridge synthetic curveTo(FFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super/range {p0 .. p6}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->curveTo(FFFFFF)V

    return-void
.end method

.method public bridge synthetic curveTo1(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->curveTo1(FFFF)V

    return-void
.end method

.method public bridge synthetic curveTo2(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->curveTo2(FFFF)V

    return-void
.end method

.method public bridge synthetic drawForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->drawForm(Lcom/tom_roush/pdfbox/pdmodel/graphics/form/PDFormXObject;)V

    return-void
.end method

.method public bridge synthetic drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FF)V

    return-void
.end method

.method public bridge synthetic drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super/range {p0 .. p5}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;FFFF)V

    return-void
.end method

.method public bridge synthetic drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDImageXObject;Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public bridge synthetic drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FF)V

    return-void
.end method

.method public bridge synthetic drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super/range {p0 .. p5}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V

    return-void
.end method

.method public bridge synthetic endMarkedContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->endMarkedContent()V

    return-void
.end method

.method public bridge synthetic endText()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->endText()V

    return-void
.end method

.method public bridge synthetic fill()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fill()V

    return-void
.end method

.method public bridge synthetic fillAndStroke()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fillAndStroke()V

    return-void
.end method

.method public bridge synthetic fillAndStrokeEvenOdd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fillAndStrokeEvenOdd()V

    return-void
.end method

.method public bridge synthetic fillEvenOdd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->fillEvenOdd()V

    return-void
.end method

.method public bridge synthetic lineTo(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->lineTo(FF)V

    return-void
.end method

.method public bridge synthetic moveTo(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->moveTo(FF)V

    return-void
.end method

.method public bridge synthetic newLine()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->newLine()V

    return-void
.end method

.method public bridge synthetic newLineAtOffset(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->newLineAtOffset(FF)V

    return-void
.end method

.method public bridge synthetic restoreGraphicsState()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->restoreGraphicsState()V

    return-void
.end method

.method public bridge synthetic saveGraphicsState()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->saveGraphicsState()V

    return-void
.end method

.method public bridge synthetic setCharacterSpacing(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setCharacterSpacing(F)V

    return-void
.end method

.method public bridge synthetic setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setFont(Lcom/tom_roush/pdfbox/pdmodel/font/PDFont;F)V

    return-void
.end method

.method public bridge synthetic setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setGraphicsStateParameters(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/PDExtendedGraphicsState;)V

    return-void
.end method

.method public bridge synthetic setHorizontalScaling(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setHorizontalScaling(F)V

    return-void
.end method

.method public bridge synthetic setLeading(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setLeading(F)V

    return-void
.end method

.method public bridge synthetic setLineCapStyle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setLineCapStyle(I)V

    return-void
.end method

.method public bridge synthetic setLineDashPattern([FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setLineDashPattern([FF)V

    return-void
.end method

.method public bridge synthetic setLineJoinStyle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setLineJoinStyle(I)V

    return-void
.end method

.method public bridge synthetic setLineWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setLineWidth(F)V

    return-void
.end method

.method public bridge synthetic setMiterLimit(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setMiterLimit(F)V

    return-void
.end method

.method public bridge synthetic setNonStrokingColor(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(F)V

    return-void
.end method

.method public bridge synthetic setNonStrokingColor(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(FFF)V

    return-void
.end method

.method public bridge synthetic setNonStrokingColor(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(FFFF)V

    return-void
.end method

.method public bridge synthetic setNonStrokingColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(I)V

    return-void
.end method

.method public bridge synthetic setNonStrokingColor(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(III)V

    return-void
.end method

.method public bridge synthetic setNonStrokingColor(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(IIII)V

    return-void
.end method

.method public bridge synthetic setNonStrokingColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(Lcom/tom_roush/harmony/awt/AWTColor;)V

    return-void
.end method

.method public bridge synthetic setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method

.method public bridge synthetic setRenderingMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setRenderingMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;)V

    return-void
.end method

.method public bridge synthetic setStrokingColor(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColor(F)V

    return-void
.end method

.method public bridge synthetic setStrokingColor(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColor(FFF)V

    return-void
.end method

.method public bridge synthetic setStrokingColor(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColor(FFFF)V

    return-void
.end method

.method public bridge synthetic setStrokingColor(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColor(III)V

    return-void
.end method

.method public bridge synthetic setStrokingColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColor(Lcom/tom_roush/harmony/awt/AWTColor;)V

    return-void
.end method

.method public bridge synthetic setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method

.method public bridge synthetic setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method

.method public bridge synthetic setTextRise(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setTextRise(F)V

    return-void
.end method

.method public bridge synthetic setWordSpacing(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setWordSpacing(F)V

    return-void
.end method

.method public bridge synthetic shadingFill(Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->shadingFill(Lcom/tom_roush/pdfbox/pdmodel/graphics/shading/PDShading;)V

    return-void
.end method

.method public bridge synthetic showText(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->showText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic showTextWithPositioning([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->showTextWithPositioning([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic stroke()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->stroke()V

    return-void
.end method

.method public bridge synthetic transform(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method
