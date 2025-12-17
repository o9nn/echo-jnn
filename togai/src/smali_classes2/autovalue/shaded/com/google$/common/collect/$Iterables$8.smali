.class Lautovalue/shaded/com/google$/common/collect/$Iterables$8;
.super Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
.source "$Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterables;->consumingIterable(Ljava/lang/Iterable;)Ljava/lang/Iterable;
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
.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$8;->val$iterable:Ljava/lang/Iterable;

    .line 956
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$8;->val$iterable:Ljava/lang/Iterable;

    .line 959
    instance-of v1, v0, Ljava/util/Queue;

    if-eqz v1, :cond_0

    .line 960
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ConsumingQueueIterator;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$8;->val$iterable:Ljava/lang/Iterable;

    check-cast v1, Ljava/util/Queue;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ConsumingQueueIterator;-><init>(Ljava/util/Queue;)V

    goto :goto_0

    .line 961
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->consumingIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Iterables.consumingIterable(...)"

    return-object v0
.end method
