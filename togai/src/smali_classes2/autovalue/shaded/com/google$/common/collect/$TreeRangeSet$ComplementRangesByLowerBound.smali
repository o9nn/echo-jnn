.class final Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractNavigableMap;
.source "$TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComplementRangesByLowerBound"
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
.field private final complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final positiveRangesByLowerBound:Ljava/util/NavigableMap;
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

.field private final positiveRangesByUpperBound:Ljava/util/NavigableMap;
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


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 457
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$Range;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 461
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractNavigableMap;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 463
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    return-void
.end method

.method static synthetic access$100(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0

    .line 444
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    return-object p0
.end method

.method private subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;
    .locals 2
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 468
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 471
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    .line 472
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$Range;)V

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

    .line 497
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 644
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Range;

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
    .locals 3
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 567
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 568
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Cut;

    goto :goto_0

    .line 569
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 571
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 572
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object v1

    sget-object v2, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    .line 576
    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 577
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 578
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 579
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 574
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->peekingIterator(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;

    move-result-object v0

    .line 581
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 583
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 584
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 585
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 586
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 587
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 590
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 593
    :goto_2
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->aboveAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/base/$MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 594
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;

    invoke-direct {v2, p0, v1, v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;)V

    return-object v2

    .line 588
    :cond_5
    :goto_3
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 512
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 516
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 517
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object v2

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 515
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    .line 520
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 523
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->peekingIterator(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 525
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 526
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 527
    :cond_2
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v1

    goto :goto_2

    .line 528
    :cond_3
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 529
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 533
    :goto_2
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$1;

    invoke-direct {v2, p0, v1, v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;)V

    return-object v2

    .line 531
    :cond_4
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
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

    .line 626
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 629
    :try_start_0
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    const/4 v0, 0x1

    .line 631
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->tailMap(Lautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 633
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Range;

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

    .line 487
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Range;->upTo(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 444
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->headMap(Lautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 621
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->entryIterator()Ljava/util/Iterator;

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

    .line 481
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p2

    .line 482
    invoke-static {p4}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p4

    .line 480
    invoke-static {p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$Range;->range(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    .line 479
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 444
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Cut;ZLautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

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

    .line 492
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Range;->downTo(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 444
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->tailMap(Lautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
