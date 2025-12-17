.class Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$1;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "$ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->spliterator()Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final iterator:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;JI)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    .line 781
    invoke-direct {p0, p2, p3, p4}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    .line 782
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$1;->iterator:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    .line 796
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$1;->iterator:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    .line 786
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$1;->iterator:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    .line 787
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
