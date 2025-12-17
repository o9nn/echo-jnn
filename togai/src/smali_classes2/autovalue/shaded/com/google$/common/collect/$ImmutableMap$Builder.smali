.class public Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "$ImmutableMap.java"


# annotations
.annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/$DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field entriesUsed:Z

.field size:I

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 255
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-array p1, p1, [Ljava/util/Map$Entry;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    const/4 p1, 0x0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    iput-boolean p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entriesUsed:Z

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    .line 266
    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 267
    array-length v1, v0

    .line 269
    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    .line 268
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Map$Entry;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entriesUsed:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entriesUsed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    .line 377
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 380
    invoke-static {v3}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->from(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v3

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valueFunction()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v4

    invoke-virtual {v3, v4}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->onResultOf(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v3

    .line 379
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_1
    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iput-boolean v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entriesUsed:Z

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    .line 389
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    .line 386
    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v1, v2, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0

    .line 384
    :cond_3
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method buildJdkBacked()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "buildJdkBacked is only for testing; can\'t use valueComparator"

    .line 395
    invoke-static {v0, v3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(ZLjava/lang/Object;)V

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    iput-boolean v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entriesUsed:Z

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    .line 404
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMap;->create(I[Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    .line 401
    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0

    .line 399
    :cond_2
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 348
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    .line 349
    iget v1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->ensureCapacity(I)V

    .line 350
    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    iget v3, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    .line 351
    iget p1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    add-int/2addr v0, p1

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    return-object p0
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "valueComparator was already set"

    .line 341
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string/jumbo v0, "valueComparator"

    .line 342
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 280
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->ensureCapacity(I)V

    .line 281
    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    iget-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    .line 283
    aput-object p1, p2, v0

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 295
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 319
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->size:I

    .line 320
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->ensureCapacity(I)V

    .line 322
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 306
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object p1

    return-object p1
.end method
