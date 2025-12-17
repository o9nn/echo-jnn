.class public final Lautovalue/shaded/com/google$/common/collect/$Maps;
.super Ljava/lang/Object;
.source "$Maps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$Maps$DescendingMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$EntrySet;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$Values;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$NavigableKeySet;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$SortedKeySet;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$IteratorBasedAbstractMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$ViewCachingAbstractMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableNavigableMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredMapValues;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$TransformedEntriesNavigableMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$TransformedEntriesSortedMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$TransformedEntriesMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$BiMapConverter;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableEntrySet;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableEntries;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$NavigableAsMapView;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$SortedAsMapView;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$AsMapView;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$SortedMapDifferenceImpl;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$ValueDifferenceImpl;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$MapDifferenceImpl;,
        Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 88
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 88
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->removeOnlySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 0

    .line 88
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0

    .line 88
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    .line 88
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static asConverter(Lautovalue/shaded/com/google$/common/collect/$BiMap;)Lautovalue/shaded/com/google$/common/base/$Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TA;TB;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Converter<",
            "TA;TB;>;"
        }
    .end annotation

    .line 1436
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$BiMapConverter;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$BiMapConverter;-><init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;)V

    return-object v0
.end method

.method static asEntryToEntryFunction(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Lautovalue/shaded/com/google$/common/base/$Function;
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
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    .line 1939
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$13;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$13;-><init>(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryToValueFunction(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Lautovalue/shaded/com/google$/common/base/$Function;
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
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;TV2;>;"
        }
    .end annotation

    .line 1909
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$11;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$11;-><init>(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryTransformer(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;
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
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV1;TV2;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "TK;TV1;TV2;>;"
        }
    .end annotation

    .line 1886
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$9;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$9;-><init>(Lautovalue/shaded/com/google$/common/base/$Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 746
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$AsMapView;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$AsMapView;-><init>(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TK;TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 802
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$NavigableAsMapView;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$NavigableAsMapView;-><init>(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/SortedSet;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 773
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$SortedAsMapView;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$SortedAsMapView;-><init>(Ljava/util/SortedSet;Lautovalue/shaded/com/google$/common/base/$Function;)V

    return-object v0
.end method

.method static asMapEntryIterator(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TK;TV;>;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 898
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$3;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$3;-><init>(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)V

    return-object v0
.end method

.method static asValueToValueFunction(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/base/$Function;
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
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "-TK;TV1;TV2;>;TK;)",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "TV1;TV2;>;"
        }
    .end annotation

    .line 1897
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$10;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$10;-><init>(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;Ljava/lang/Object;)V

    return-object v0
.end method

.method static capacity(I)I
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "expectedSize"

    .line 268
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method static containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
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
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3570
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3573
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static containsKeyImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3549
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static containsValueImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3554
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$MapDifference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapDifference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 452
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 453
    check-cast p0, Ljava/util/SortedMap;

    .line 454
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->difference(Ljava/util/SortedMap;Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$SortedMapDifference;

    move-result-object p0

    return-object p0

    .line 456
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equals()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->difference(Ljava/util/Map;Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Equivalence;)Lautovalue/shaded/com/google$/common/collect/$MapDifference;

    move-result-object p0

    return-object p0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Equivalence;)Lautovalue/shaded/com/google$/common/collect/$MapDifference;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapDifference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 477
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 480
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 481
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 482
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    .line 483
    invoke-static/range {v0 .. v6}, Lautovalue/shaded/com/google$/common/collect/$Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 484
    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$Maps$MapDifferenceImpl;

    invoke-direct {p0, v7, v8, v9, v10}, Lautovalue/shaded/com/google$/common/collect/$Maps$MapDifferenceImpl;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object p0
.end method

.method public static difference(Ljava/util/SortedMap;Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$SortedMapDifference;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMapDifference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 506
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 509
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v8

    .line 510
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v9

    .line 511
    invoke-interface {v9, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 512
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v10

    .line 513
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v0

    .line 514
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equals()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lautovalue/shaded/com/google$/common/collect/$Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 515
    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$Maps$SortedMapDifferenceImpl;

    invoke-direct {p0, v8, v9, v10, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps$SortedMapDifferenceImpl;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object p0
.end method

.method private static doDifference(Ljava/util/Map;Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "-TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$MapDifference$ValueDifference<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 526
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 527
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 528
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 529
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    invoke-interface {p4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 531
    invoke-virtual {p2, v0, v2}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$Maps$ValueDifferenceImpl;->create(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$MapDifference$ValueDifference;

    move-result-object v0

    invoke-interface {p6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 537
    :cond_1
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3598
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3599
    check-cast p1, Ljava/util/Map;

    .line 3600
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static filterEntries(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2586
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2587
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;

    if-eqz v0, :cond_0

    .line 2589
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterFiltered(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$BiMap;

    move-result-object p0

    goto :goto_0

    .line 2590
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static filterEntries(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Map;
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
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2482
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;

    if-eqz v0, :cond_0

    .line 2484
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterFiltered(Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 2485
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static filterEntries(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableMap;
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
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2551
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2552
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;

    if-eqz v0, :cond_0

    .line 2553
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterFiltered(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    goto :goto_0

    .line 2554
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static filterEntries(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/SortedMap;
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
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2516
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2517
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;

    if-eqz v0, :cond_0

    .line 2518
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterFiltered(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    goto :goto_0

    .line 2519
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/SortedMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static filterFiltered(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2631
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    .line 2632
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$BiMap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2599
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 2600
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2621
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;->access$500(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    .line 2622
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;->access$600(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2609
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    .line 2610
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2329
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterEntries(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$BiMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterKeys(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2229
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2230
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v0

    .line 2231
    instance-of v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;

    if-eqz v1, :cond_0

    .line 2232
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterFiltered(Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 2233
    :cond_0
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v1, p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static filterKeys(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2300
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterEntries(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterKeys(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2266
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterEntries(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2453
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valuePredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterEntries(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$BiMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2358
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valuePredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterEntries(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2421
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valuePredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterEntries(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static filterValues(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/SortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2389
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valuePredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->filterEntries(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static fromProperties(Ljava/util/Properties;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1296
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v0

    .line 1298
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1299
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1300
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 1303
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1320
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immutableEnumMap(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 148
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumMap;

    if-eqz v0, :cond_0

    .line 150
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumMap;

    return-object p0

    .line 153
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 154
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    return-object p0

    .line 157
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 160
    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 163
    invoke-virtual {v3, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 168
    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v3, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    :cond_2
    invoke-static {v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method static indexMap(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4161
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;-><init>(I)V

    .line 4163
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 4164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move v1, v3

    goto :goto_0

    .line 4166
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method static keyFunction()Lautovalue/shaded/com/google$/common/base/$Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "Ljava/util/Map$Entry<",
            "TK;*>;TK;>;"
        }
    .end annotation

    .line 108
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->KEY:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    return-object v0
.end method

.method static keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 117
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;*>;)TK;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3680
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "Ljava/util/Map$Entry<",
            "TK;*>;>;"
        }
    .end annotation

    .line 2197
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyFunction()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v0

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Predicates;->compose(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public static newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/EnumMap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static newEnumMap(Ljava/util/Map;)Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 418
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newHashMap(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->capacity(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashMap()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/IdentityHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->capacity(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static newTreeMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "K:TC;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TC;>;)",
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/SortedMap;)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Ljava/util/TreeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 718
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object p0

    return-object p0
.end method

.method static putAllImpl(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 3621
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

    .line 3622
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
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
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3588
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3591
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
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

    .line 1101
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$6;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$6;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method private static removeOnlySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1047
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$4;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$4;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1066
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$5;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$5;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3526
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3528
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3513
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3539
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3541
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static subMap(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4189
    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4190
    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 4191
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4192
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4194
    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "map is using a custom comparator which is inconsistent with the natural ordering."

    .line 4193
    invoke-static {v0, v3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4197
    :cond_1
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4199
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    .line 4200
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object v3

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 4201
    :goto_1
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    .line 4202
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p1

    sget-object v5, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne p1, v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 4198
    :goto_2
    invoke-interface {p0, v0, v3, v4, v1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0

    .line 4203
    :cond_4
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4204
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p1

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0

    .line 4205
    :cond_6
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4206
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p1

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne p1, v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0

    .line 4208
    :cond_8
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableMap;

    return-object p0
.end method

.method public static synchronizedBiMap(Lautovalue/shaded/com/google$/common/collect/$BiMap;)Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1515
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->biMap(Lautovalue/shaded/com/google$/common/collect/$BiMap;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$BiMap;

    move-result-object p0

    return-object p0
.end method

.method public static synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 0
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

    .line 3414
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->navigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 191
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 209
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1174
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->toMap(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static toMap(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1192
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1195
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1196
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1197
    invoke-interface {p1, v1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1199
    :cond_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3607
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3609
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const-string v1, ", "

    .line 3611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3614
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    .line 3616
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transformEntries(Ljava/util/Map;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/Map<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1746
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$TransformedEntriesMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Ljava/util/NavigableMap;
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
            "Ljava/util/NavigableMap<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1852
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$TransformedEntriesNavigableMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$TransformedEntriesNavigableMap;-><init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Ljava/util/SortedMap;
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
            "Ljava/util/SortedMap<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1798
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$TransformedEntriesSortedMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$TransformedEntriesSortedMap;-><init>(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)V

    return-object v0
.end method

.method static transformEntry(Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V2:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;",
            "Ljava/util/Map$Entry<",
            "TK;TV1;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1921
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$12;

    invoke-direct {v0, p1, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$12;-><init>(Ljava/util/Map$Entry;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;
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
            "Ljava/util/Map<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV1;TV2;>;)",
            "Ljava/util/Map<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1609
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->asEntryTransformer(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformEntries(Ljava/util/Map;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static transformValues(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/NavigableMap;
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
            "Ljava/util/NavigableMap<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV1;TV2;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1694
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->asEntryTransformer(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformEntries(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public static transformValues(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/SortedMap;
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
            "Ljava/util/SortedMap<",
            "TK;TV1;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV1;TV2;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1650
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->asEntryTransformer(Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformEntries(Ljava/util/SortedMap;Lautovalue/shaded/com/google$/common/collect/$Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static uniqueIndex(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
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
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1234
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->uniqueIndex(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static uniqueIndex(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
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
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1269
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v0

    .line 1271
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1273
    invoke-interface {p1, v1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 1276
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1278
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 1279
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ". To index multiple values under a key, use Multimaps.index."

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static unmodifiableBiMap(Lautovalue/shaded/com/google$/common/collect/$BiMap;)Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1530
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/collect/$BiMap;)V

    return-object v0
.end method

.method static unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1345
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$7;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$7;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static unmodifiableEntryIterator(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1361
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$8;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$8;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1332
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableEntrySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 543
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 544
    check-cast p0, Ljava/util/SortedMap;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0

    .line 546
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;+TV;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3209
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3210
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableNavigableMap;

    if-eqz v0, :cond_0

    return-object p0

    .line 3215
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableNavigableMap;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method private static unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;+TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3221
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static valueFunction()Lautovalue/shaded/com/google$/common/base/$Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "Ljava/util/Map$Entry<",
            "*TV;>;TV;>;"
        }
    .end annotation

    .line 113
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;->VALUE:Lautovalue/shaded/com/google$/common/collect/$Maps$EntryFunction;

    return-object v0
.end method

.method static valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$2;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$2;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "*TV;>;)TV;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3684
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static valuePredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "Ljava/util/Map$Entry<",
            "*TV;>;>;"
        }
    .end annotation

    .line 2201
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valueFunction()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v0

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Predicates;->compose(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p0

    return-object p0
.end method
