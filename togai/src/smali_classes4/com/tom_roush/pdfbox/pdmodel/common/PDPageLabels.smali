.class public Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;
.super Ljava/lang/Object;
.source "PDPageLabels.java"

# interfaces
.implements Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;,
        Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelHandler;
    }
.end annotation


# instance fields
.field private doc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

.field private labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->labels:Ljava/util/Map;

    iput-object p1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->doc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 66
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    invoke-direct {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;-><init>()V

    const-string v0, "D"

    .line 67
    invoke-virtual {p1, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;->setStyle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->labels:Ljava/util/Map;

    const/4 v1, 0x0

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;Lcom/tom_roush/pdfbox/cos/COSDictionary;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;-><init>(Lcom/tom_roush/pdfbox/pdmodel/PDDocument;)V

    if-nez p2, :cond_0

    return-void

    .line 96
    :cond_0
    new-instance p1, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    const-class v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    invoke-direct {p1, p2, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;-><init>(Lcom/tom_roush/pdfbox/cos/COSDictionary;Ljava/lang/Class;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->findLabels(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)V

    return-void
.end method

.method private computeLabels(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelHandler;I)V
    .locals 6

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->labels:Ljava/util/Map;

    .line 271
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    .line 278
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 281
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    .line 282
    new-instance v5, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    invoke-direct {v5, v1, v4}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;I)V

    .line 284
    :goto_1
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v5}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->next()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelHandler;->newLabel(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v3

    goto :goto_0

    .line 291
    :cond_2
    new-instance v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    .line 292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-direct {v0, v3, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;I)V

    .line 293
    :goto_2
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 295
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelGenerator;->next()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelHandler;->newLabel(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private findLabels(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getKids()Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getKids()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;

    .line 107
    invoke-direct {p0, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->findLabels(Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDNumberTreeNode;->getNumbers()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->labels:Ljava/util/Map;

    .line 119
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getCOSObject()Lcom/tom_roush/pdfbox/cos/COSBase;
    .locals 6

    .line 183
    new-instance v0, Lcom/tom_roush/pdfbox/cos/COSDictionary;

    invoke-direct {v0}, Lcom/tom_roush/pdfbox/cos/COSDictionary;-><init>()V

    .line 184
    new-instance v1, Lcom/tom_roush/pdfbox/cos/COSArray;

    invoke-direct {v1}, Lcom/tom_roush/pdfbox/cos/COSArray;-><init>()V

    iget-object v2, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->labels:Ljava/util/Map;

    .line 185
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/tom_roush/pdfbox/cos/COSInteger;->get(J)Lcom/tom_roush/pdfbox/cos/COSInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/cos/COSBase;)V

    .line 188
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;

    invoke-virtual {v1, v3}, Lcom/tom_roush/pdfbox/cos/COSArray;->add(Lcom/tom_roush/pdfbox/pdmodel/common/COSObjectable;)V

    goto :goto_0

    .line 190
    :cond_0
    sget-object v2, Lcom/tom_roush/pdfbox/cos/COSName;->NUMS:Lcom/tom_roush/pdfbox/cos/COSName;

    invoke-virtual {v0, v2, v1}, Lcom/tom_roush/pdfbox/cos/COSDictionary;->setItem(Lcom/tom_roush/pdfbox/cos/COSName;Lcom/tom_roush/pdfbox/cos/COSBase;)V

    return-object v0
.end method

.method public getLabelsByPageIndices()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->doc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 232
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getNumberOfPages()I

    move-result v0

    .line 233
    new-array v1, v0, [Ljava/lang/String;

    .line 234
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$2;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;I[Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->computeLabels(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelHandler;I)V

    return-object v1
.end method

.method public getPageIndices()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->labels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPageIndicesByLabels()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->doc:Lcom/tom_roush/pdfbox/pdmodel/PDDocument;

    .line 210
    invoke-virtual {v0}, Lcom/tom_roush/pdfbox/pdmodel/PDDocument;->getNumberOfPages()I

    move-result v0

    .line 211
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 212
    new-instance v2, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$1;

    invoke-direct {v2, p0, v1}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$1;-><init>(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;Ljava/util/Map;)V

    invoke-direct {p0, v2, v0}, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->computeLabels(Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels$LabelHandler;I)V

    return-object v1
.end method

.method public getPageLabelRange(I)Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->labels:Ljava/util/Map;

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;

    return-object p1
.end method

.method public getPageRangeCount()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->labels:Ljava/util/Map;

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public setLabelItem(ILcom/tom_roush/pdfbox/pdmodel/common/PDPageLabelRange;)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tom_roush/pdfbox/pdmodel/common/PDPageLabels;->labels:Ljava/util/Map;

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startPage parameter of setLabelItem may not be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
