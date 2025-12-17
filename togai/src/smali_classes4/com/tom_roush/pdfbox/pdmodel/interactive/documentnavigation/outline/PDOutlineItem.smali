.class public final Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;
.super Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;
.source "PDOutlineItem.java"


# static fields
.field private static final BOLD_FLAG:I = 0x2

.field private static final ITALIC_FLAG:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method


# virtual methods
.method public findDestinationPage(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getDestination()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getAction()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v1

    .line 234
    instance-of v2, v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;

    if-eqz v2, :cond_0

    .line 236
    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionGoTo;->getDestination()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 245
    :cond_1
    instance-of v2, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;

    if-eqz v2, :cond_2

    .line 247
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getDocumentCatalog()Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;

    move-result-object v2

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocumentCatalog;->findNamedDestinationPage(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDNamedDestination;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 253
    :cond_2
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    if-eqz v1, :cond_5

    .line 255
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;

    .line 262
    :cond_3
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v1

    if-nez v1, :cond_4

    .line 267
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageDestination;->getPageNumber()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 270
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getPage(I)Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    move-result-object v1

    :cond_4
    return-object v1

    .line 259
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Unknown destination type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAction()Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDActionFactory;->createAction(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DEST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;->create(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;

    move-result-object v0

    return-object v0
.end method

.method public getNextSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;
    .locals 1

    .line 147
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NEXT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getOutlineItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;
    .locals 1

    .line 129
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getOutlineItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    return-object v0
.end method

.method public getStructureElement()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 307
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTextColor()Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;
    .locals 3

    .line 330
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 334
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->growToSize(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 335
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 337
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;

    sget-object v2, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;->INSTANCE:Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDDeviceRGB;

    invoke-direct {v1, v0, v2}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;-><init>(Lcom/tom_roush/pdfbox/cos/COSArray;Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColorSpace;)V

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 167
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TITLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertSiblingAfter(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 2

    .line 77
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->requireSingleNode(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    .line 78
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;

    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setParent(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 80
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getNextSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v1

    .line 81
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setNextSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 82
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setPreviousSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setNextSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 86
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setPreviousSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->setLastChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 92
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->updateParentOpenCountForAddedChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    return-void
.end method

.method public insertSiblingBefore(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 2

    .line 104
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->requireSingleNode(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    .line 105
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setParent(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 107
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getPreviousSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v1

    .line 108
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setPreviousSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 109
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setNextSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setNextSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 113
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setPreviousSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->setFirstChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->updateParentOpenCountForAddedChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    return-void
.end method

.method public isBold()Z
    .locals 3

    .line 391
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getFlag(Lcom/tom_roush/pdfbox/cos/COSName;I)Z

    move-result v0

    return v0
.end method

.method public setAction(Lcom/tom_roush/pdfbox/pdmodel/interactive/action/PDAction;)V
    .locals 2

    .line 293
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setBold(Z)V
    .locals 3

    .line 401
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method public setDestination(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 211
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;-><init>()V

    .line 212
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDPageXYZDestination;->setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setDestination(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;)V

    return-void
.end method

.method public setDestination(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/destination/PDDestination;)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->DEST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setItalic(Z)V
    .locals 3

    .line 381
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->F:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setFlag(Lcom/tom_roush/pdfbox/cos/COSName;IZ)V

    return-void
.end method

.method setNextSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NEXT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method setPreviousSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PREV:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setStructureElement(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)V
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->SE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setTextColor(Lcom/tom_roush/harmony/awt/AWTColor;)V
    .locals 4

    .line 357
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 358
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getRed()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 359
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getGreen()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 360
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSFloat;

    invoke-virtual {p1}, Lcom/tom_roush/harmony/awt/AWTColor;->getBlue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    invoke-direct {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSFloat;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 361
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setTextColor(Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;)V
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/graphics/color/PDColor;->toCOSArray()Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TITLE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
