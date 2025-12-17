.class abstract Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;
.super Ljava/lang/Object;
.source "$CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FlatMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        "OutSpliteratorT::",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;"
    }
.end annotation


# instance fields
.field characteristics:I

.field estimatedSize:J

.field final factory:Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$Factory<",
            "TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field final from:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TInElementT;>;"
        }
    .end annotation
.end field

.field final function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field prefix:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutSpliteratorT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$Factory;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutSpliteratorT;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;",
            "Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$Factory<",
            "TInElementT;TOutSpliteratorT;>;IJ)V"
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    iput-object p4, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->factory:Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$Factory;

    iput p5, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->characteristics:I

    iput-wide p6, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->characteristics:I

    return v0
.end method

.method public final estimateSize()J
    .locals 5

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 395
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    :cond_0
    iget-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    .line 397
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    .line 357
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    return-void
.end method

.method synthetic lambda$forEachRemaining$1$autovalue-shaded-com-google$-common-collect-$CollectSpliterators$FlatMapSpliterator(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    .line 359
    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Spliterator;

    if-eqz p2, :cond_0

    .line 361
    invoke-interface {p2, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$tryAdvance$0$autovalue-shaded-com-google$-common-collect-$CollectSpliterators$FlatMapSpliterator(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    .line 345
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Spliterator;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    return-void
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)Z"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v0, :cond_2

    .line 337
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    .line 345
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda1;-><init>(Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutSpliteratorT;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->from:Ljava/util/Spliterator;

    .line 369
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->characteristics:I

    and-int/lit8 v5, v1, -0x41

    .line 372
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimateSize()J

    move-result-wide v1

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v1, v6

    if-gez v4, :cond_0

    const-wide/16 v6, 0x2

    .line 374
    div-long/2addr v1, v6

    iget-wide v6, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    sub-long/2addr v6, v1

    iput-wide v6, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    iput v5, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->characteristics:I

    :cond_0
    move-wide v6, v1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->factory:Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$Factory;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    iget-object v4, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    .line 379
    invoke-interface/range {v1 .. v7}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator$Factory;->newFlatMapSpliterator(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v1

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    return-object v1

    :cond_1
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    if-eqz v1, :cond_2

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$FlatMapSpliterator;->prefix:Ljava/util/Spliterator;

    return-object v1

    :cond_2
    return-object v0
.end method
