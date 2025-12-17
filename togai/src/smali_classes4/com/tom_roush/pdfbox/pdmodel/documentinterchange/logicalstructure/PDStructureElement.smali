.class public Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;
.super Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;
.source "PDStructureElement.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "StructElem"


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;)V
    .locals 1

    const-string v0, "StructElem"

    .line 51
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->setStructureType(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->setParent(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;)V

    return-void
.end method

.method private getRoleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 749
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getStructureTreeRoot()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;->getRoleMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStructureTreeRoot()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;
    .locals 2

    .line 730
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getParent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;

    move-result-object v0

    .line 731
    :goto_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    if-eqz v1, :cond_0

    .line 733
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getParent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;

    move-result-object v0

    goto :goto_0

    .line 735
    :cond_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;

    if-eqz v1, :cond_1

    .line 737
    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addAttribute(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;)V
    .locals 5

    .line 240
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 241
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->setStructureElement(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)V

    .line 242
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 244
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_0

    .line 246
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    goto :goto_0

    .line 250
    :cond_0
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const-wide/16 v3, 0x0

    .line 254
    invoke-static {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_1
    move-object v1, v2

    .line 257
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 258
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 259
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getRevisionNumber()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public addClassName(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 413
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 414
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 416
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_1

    .line 418
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    goto :goto_0

    .line 422
    :cond_1
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    if-eqz v1, :cond_2

    .line 425
    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const-wide/16 v3, 0x0

    .line 426
    invoke-static {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_2
    move-object v1, v2

    .line 429
    :goto_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 430
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 431
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getRevisionNumber()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public appendKid(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkedContentReference;)V
    .locals 0

    .line 645
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->appendObjectableKid(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public appendKid(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDObjectReference;)V
    .locals 0

    .line 655
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->appendObjectableKid(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public appendKid(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 635
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/markedcontent/PDMarkedContent;->getMCID()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->appendKid(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public attributeChanged(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;)V
    .locals 5

    .line 302
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 303
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 304
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_1

    .line 306
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v0, 0x0

    .line 307
    :goto_0
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 309
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    .line 310
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 312
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 313
    instance-of v3, v3, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getRevisionNumber()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    new-instance p1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 323
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 324
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getRevisionNumber()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 325
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_2
    return-void
.end method

.method public getActualText()Ljava/lang/String;
    .locals 2

    .line 590
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ACTUAL_TEXT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateDescription()Ljava/lang/String;
    .locals 2

    .line 550
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ALT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions<",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 169
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 171
    move-object v2, v1

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 172
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    .line 174
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 177
    instance-of v6, v5, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v6, :cond_1

    .line 179
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    .line 181
    :cond_1
    instance-of v6, v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v6, :cond_2

    .line 183
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v5}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;

    move-result-object v4

    .line 184
    invoke-virtual {v4, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->setStructureElement(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)V

    .line 185
    invoke-virtual {v0, v4, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->addObject(Ljava/lang/Object;I)V

    goto :goto_0

    .line 187
    :cond_2
    instance-of v6, v5, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v6, :cond_0

    .line 189
    check-cast v5, Lcom/tom_roush/pdfbox/cos/COSNumber;

    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/cos/COSNumber;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->setRevisionNumber(Ljava/lang/Object;I)V

    goto :goto_0

    .line 193
    :cond_3
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_4

    .line 195
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;

    move-result-object v1

    .line 196
    invoke-virtual {v1, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->setStructureElement(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)V

    .line 197
    invoke-virtual {v0, v1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->addObject(Ljava/lang/Object;I)V

    :cond_4
    return-object v0
.end method

.method public getClassNames()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 337
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;-><init>()V

    .line 338
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 339
    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 341
    move-object v2, v0

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->addObject(Ljava/lang/Object;I)V

    .line 343
    :cond_0
    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_4

    .line 345
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 346
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    .line 348
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 350
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 351
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v5, :cond_2

    .line 353
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 355
    :cond_2
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSName;

    if-eqz v5, :cond_3

    .line 357
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSName;->getName()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {v1, v2, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->addObject(Ljava/lang/Object;I)V

    goto :goto_0

    .line 360
    :cond_3
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v5, :cond_1

    .line 362
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSInteger;

    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSInteger;->intValue()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->setRevisionNumber(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getElementIdentifier()Ljava/lang/String;
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedForm()Ljava/lang/String;
    .locals 2

    .line 570
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->E:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .line 530
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LANG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPage()Lcom/tom_roush/pdfbox/pdmodel/PDPage;
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 142
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Lcom/tom_roush/pdfbox/pdmodel/PDPage;

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/PDPage;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 95
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v1, :cond_0

    .line 97
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-static {v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRevisionNumber()I
    .locals 3

    .line 478
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getInt(Lcom/tom_roush/pdfbox/cos/COSName;I)I

    move-result v0

    return v0
.end method

.method public getStandardStructureType()Ljava/lang/String;
    .locals 3

    .line 611
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getStructureType()Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getRoleMap()Ljava/util/Map;

    move-result-object v1

    .line 613
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getRoleMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 616
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 618
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getStructureType()Ljava/lang/String;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 510
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public incrementRevisionNumber()V
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getRevisionNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->setRevisionNumber(I)V

    return-void
.end method

.method public insertBefore(Lcom/tom_roush/pdfbox/cos/COSInteger;Ljava/lang/Object;)V
    .locals 0

    .line 666
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->insertBefore(Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/lang/Object;)V

    return-void
.end method

.method public insertBefore(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkedContentReference;Ljava/lang/Object;)V
    .locals 0

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->insertObjectableBefore(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Ljava/lang/Object;)V

    return-void
.end method

.method public insertBefore(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDObjectReference;Ljava/lang/Object;)V
    .locals 0

    .line 689
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->insertObjectableBefore(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Ljava/lang/Object;)V

    return-void
.end method

.method public removeAttribute(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;)V
    .locals 5

    .line 269
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 270
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 271
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 273
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 274
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    .line 275
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 283
    :cond_0
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v2, :cond_1

    .line 285
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 287
    :cond_1
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 292
    :cond_2
    :goto_0
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->setStructureElement(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)V

    return-void
.end method

.method public removeClassName(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 445
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 446
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 447
    invoke-static {p1}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object p1

    .line 448
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_1

    .line 450
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 451
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->remove(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    .line 452
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result p1

    if-nez p1, :cond_3

    .line 454
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 460
    :cond_1
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v2, :cond_2

    .line 462
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 464
    :cond_2
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/cos/COSName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 466
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public removeKid(Lcom/tom_roush/pdfbox/cos/COSInteger;)V
    .locals 0

    .line 699
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->removeKid(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    return-void
.end method

.method public removeKid(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkedContentReference;)V
    .locals 0

    .line 709
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->removeObjectableKid(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Z

    return-void
.end method

.method public removeKid(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDObjectReference;)V
    .locals 0

    .line 719
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->removeObjectableKid(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Z

    return-void
.end method

.method public setActualText(Ljava/lang/String;)V
    .locals 2

    .line 600
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ACTUAL_TEXT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setAlternateDescription(Ljava/lang/String;)V
    .locals 2

    .line 560
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ALT:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setAttributes(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions<",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;",
            ">;)V"
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->A:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 210
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->getRevisionNumber(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;

    .line 213
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->setStructureElement(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)V

    .line 214
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void

    .line 217
    :cond_0
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 218
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 220
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;

    .line 221
    invoke-virtual {v2, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDAttributeObject;->setStructureElement(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)V

    .line 222
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->getRevisionNumber(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 227
    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    int-to-long v4, v4

    .line 228
    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The revision number shall be > -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setClassNames(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 380
    :cond_0
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->C:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 381
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->getRevisionNumber(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 383
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 384
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void

    .line 387
    :cond_1
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 388
    :goto_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 390
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 391
    invoke-virtual {p1, v3}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/Revisions;->getRevisionNumber(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 396
    invoke-static {v2}, Lcom/tom_roush/pdfbox/cos/COSName;->getPDFName(Ljava/lang/String;)Lcom/tom_roush/pdfbox/cos/COSName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    int-to-long v4, v4

    .line 397
    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 394
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The revision number shall be > -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setElementIdentifier(Ljava/lang/String;)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->ID:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setExpandedForm(Ljava/lang/String;)V
    .locals 2

    .line 580
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->E:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    .line 540
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LANG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setPage(Lcom/tom_roush/pdfbox/pdmodel/PDPage;)V
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->PG:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public final setParent(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->P:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    return-void
.end method

.method public setRevisionNumber(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->R:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setInt(Lcom/tom_roush/pdfbox/cos/COSName;I)V

    return-void

    .line 490
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The revision number shall be > -1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setStructureType(Ljava/lang/String;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->S:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 520
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->T:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setString(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method
