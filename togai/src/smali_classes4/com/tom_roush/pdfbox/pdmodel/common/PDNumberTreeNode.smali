.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;
.super Ljava/lang/Object;
.source "PDNumberTreeNode.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# instance fields
.field private final node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

.field private valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tom_roush/pdfbox/cos/COSDictionary;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->valueType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->valueType:Ljava/lang/Class;

    .line 54
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->valueType:Ljava/lang/Class;

    return-void
.end method

.method private setLowerLimit(Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 337
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 341
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 342
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 343
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 347
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setInt(II)V

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method

.method private setUpperLimit(Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 296
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 300
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 301
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 302
    sget-object v3, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v2, v3, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/tom_roush/pdfbox/cos/COSArray;->setInt(II)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->set(ILcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->valueType:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 221
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while trying to create value in number tree:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected createChildNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;
    .locals 2

    .line 233
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->valueType:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSDictionary;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    return-object v0
.end method

.method public getKids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 89
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_1

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 93
    :goto_0
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 95
    invoke-virtual {v0, v2}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-virtual {p0, v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->createChildNode(Lcom/tom_roush/pdfbox/cos/COSDictionary;)Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;

    invoke-direct {v2, v1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;-><init>(Ljava/util/List;Lcom/tom_roush/pdfbox/cos/COSArray;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getLowerLimit()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 322
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 323
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNumbers()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 177
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NUMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    .line 178
    instance-of v1, v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 180
    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 182
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    const-string v4, "PdfBox-Android"

    if-eqz v3, :cond_0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Numbers array has odd size: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v5, v3, 0x1

    .line 186
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/cos/COSArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 188
    invoke-virtual {v0, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v6

    .line 189
    instance-of v7, v6, Lcom/tom_roush/pdfbox/cos/COSInteger;

    if-nez v7, :cond_1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page labels ignored, index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " should be a number, but is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 194
    :cond_1
    check-cast v6, Lcom/tom_roush/pdfbox/cos/COSInteger;

    .line 195
    invoke-virtual {v0, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->getObject(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v5

    .line 196
    invoke-virtual {v6}, Lcom/tom_roush/pdfbox/cos/COSInteger;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v5, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->convertCOSToPD(Lcom/tom_roush/pdfbox/cos/COSBase;)Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    move-result-object v5

    :goto_1
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 198
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public getUpperLimit()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 281
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/cos/COSArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 282
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->get(I)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSArray;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValue(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getNumbers()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getKids()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 149
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-nez v1, :cond_3

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    .line 152
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getLowerLimit()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 153
    invoke-virtual {v3}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getUpperLimit()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 155
    invoke-virtual {v3, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getValue(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "PdfBox-Android"

    const-string v0, "NumberTreeNode does not have \"nums\" nor \"kids\" objects."

    .line 161
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1
.end method

.method public setKids(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 114
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    .line 116
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getLowerLimit()Ljava/lang/Integer;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->setLowerLimit(Ljava/lang/Integer;)V

    .line 118
    invoke-virtual {v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getUpperLimit()Ljava/lang/Integer;

    move-result-object v0

    .line 119
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->setUpperLimit(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 121
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NUMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->getDictionaryObject(Lcom/tom_roush/pdfbox/cos/COSName;)Lcom/tom_roush/pdfbox/cos/COSBase;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 124
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 126
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->KIDS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-static {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/COSArrayList;->converterToCOSArray(Ljava/util/List;)Lcom/tom_roush/pdfbox/cos/COSArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-void
.end method

.method public setNumbers(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 246
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->NUMS:Lcom/tom_roush/pdfbox/cos/COSName;

    move-object v2, v0

    check-cast v2, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 247
    sget-object v1, Lcom/tom_roush/pdfbox/cos/COSName;->LIMITS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v1, v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_2

    .line 251
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 253
    new-instance v2, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v2}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    .line 254
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 256
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 257
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    if-nez v4, :cond_1

    .line 258
    sget-object v4, Lcom/tom_roush/pdfbox/cos/COSNull;->NULL:Lcom/tom_roush/pdfbox/cos/COSNull;

    :cond_1
    invoke-virtual {v2, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 264
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 265
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 267
    :goto_1
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->setUpperLimit(Ljava/lang/Integer;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->setLowerLimit(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->node:Lcom/tom_roush/pdfbox/cos/COSDictionary;

    .line 269
    sget-object v0, Lcom/tom_roush/pdfbox/cos/COSName;->NUMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {p1, v0, v2}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    :goto_2
    return-void
.end method
