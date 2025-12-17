.class public abstract Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;
.super Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;
.source "PDOutlineNode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDDictionaryWrapper;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method private append(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 1

    .line 122
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setParent(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 123
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->setFirstChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getLastChild()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setNextSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 131
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setPreviousSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 133
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->setLastChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    return-void
.end method

.method private prepend(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 1

    .line 144
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setParent(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 145
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->setLastChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getFirstChild()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setNextSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 153
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->setPreviousSibling(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    .line 155
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->setFirstChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    return-void
.end method

.method private switchNodeCount()V
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getOpenCount()I

    move-result v0

    neg-int v0, v0

    .line 272
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->setOpenCount(I)V

    .line 273
    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->updateParentOpenCount(I)V

    return-void
.end method


# virtual methods
.method public addFirst(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->requireSingleNode(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->prepend(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->updateParentOpenCountForAddedChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    return-void
.end method

.method public addLast(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->requireSingleNode(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->append(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->updateParentOpenCountForAddedChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V

    return-void
.end method

.method public children()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode$1;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode$1;-><init>(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V

    return-object v0
.end method

.method public closeNode()V
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->isNodeOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->switchNodeCount()V

    :cond_0
    return-void
.end method

.method public getFirstChild()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;
    .locals 1

    .line 191
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getOutlineItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;
    .locals 1

    .line 209
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LAST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getOutlineItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    return-object v0
.end method

.method public getOpenCount()I
    .locals 3

    .line 231
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method getOutlineItem(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    .line 179
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 59
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->OUTLINES:Lcom/tom_roush/pdfbox/cos/COSName;

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSName(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDDocumentOutline;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    .line 63
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasChildren()Z
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSDictionary(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNodeOpen()Z
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getOpenCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public openNode()V
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->isNodeOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->switchNodeCount()V

    :cond_0
    return-void
.end method

.method requireSingleNode(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 1

    .line 108
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getNextSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getPreviousSibling()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A single node with no siblings is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setFirstChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V
    .locals 2

    .line 201
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->FIRST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method setLastChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LAST:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method setOpenCount(I)V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->COUNT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void
.end method

.method setParent(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PARENT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method updateParentOpenCount(I)V
    .locals 2

    .line 291
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getParent()Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->isNodeOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getOpenCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->setOpenCount(I)V

    .line 297
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->updateParentOpenCount(I)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->getOpenCount()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineNode;->setOpenCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method updateParentOpenCountForAddedChild(Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;)V
    .locals 2

    .line 161
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->isNodeOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->getOpenCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 165
    :cond_0
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/interactive/documentnavigation/outline/PDOutlineItem;->updateParentOpenCount(I)V

    return-void
.end method
