.class public Lcom/tom_roush/pdfbox/util/SmallMap;
.super Ljava/lang/Object;
.source "SmallMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private mapArr:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/tom_roush/pdfbox/util/SmallMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tom_roush/pdfbox/util/SmallMap;)[Ljava/lang/Object;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    return-object p0
.end method

.method private findKey(Ljava/lang/Object;)I
    .locals 4

    .line 60
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/SmallMap;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    .line 65
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 67
    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private findValue(Ljava/lang/Object;)I
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/SmallMap;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    .line 87
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 89
    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/util/SmallMap;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/util/SmallMap;->findValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/SmallMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 380
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    .line 381
    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 383
    new-instance v2, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;

    invoke-direct {v2, p0, v1}, Lcom/tom_roush/pdfbox/util/SmallMap$SmallMapEntry;-><init>(Lcom/tom_roush/pdfbox/util/SmallMap;I)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 385
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/util/SmallMap;->findKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    .line 128
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 107
    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/SmallMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    .line 285
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 287
    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 289
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 141
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    return-object v1

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/util/SmallMap;->findKey(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    .line 151
    array-length v2, v0

    add-int/lit8 v3, v2, 0x2

    .line 152
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 153
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    aput-object p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 155
    aput-object p2, v3, v2

    iput-object v3, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 163
    aget-object v1, p1, v0

    .line 164
    aput-object p2, p1, v0

    return-object v1

    .line 136
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Key or value must not be null."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    const-string v1, "Key or value must not be null."

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 204
    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    array-length v0, v0

    .line 225
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    .line 226
    invoke-static {v5, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 231
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 236
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tom_roush/pdfbox/util/SmallMap;->findKey(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 241
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v0, 0x1

    .line 246
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v0

    add-int/lit8 v0, v0, 0x2

    .line 247
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    goto :goto_0

    .line 233
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-ge v0, v3, :cond_4

    .line 253
    new-array p1, v0, [Ljava/lang/Object;

    .line 254
    invoke-static {v4, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, p1

    :cond_4
    iput-object v4, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    goto :goto_3

    .line 207
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    .line 209
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v3, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x2

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v4

    goto :goto_2

    .line 213
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1}, Lcom/tom_roush/pdfbox/util/SmallMap;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    .line 182
    aget-object v2, v1, v2

    .line 183
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, -0x2

    .line 192
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 193
    invoke-static {v1, v5, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    .line 194
    invoke-static {v1, v5, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    :goto_0
    return-object v2
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_0
    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcom/tom_roush/pdfbox/util/SmallMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 308
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lcom/tom_roush/pdfbox/util/SmallMap;->mapArr:[Ljava/lang/Object;

    .line 309
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 311
    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 313
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
