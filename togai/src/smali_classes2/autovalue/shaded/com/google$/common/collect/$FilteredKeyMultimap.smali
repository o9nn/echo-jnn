.class Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractMultimap;
.source "$FilteredKeyMultimap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;,
        Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$AddRejectingList;,
        Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$AddRejectingSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractMultimap<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;"
        }
    .end annotation
.end field

.field final unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMultimap;-><init>()V

    .line 44
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multimap;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 45
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Predicate;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 69
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 72
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 213
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterKeys(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;-><init>(Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 97
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createKeys()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 218
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keys()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->filter(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredMultimapValues;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredMultimapValues;-><init>(Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;)V

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public entryPredicate()Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 55
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 102
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 103
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 104
    instance-of v0, v0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$AddRejectingSet;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$AddRejectingSet;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 107
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$AddRejectingList;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$AddRejectingList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unmodifiableEmptyCollection()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 3

    .line 61
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 62
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public unfiltered()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    return-object v0
.end method

.method unmodifiableEmptyCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 83
    instance-of v0, v0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method
