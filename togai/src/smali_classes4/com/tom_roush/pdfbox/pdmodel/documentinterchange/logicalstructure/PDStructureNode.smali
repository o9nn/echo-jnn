.class public abstract Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;
.super Ljava/lang/Object;
.source "PDStructureNode.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;


# direct methods
.method protected constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 47
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setName(Lcom/tom_roush/pdfbox/cos/COSName;Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;
    .locals 2

    .line 69
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p0, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StructTreeRoot"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureTreeRoot;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_0
    if-eqz v0, :cond_2

    const-string v1, "StructElem"

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Dictionary must not include a Type entry with a value that is neither StructTreeRoot nor StructElem."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_2
    :goto_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    invoke-direct {v0, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method

.method private createObjectFromDic(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
    .locals 2

    .line 396
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "StructElem"

    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "OBJR"

    .line 402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDObjectReference;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDObjectReference;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_1
    const-string v1, "MCR"

    .line 407
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkedContentReference;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDMarkedContentReference;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 400
    :cond_3
    :goto_0
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;

    invoke-direct {v0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V

    return-object v0
.end method


# virtual methods
.method protected appendKid(Lcom/tom_roush/pdfbox/cos/COSBase;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 186
    :cond_1
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_2

    .line 189
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 190
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 195
    :cond_2
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 196
    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 197
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 198
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method

.method public appendKid(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)V
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->appendObjectableKid(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    .line 152
    invoke-virtual {p1, p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->setParent(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;)V

    return-void
.end method

.method protected appendObjectableKid(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->appendKid(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method protected createObject(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/lang/Object;
    .locals 3

    .line 369
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 371
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    goto :goto_0

    .line 373
    :cond_0
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v0, :cond_1

    .line 375
    move-object v0, p1

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 376
    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    if-eqz v2, :cond_1

    .line 378
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 383
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->createObjectFromDic(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    move-result-object p1

    return-object p1

    .line 385
    :cond_2
    instance-of v0, p1, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-eqz v0, :cond_3

    .line 388
    check-cast p1, Lcom/tom_roush/pdfbox/cos/COSInteger;

    .line 389
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSInteger;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->dictionary:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getKids()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 111
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v2, :cond_1

    .line 113
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/cos/COSBase;

    .line 115
    invoke-virtual {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->createObject(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->createObject(Lcom/tom_roush/pdfbox/cos/COSBase;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->TYPE:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getNameAsString(Lcom/tom_roush/pdfbox/cos/COSName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertBefore(Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 246
    :cond_1
    instance-of v1, p2, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    if-eqz v1, :cond_2

    .line 248
    check-cast p2, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-interface {p2}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 250
    :goto_0
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v1, :cond_3

    .line 252
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 253
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->indexOfObject(Lcom/tom_roush/pdfbox/cos/COSBase;)I

    move-result p2

    .line 254
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/cos/COSBase;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    .line 258
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 259
    instance-of v2, v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v2, :cond_4

    .line 261
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_5

    .line 266
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 267
    invoke-virtual {v0, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 268
    invoke-virtual {v0, p2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 269
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object p2, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, p2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public insertBefore(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;Ljava/lang/Object;)V
    .locals 0

    .line 210
    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->insertObjectableBefore(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Ljava/lang/Object;)V

    return-void
.end method

.method protected insertObjectableBefore(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->insertBefore(Lcom/tom_roush/pdfbox/cos/COSBase;Ljava/lang/Object;)V

    return-void
.end method

.method protected removeKid(Lcom/tom_roush/pdfbox/cos/COSBase;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v1

    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 323
    :cond_1
    instance-of v2, v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 326
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 327
    invoke-virtual {v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->removeObject(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result p1

    .line 329
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v2

    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_2
    return p1

    .line 338
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 339
    instance-of v4, v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    if-eqz v4, :cond_4

    .line 341
    check-cast v1, Lcom/tom_roush/pdfbox/cos/COSObject;

    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/cos/COSObject;->getObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v1

    .line 342
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_4
    if-eqz v2, :cond_5

    .line 346
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object p1

    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return v3

    :cond_5
    return v0
.end method

.method public removeKid(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;)Z
    .locals 2

    .line 282
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->removeObjectableKid(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 285
    invoke-virtual {p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureElement;->setParent(Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;)V

    :cond_0
    return v0
.end method

.method protected removeObjectableKid(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 302
    :cond_0
    invoke-interface {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->removeKid(Lcom/tom_roush/pdfbox/cos/COSBase;)Z

    move-result p1

    return p1
.end method

.method public setKids(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/documentinterchange/logicalstructure/PDStructureNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->K:Lcom/tom_roush/pdfbox/cos/COSName;

    .line 141
    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    .line 140
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method
