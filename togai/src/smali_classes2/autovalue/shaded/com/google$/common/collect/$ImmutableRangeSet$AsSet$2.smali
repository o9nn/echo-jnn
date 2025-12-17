.class Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;->descendingIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$AbstractIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field elemItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation
.end field

.field final rangeItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->this$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;

    .line 592
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;-><init>()V

    .line 593
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->access$000(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->reverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->rangeItr:Ljava/util/Iterator;

    .line 594
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->elemItr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->elemItr:Ljava/util/Iterator;

    .line 598
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->rangeItr:Ljava/util/Iterator;

    .line 599
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->rangeItr:Ljava/util/Iterator;

    .line 600
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->this$1:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;->access$100(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;)Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;->create(Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;->descendingIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->elemItr:Ljava/util/Iterator;

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->elemItr:Ljava/util/Iterator;

    .line 605
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 592
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet$2;->computeNext()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
