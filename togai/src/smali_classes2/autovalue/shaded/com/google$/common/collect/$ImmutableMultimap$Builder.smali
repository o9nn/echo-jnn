.class public Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
.super Ljava/lang/Object;
.source "$ImmutableMultimap.java"


# annotations
.annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/$DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
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
.field builderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

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

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Platform;->preservesInsertionOrderOnPutsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    .line 288
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 290
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->from(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->onKeys()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 292
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 280
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

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

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    goto :goto_0

    :cond_0
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

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 263
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 274
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 162
    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    .line 163
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    .line 165
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->newMutableValueCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 167
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 178
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 250
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

    .line 251
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 189
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_1

    .line 204
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "null key in entry: null="

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    .line 206
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 208
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 209
    invoke-static {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0

    .line 214
    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 215
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-object p0

    .line 218
    :cond_4
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->newMutableValueCollection()Ljava/util/Collection;

    move-result-object v0

    .line 219
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 220
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 221
    invoke-static {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    .line 224
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 236
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    move-result-object p1

    return-object p1
.end method
