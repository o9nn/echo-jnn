.class final Lautovalue/shaded/com/google$/common/collect/$Synchronized;
.super Ljava/lang/Object;
.source "$Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedDeque;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedQueue;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedEntry;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedNavigableMap;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedNavigableSet;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedBiMap;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedMap;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSetMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedListMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedRandomAccessList;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedList;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSet;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSet;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedCollection;,
        Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->nullableSynchronizedEntry(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method static biMap(Lautovalue/shaded/com/google$/common/collect/$BiMap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1294
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedBiMap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1297
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedBiMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/collect/$Synchronized$1;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$Synchronized$1;)V

    return-object v0
.end method

.method static deque(Ljava/util/Deque;Ljava/lang/Object;)Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation

    .line 1840
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedDeque;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedDeque;-><init>(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 346
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedRandomAccessList;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedList;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method static listMultimap(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 761
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedListMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 764
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedListMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedListMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ListMultimap;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1022
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method static multimap(Lautovalue/shaded/com/google$/common/collect/$Multimap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
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
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 567
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static multiset(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 471
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static navigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1538
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method static navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1544
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedNavigableMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method static navigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1533
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method static navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1528
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedNavigableSet;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static nullableSynchronizedEntry(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1732
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedEntry;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Object;)V

    return-object v0
.end method

.method static queue(Ljava/util/Queue;Ljava/lang/Object;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 1787
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedQueue;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedQueue;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedQueue;-><init>(Ljava/util/Queue;Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 252
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static setMultimap(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
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
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 803
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSetMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSetMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSetMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1233
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 287
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSet;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method static sortedSetMultimap(Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 858
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;

    if-eqz v0, :cond_0

    return-object p0

    .line 861
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method static table(Lautovalue/shaded/com/google$/common/collect/$Table;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 1977
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;-><init>(Lautovalue/shaded/com/google$/common/collect/$Table;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 908
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 909
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 911
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 912
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 914
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 915
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->list(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 917
    :cond_2
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static typePreservingSet(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 921
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 922
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 924
    :cond_0
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
