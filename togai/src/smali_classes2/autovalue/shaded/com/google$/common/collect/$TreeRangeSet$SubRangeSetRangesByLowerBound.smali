.class final Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractNavigableMap;
.source "$TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubRangeSetRangesByLowerBound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractNavigableMap<",
        "Lautovalue/shaded/com/google$/common/collect/$Cut<",
        "TC;>;",
        "Lautovalue/shaded/com/google$/common/collect/$Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final rangesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final rangesByUpperBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final restriction:Lautovalue/shaded/com/google$/common/collect/$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;",
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 694
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractNavigableMap;-><init>()V

    .line 695
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 696
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 697
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/NavigableMap;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 698
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;

    invoke-direct {p1, p3}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByUpperBound:Ljava/util/NavigableMap;

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$1;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic access$300(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0

    .line 674
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    return-object p0
.end method

.method static synthetic access$400(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0

    .line 674
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    return-object p0
.end method

.method private subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;>;)",
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 702
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1

    .line 705
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 706
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, p1, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/util/NavigableMap;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;>;"
        }
    .end annotation

    .line 733
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 738
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 814
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 818
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 819
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 823
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 824
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->typeAsUpperBound()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object v0

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 822
    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 825
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 826
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 827
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 828
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound$2;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;Ljava/util/Iterator;)V

    return-object v1
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 772
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 776
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 778
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByUpperBound:Ljava/util/NavigableMap;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 780
    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 781
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 784
    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 787
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 788
    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object v3

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 786
    :cond_3
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 789
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 790
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 793
    :goto_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v3, v3, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 794
    invoke-static {v3}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 795
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound$1;

    invoke-direct {v2, p0, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/collect/$Cut;)V

    return-object v2
.end method

.method public get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 743
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 746
    :try_start_0
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 747
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 748
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 749
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 751
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 753
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    if-eqz p1, :cond_2

    .line 754
    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 755
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 758
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 760
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 674
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Lautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 723
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Range;->upTo(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 674
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->headMap(Lautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 850
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public subMap(Lautovalue/shaded/com/google$/common/collect/$Cut;ZLautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;Z",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 716
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p2

    .line 718
    invoke-static {p4}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p4

    .line 714
    invoke-static {p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$Range;->range(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    .line 713
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 674
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Cut;ZLautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Lautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 728
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Range;->downTo(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 674
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;->tailMap(Lautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
