.class Lautovalue/shaded/com/google$/common/collect/$Iterables$6;
.super Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
.source "$Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
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

.field final synthetic val$numberToSkip:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$6;->val$iterable:Ljava/lang/Iterable;

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$6;->val$numberToSkip:I

    .line 855
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$6;->val$iterable:Ljava/lang/Iterable;

    .line 858
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 859
    check-cast v0, Ljava/util/List;

    .line 860
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$6;->val$numberToSkip:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 861
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 863
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$6;->val$numberToSkip:I

    .line 865
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->advance(Ljava/util/Iterator;I)I

    .line 872
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Iterables$6$1;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables$6$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Iterables$6;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$6;->val$iterable:Ljava/lang/Iterable;

    .line 897
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 898
    check-cast v0, Ljava/util/List;

    .line 899
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$6;->val$numberToSkip:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 900
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 902
    :cond_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Streams;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$6;->val$numberToSkip:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
