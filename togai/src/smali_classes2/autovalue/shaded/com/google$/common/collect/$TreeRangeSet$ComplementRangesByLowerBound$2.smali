.class Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->descendingEntryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Lautovalue/shaded/com/google$/common/collect/$Cut<",
        "TC;>;",
        "Lautovalue/shaded/com/google$/common/collect/$Range<",
        "TC;>;>;>;"
    }
.end annotation


# instance fields
.field nextComplementRangeUpperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;

.field final synthetic val$firstComplementRangeUpperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

.field final synthetic val$positiveItr:Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->val$firstComplementRangeUpperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->val$positiveItr:Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;

    .line 594
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;-><init>()V

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 599
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 600
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->val$positiveItr:Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;

    .line 601
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->val$positiveItr:Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;

    .line 602
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 603
    iget-object v1, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 604
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v1

    .line 605
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;

    .line 606
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->access$100(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->this$0:Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;

    .line 609
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;->access$100(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    .line 611
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 612
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowAll()Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v1

    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 614
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
