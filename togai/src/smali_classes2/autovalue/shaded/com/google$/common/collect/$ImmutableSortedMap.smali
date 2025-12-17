.class public final Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMapFauxverideShim;
.source "$ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$SerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMapFauxverideShim<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_MAP:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 109
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    .line 111
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    move-result-object v1

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 559
    invoke-direct {p0, p1, p2, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)V

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMapFauxverideShim;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->descendingMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    return-void
.end method

.method static synthetic access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 0

    .line 62
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 0

    .line 62
    invoke-static {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    return-object p0
.end method

.method static synthetic access$300(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 0

    .line 62
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 252
    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 253
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->copyOf(Ljava/lang/Iterable;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 268
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
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
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 215
    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Ordering;

    .line 216
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 232
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private static copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 304
    instance-of v0, p0, Ljava/util/SortedMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 305
    move-object v0, p0

    check-cast v0, Ljava/util/SortedMap;

    .line 306
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    move v1, v0

    :cond_1
    if-eqz v1, :cond_2

    .line 311
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    if-eqz v0, :cond_2

    .line 315
    move-object v0, p0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    .line 316
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 320
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 283
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 289
    :cond_0
    instance-of v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    if-eqz v1, :cond_1

    .line 293
    move-object v1, p0

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    .line 294
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    .line 298
    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method static emptyMap(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    .line 118
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    move-result-object p0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method private static fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 335
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/util/Map$Entry;

    .line 336
    array-length v0, p2

    invoke-static {p0, p1, p2, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private static fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;I)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_3

    .line 351
    new-array v2, p3, [Ljava/lang/Object;

    .line 352
    new-array v3, p3, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 356
    aget-object p1, p2, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 357
    aget-object v0, p2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 358
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    aput-object p1, v2, v1

    .line 360
    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_0
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1;

    invoke-direct {p1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {p2, v1, p3, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 376
    aget-object p1, p2, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 377
    aput-object p1, v2, v1

    .line 378
    aget-object v4, p2, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 379
    aget-object v5, v2, v1

    invoke-static {v5, v4}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    move v4, v0

    :goto_1
    if-ge v4, p3, :cond_2

    .line 381
    aget-object v5, p2, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 382
    aget-object v6, p2, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 383
    invoke-static {v5, v6}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 384
    aput-object v5, v2, v4

    .line 385
    aput-object v6, v3, v4

    .line 387
    invoke-interface {p0, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_2

    :cond_1
    move p1, v1

    :goto_2
    add-int/lit8 v6, v4, -0x1

    aget-object v6, p2, v6

    aget-object v7, p2, v4

    const-string v8, "key"

    .line 386
    invoke-static {p1, v8, v6, v7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    add-int/lit8 v4, v4, 0x1

    move-object p1, v5

    goto :goto_1

    .line 391
    :cond_2
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    new-instance p2, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    new-instance p3, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableList;

    invoke-direct {p3, v2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableList;-><init>([Ljava/lang/Object;)V

    invoke-direct {p2, p3, p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableList;

    invoke-direct {p0, v3}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableList;-><init>([Ljava/lang/Object;)V

    invoke-direct {p1, p2, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object p1

    .line 348
    :cond_3
    aget-object p1, p2, v1

    .line 349
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    aget-object p2, p2, v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 348
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0

    .line 346
    :cond_4
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private getSubMap(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 696
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 699
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1

    .line 701
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 702
    invoke-virtual {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->getSubSet(II)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v2, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->subList(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method public static naturalOrder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 402
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 132
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 151
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 163
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p4, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 175
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p4, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    invoke-static {p6, p7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 188
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p4, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    invoke-static {p6, p7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x4

    invoke-static {p8, p9}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    .line 187
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method private static of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 138
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v1, p1, p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    .line 139
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method private static varargs ofEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 193
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v1, p0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 414
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 422
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->reverse()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 99
    invoke-static {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 829
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 834
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 682
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method createEntrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 647
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$1EntrySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)V

    :goto_0
    return-object v0
.end method

.method createKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method createValues()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 672
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public descendingKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 909
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->descendingSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->descendingKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->descendingMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    if-nez v0, :cond_1

    .line 891
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->from(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->reverse()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 894
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 896
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->descendingSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->reverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->descendingMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 599
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMapFauxverideShim;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 849
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 687
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 819
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 824
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 578
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 579
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    .line 580
    :goto_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 581
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v3, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 587
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 588
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public headMap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 717
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 733
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->getSubMap(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 839
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 844
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 593
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public bridge synthetic keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 854
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 809
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 814
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public navigableKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->navigableKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 868
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 573
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 748
    invoke-virtual {p0, p1, v0, p2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 767
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expected fromKey <= toKey but %s > %s"

    .line 769
    invoke-static {v0, v1, p1, p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 774
    invoke-virtual {p0, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 788
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->keySet:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 804
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->getSubMap(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public values()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->valueList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->values()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 935
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$SerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;)V

    return-object v0
.end method
