.class public final Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
.source "$ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 236
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->from(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->onKeys()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    .line 344
    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 303
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method newMutableValueCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 241
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Platform;->preservesInsertionOrderOnAddsSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 315
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 333
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 248
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 260
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 230
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 294
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 273
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 287
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    move-result-object p1

    return-object p1
.end method
