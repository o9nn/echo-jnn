.class public Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
.super Ljava/lang/Object;
.source "$ImmutableRangeMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$RangeMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$SerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$RangeMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final transient ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private final transient values:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
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

    .line 50
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    .line 51
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->EMPTY:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->values:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 0

    .line 48
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p0
.end method

.method public static builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lautovalue/shaded/com/google$/common/collect/$RangeMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeMap<",
            "TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 80
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    if-eqz v0, :cond_0

    .line 81
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    return-object p0

    .line 83
    :cond_0
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object p0

    .line 84
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;-><init>(I)V

    .line 85
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;-><init>(I)V

    .line 86
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v0, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_0

    .line 90
    :cond_1
    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object p0
.end method

.method public static of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->EMPTY:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    return-object v0
.end method

.method public static of(Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 74
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method public static toImmutableRangeMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 63
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableRangeMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 311
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0

    .line 314
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 315
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->reverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->rangeLexOrdering()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->reverse()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    .line 316
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->values:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->reverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v1
.end method

.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->asDescendingMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public asMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 301
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 305
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->rangeLexOrdering()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    .line 306
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->values:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-direct {v1, v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v1
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->asMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 387
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$RangeMap;

    if-eqz v0, :cond_0

    .line 388
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$RangeMap;

    .line 389
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->asMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 179
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    .line 180
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 177
    invoke-static {v0, v1, v2, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$SortedLists;->binarySearch(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 186
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 187
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->values:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 196
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    .line 197
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 194
    invoke-static {v0, v1, v2, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$SortedLists;->binarySearch(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 203
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 204
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->values:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .line 382
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->asMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final merge(Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final put(Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Lautovalue/shaded/com/google$/common/collect/$RangeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putCoalescing(Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public span()Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 210
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 214
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 215
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 321
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 323
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->span()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 329
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 327
    invoke-static {v0, v1, v2, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$SortedLists;->binarySearch(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;)I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 336
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v2

    iget-object v3, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;

    sget-object v5, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 334
    invoke-static {v1, v2, v3, v4, v5}, Lautovalue/shaded/com/google$/common/collect/$SortedLists;->binarySearch(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 341
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    move-result-object p1

    return-object p1

    :cond_2
    sub-int v2, v1, v0

    .line 345
    new-instance v5, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$1;

    invoke-direct {v5, p0, v2, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;IILautovalue/shaded/com/google$/common/collect/$Range;)V

    .line 368
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$2;

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->values:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v3, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->subList(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v6

    move-object v3, v2

    move-object v4, p0

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;)V

    return-object v2

    :cond_3
    :goto_0
    return-object p0
.end method

.method public bridge synthetic subRangeMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$RangeMap;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->subRangeMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->asMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 431
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$SerializedForm;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->asMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$SerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    return-object v0
.end method
