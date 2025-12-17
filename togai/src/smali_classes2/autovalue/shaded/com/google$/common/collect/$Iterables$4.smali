.class Lautovalue/shaded/com/google$/common/collect/$Iterables$4;
.super Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
.source "$Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterables;->filter(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$retainIfTrue:Lautovalue/shaded/com/google$/common/base/$Predicate;

.field final synthetic val$unfiltered:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$4;->val$unfiltered:Ljava/lang/Iterable;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$4;->val$retainIfTrue:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 556
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$FluentIterable;-><init>()V

    return-void
.end method

.method static synthetic lambda$forEach$0(Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 567
    invoke-interface {p0, p2}, Lautovalue/shaded/com/google$/common/base/$Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 568
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 564
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$4;->val$unfiltered:Ljava/lang/Iterable;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$4;->val$retainIfTrue:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 565
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$Iterables$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterables$4$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$4;->val$unfiltered:Ljava/lang/Iterable;

    .line 559
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$4;->val$retainIfTrue:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->filter(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$4;->val$unfiltered:Ljava/lang/Iterable;

    .line 575
    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$4;->val$retainIfTrue:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->filter(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
