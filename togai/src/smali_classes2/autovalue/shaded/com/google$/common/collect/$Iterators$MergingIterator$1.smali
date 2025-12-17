.class Lautovalue/shaded/com/google$/common/collect/$Iterators$MergingIterator$1;
.super Ljava/lang/Object;
.source "$Iterators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterators$MergingIterator;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lautovalue/shaded/com/google$/common/collect/$PeekingIterator<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$itemComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Iterators$MergingIterator;Ljava/util/Comparator;)V
    .locals 0

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$MergingIterator$1;->val$itemComparator:Ljava/util/Comparator;

    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$PeekingIterator<",
            "TT;>;",
            "Lautovalue/shaded/com/google$/common/collect/$PeekingIterator<",
            "TT;>;)I"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$MergingIterator$1;->val$itemComparator:Ljava/util/Comparator;

    .line 1257
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1254
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;

    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Iterators$MergingIterator$1;->compare(Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;Lautovalue/shaded/com/google$/common/collect/$PeekingIterator;)I

    move-result p1

    return p1
.end method
