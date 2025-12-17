.class final Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;
.source "$FilteredEntrySetMultimap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;->createEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;->entryPredicate()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 64
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 44
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public bridge synthetic unfiltered()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public unfiltered()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    return-object v0
.end method
