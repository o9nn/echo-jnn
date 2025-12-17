.class public abstract Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
.super Ljava/lang/Object;
.source "PDNameTreeNode.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;"
    }
.end annotation


# instance fields
.field private final node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private parent:Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method protected constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-void
.end method

.method private calculateLimits()V
    .locals 4

    .line 163
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->isRootNode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 165
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getKids()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    .line 174
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getLowerLimit()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-direct {p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->setLowerLimit(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getUpperLimit()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->setUpperLimit(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getNames()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 184
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 186
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 188
    aget-object v2, v0, v2

    .line 189
    invoke-direct {p0, v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->setLowerLimit(Ljava/lang/String;)V

    .line 190
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 191
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->setUpperLimit(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 195
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 200
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    const-string v1, "PdfBox-Android"

    const-string v2, "Error while calculating the Limits of a PageNameTreeNode:"

    .line 201
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setLowerLimit(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 387
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    const/4 v1, 0x0

    .line 391
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 392
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 393
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setString(ILjava/lang/String;)V

    return-void
.end method

.method private setUpperLimit(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 353
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    const/4 v1, 0x0

    .line 357
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 358
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 359
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v1, v2, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    const/4 v1, 0x1

    .line 361
    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setString(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected abstract convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSBase;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract createChildNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            ")",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getKids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 115
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 119
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 121
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->createChildNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getLowerLimit()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 372
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 375
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNames()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 256
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAMES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 259
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 260
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Names array has odd size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PdfBox-Android"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 264
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 266
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v4

    .line 267
    instance-of v5, v4, Lcom/tom_roush/pdfbox/cos/COSString;

    if-eqz v5, :cond_1

    .line 271
    check-cast v4, Lcom/tom_roush/pdfbox/cos/COSString;

    .line 272
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    .line 273
    invoke-virtual {v4}, Lcom/tom_roush/pdfbox/cos/COSString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 269
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected string, found "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in name tree at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->parent:Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    return-object v0
.end method

.method public getUpperLimit()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 338
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getCOSArray(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 341
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getNames()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    return-object p1

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getKids()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 224
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 226
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    .line 227
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getUpperLimit()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getLowerLimit()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 231
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_2
    :goto_1
    invoke-virtual {v2, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->getValue(Ljava/lang/String;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "PdfBox-Android"

    const-string v0, "NameTreeNode does not have \"names\" nor \"kids\" objects."

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public isRootNode()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->parent:Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setKids(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 138
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    .line 142
    invoke-virtual {v2, p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->setParent(Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 144
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 146
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->isRootNode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 148
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAMES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 154
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 156
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 158
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->calculateLimits()V

    return-void
.end method

.method public setNames(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 312
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NAMES:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 313
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_1

    .line 317
    :cond_0
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 319
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 320
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    new-instance v3, Lcom/tom_roush/pdfbox/cos/COSString;

    invoke-direct {v3, v2}, Lcom/tom_roush/pdfbox/cos/COSString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 323
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 325
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NAMES:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 326
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->calculateLimits()V

    :goto_1
    return-void
.end method

.method public setParent(Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->parent:Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;

    .line 94
    invoke-direct {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNameTreeNode;->calculateLimits()V

    return-void
.end method
