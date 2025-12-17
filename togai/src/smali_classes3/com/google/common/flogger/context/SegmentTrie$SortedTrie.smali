.class final Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;
.super Lcom/google/common/flogger/context/SegmentTrie;
.source "SegmentTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/SegmentTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SortedTrie"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/flogger/context/SegmentTrie<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final keys:[Ljava/lang/String;

.field private final parent:[I

.field private final separator:C

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;CLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+TT;>;CTT;)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p3}, Lcom/google/common/flogger/context/SegmentTrie;-><init>(Ljava/lang/Object;)V

    .line 154
    new-instance p3, Ljava/util/TreeMap;

    invoke-direct {p3, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 155
    invoke-virtual {p3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->keys:[Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->values:Ljava/util/List;

    .line 157
    invoke-static {p1, p2}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->buildParentMap([Ljava/lang/String;C)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->parent:[I

    iput-char p2, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->separator:C

    return-void
.end method

.method private static buildParentMap([Ljava/lang/String;C)[I
    .locals 6

    .line 309
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 311
    aput v2, v0, v1

    const/4 v3, 0x1

    .line 312
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 314
    aput v2, v0, v3

    .line 316
    aget-object v4, p0, v3

    .line 317
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 318
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {p0, v1, v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 322
    aput v5, v0, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private findParent(Ljava/lang/String;II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)TT;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->keys:[Ljava/lang/String;

    .line 232
    aget-object v0, v0, p2

    invoke-direct {p0, v0, p1, p3}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->isParent(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->parent:[I

    .line 233
    aget p2, v0, p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->values:Ljava/util/List;

    .line 238
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private isParent(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget-char p2, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->separator:C

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static prefixCompare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3

    if-ltz p2, :cond_4

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_2

    .line 296
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-gez v1, :cond_0

    not-int p2, p2

    :cond_0
    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v0, p0, :cond_3

    not-int v0, v0

    :cond_3
    return v0

    .line 292
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lhs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", rhs="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", start="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->keys:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 167
    aget-object v1, v1, v2

    invoke-static {p1, v1, v2}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->prefixCompare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object p1, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->values:Ljava/util/List;

    .line 170
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-gez v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v3, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->keys:[Ljava/lang/String;

    .line 178
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 179
    aget-object v3, v3, v4

    invoke-static {p1, v3, v2}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->prefixCompare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    iget-object p1, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->values:Ljava/util/List;

    .line 182
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    if-ltz v3, :cond_3

    .line 186
    invoke-direct {p0, p1, v4, v3}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->findParent(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    not-int v3, v3

    :goto_0
    add-int v5, v2, v4

    ushr-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_4

    .line 201
    invoke-direct {p0, p1, v2, v1}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->findParent(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v6, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->keys:[Ljava/lang/String;

    .line 205
    aget-object v6, v6, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v6, v7}, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->prefixCompare(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-ne v0, v6, :cond_5

    iget-object p1, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->values:Ljava/util/List;

    .line 208
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    if-ltz v6, :cond_6

    move v2, v5

    move v1, v6

    goto :goto_0

    :cond_6
    not-int v3, v6

    move v4, v5

    goto :goto_0
.end method

.method public getEntryMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->keys:[Ljava/lang/String;

    .line 333
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 334
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/common/flogger/context/SegmentTrie$SortedTrie;->values:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
