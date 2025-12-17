.class public final Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;
.super Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;
.source "PDAppearanceContentStream.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getResources()Lcom/tom_roush/pdfbox/pdmodel/PDResources;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Ljava/io/OutputStream;Lcom/tom_roush/pdfbox/pdmodel/PDResources;)V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;->getStream()Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;

    move-result-object v0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->FLATE_DECODE:Lcom/tom_roush/pdfbox/cos/COSName;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDStream;->createOutputStream(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDAppearanceStream;Ljava/io/OutputStream;)V

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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
    invoke-super/range {p0 .. p5}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->drawImage(Lcom/tom_roush/pdfbox/pdmodel/graphics/image/PDInlineImage;FFFF)V

    return-void
.end method

.method public drawShape(FZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    float-to-double v0, p1

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fillAndStroke()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 276
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->stroke()V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->fill()V

    goto :goto_0

    :cond_3
    const-string p1, "n"

    .line 284
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->writeOperator(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic endMarkedContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
    invoke-super {p0}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->saveGraphicsState()V

    return-void
.end method

.method public setBorderLine(FLcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;Lcom/tom_roush/pdfbox/cos/COSArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 209
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->D:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->containsKey(Lcom/tom_roush/pdfbox/cos/COSName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/interactive/annotation/PDBorderStyleDictionary;->getDashStyle()Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/PDLineDashPattern;->getDashArray()[F

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineDashPattern([FF)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    .line 214
    invoke-virtual {p3}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p2

    const/4 v1, 0x3

    if-le p2, v1, :cond_2

    .line 216
    invoke-virtual {p3, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    instance-of p2, p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz p2, :cond_1

    .line 218
    invoke-virtual {p3, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    check-cast p2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->toFloatArray()[F

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineDashPattern([FF)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    new-array p2, p2, [F

    .line 223
    invoke-virtual {p0, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineDashPattern([FF)V

    .line 226
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidthOnDemand(F)V

    return-void
.end method

.method public bridge synthetic setCharacterSpacing(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setLineWidth(F)V

    return-void
.end method

.method public setLineWidthOnDemand(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 242
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setLineWidth(F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setMiterLimit(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setNonStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method

.method public setNonStrokingColor([F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 172
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    array-length p1, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "k"

    .line 185
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->writeOperator(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "rg"

    .line 182
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->writeOperator(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "g"

    .line 179
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->writeOperator(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setNonStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object p1

    .line 151
    array-length v0, p1

    if-lez v0, :cond_0

    .line 153
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setNonStrokingColor([F)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic setRenderingMode(Lcom/tom_roush/pdfbox/pdmodel/graphics/state/RenderingMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->setStrokingColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V

    return-void
.end method

.method public setStrokingColor([F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 113
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->writeOperand(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    array-length p1, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "K"

    .line 126
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->writeOperator(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "RG"

    .line 123
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->writeOperator(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "G"

    .line 120
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->writeOperator(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setStrokingColorOnDemand(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->getComponents()[F

    move-result-object p1

    .line 92
    array-length v0, p1

    if-lez v0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAppearanceContentStream;->setStrokingColor([F)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic setTextMatrix(Lcom/tom_roush/pdfbox/util/Matrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
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

    .line 36
    invoke-super {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/PDAbstractContentStream;->transform(Lcom/tom_roush/pdfbox/util/Matrix;)V

    return-void
.end method
