.class public final Lautovalue/shaded/com/google$/common/collect/$Multimaps;
.super Ljava/lang/Object;
.source "$Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$Entries;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$Keys;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$TransformedEntriesListMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$TransformedEntriesMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$MapMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSortedSetMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableListMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomMultimap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 73
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 73
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 1013
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$ListMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1050
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .line 1026
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static asMap(Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/SortedSet<",
            "TV;>;>;"
        }
    .end annotation

    .line 1039
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static equalsImpl(Lautovalue/shaded/com/google$/common/collect/$Multimap;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2172
    :cond_0
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Multimap;

    if-eqz v0, :cond_1

    .line 2173
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 2174
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static filterEntries(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2100
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    if-eqz v0, :cond_0

    .line 2102
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->filterEntries(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object p0

    return-object p0

    .line 2104
    :cond_0
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;

    if-eqz v0, :cond_1

    .line 2105
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->filterFiltered(Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object p0

    goto :goto_0

    .line 2106
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Multimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static filterEntries(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2136
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;

    if-eqz v0, :cond_0

    .line 2138
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->filterFiltered(Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object p0

    goto :goto_0

    .line 2139
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static filterFiltered(Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2151
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;->entryPredicate()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    .line 2152
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2164
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;->entryPredicate()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    .line 2165
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;

    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntrySetMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2000
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyListMultimap;

    if-eqz v0, :cond_0

    .line 2001
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyListMultimap;

    .line 2002
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyListMultimap;

    .line 2003
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyListMultimap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    move-result-object v1

    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyListMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyListMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0

    .line 2005
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyListMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyListMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1914
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    if-eqz v0, :cond_0

    .line 1915
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->filterKeys(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object p0

    return-object p0

    .line 1916
    :cond_0
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    if-eqz v0, :cond_1

    .line 1917
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->filterKeys(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    move-result-object p0

    return-object p0

    .line 1918
    :cond_1
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    if-eqz v0, :cond_2

    .line 1919
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    .line 1920
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 1921
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0

    .line 1922
    :cond_2
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;

    if-eqz v0, :cond_3

    .line 1923
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;

    .line 1924
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->filterFiltered(Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object p0

    return-object p0

    .line 1926
    :cond_3
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1959
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeySetMultimap;

    if-eqz v0, :cond_0

    .line 1960
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeySetMultimap;

    .line 1961
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeySetMultimap;

    .line 1962
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeySetMultimap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object v1

    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeySetMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeySetMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0

    .line 1963
    :cond_0
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;

    if-eqz v0, :cond_1

    .line 1964
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;

    .line 1965
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->filterFiltered(Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object p0

    return-object p0

    .line 1967
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeySetMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeySetMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public static filterValues(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2038
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valuePredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->filterEntries(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2070
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valuePredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->filterEntries(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 153
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static forMap(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1069
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$MapMultimap;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$MapMultimap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static index(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV;TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1610
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->index(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static index(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV;TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1651
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 1653
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1654
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1655
    invoke-static {v1, p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1656
    invoke-interface {p1, v1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    goto :goto_0

    .line 1658
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static invertFrom(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;>(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TV;+TK;>;TM;)TM;"
        }
    .end annotation

    .line 553
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->entries()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static newListMultimap(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 306
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomListMultimap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)V

    return-object v0
.end method

.method public static newMultimap(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 194
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomMultimap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)V

    return-object v0
.end method

.method public static newSetMultimap(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 384
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)V

    return-object v0
.end method

.method public static newSortedSetMultimap(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/SortedSet<",
            "TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 484
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)V

    return-object v0
.end method

.method public static synchronizedListMultimap(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 935
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->listMultimap(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedMultimap(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 593
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->multimap(Lautovalue/shaded/com/google$/common/collect/$Multimap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSetMultimap(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 858
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->setMultimap(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedSortedSetMultimap(Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;)Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 904
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->sortedSetMultimap(Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static toMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 112
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static transformEntries(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1423
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$TransformedEntriesListMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$TransformedEntriesListMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1370
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$TransformedEntriesMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$TransformedEntriesMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV1;TV2;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1312
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->asEntryTransformer(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;

    move-result-object p1

    .line 1314
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->transformEntries(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static transformValues(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV1;TV2;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1265
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->asEntryTransformer(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;

    move-result-object p1

    .line 1267
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->transformEntries(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object p0

    return-object p0
.end method

.method private static unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 997
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 998
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1000
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableEntries;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableEntries;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableListMultimap(Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 965
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ListMultimap;

    return-object p0
.end method

.method public static unmodifiableListMultimap(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 950
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableListMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableListMultimap;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableListMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableMultimap(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Multimap;

    return-object p0
.end method

.method public static unmodifiableMultimap(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 608
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSetMultimap(Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 888
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    return-object p0
.end method

.method public static unmodifiableSetMultimap(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 873
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 876
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSortedSetMultimap(Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;)Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 920
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSortedSetMultimap;

    if-eqz v0, :cond_0

    return-object p0

    .line 923
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSortedSetMultimap;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSortedSetMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;)V

    return-object v0
.end method

.method private static unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 977
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 978
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 979
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 980
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 981
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 982
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 984
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
