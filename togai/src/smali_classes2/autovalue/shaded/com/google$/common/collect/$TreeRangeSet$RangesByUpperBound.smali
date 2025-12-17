.class final Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractNavigableMap;
.source "$TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangesByUpperBound"
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

.field private final upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
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

    .line 289
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractNavigableMap;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 291
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 0
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

    .line 295
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractNavigableMap;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0

    .line 279
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 301
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {p1, v2}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$Range;)V

    return-object v0

    .line 304
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object p1

    return-object p1
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

    .line 329
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 334
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Range;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 400
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 403
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 405
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 407
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 409
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->peekingIterator(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 411
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->next()Ljava/lang/Object;

    .line 414
    :cond_1
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound$2;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;)V

    return-object v1
.end method

.method entryIterator()Ljava/util/Iterator;
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 364
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 365
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 368
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 370
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 371
    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v1, v0, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 376
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 377
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 378
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 381
    :goto_0
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound$1;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;Ljava/util/Iterator;)V

    return-object v1
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

    .line 339
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 342
    :try_start_0
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 343
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 346
    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 348
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Range;

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

    .line 319
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Range;->upTo(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 278
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->headMap(Lautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 438
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 439
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 430
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 431
    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    return v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->entryIterator()Ljava/util/Iterator;

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

    .line 313
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p2

    .line 314
    invoke-static {p4}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p4

    .line 312
    invoke-static {p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$Range;->range(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    .line 311
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 278
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    check-cast p3, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Cut;ZLautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

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

    .line 324
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$BoundType;->forBoolean(Z)Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Range;->downTo(Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->subMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 278
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;->tailMap(Lautovalue/shaded/com/google$/common/collect/$Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
