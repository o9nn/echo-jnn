.class Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;
.super Ljava/lang/Object;
.source "$CollectSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$fromSpliterator:Ljava/util/Spliterator;

.field final synthetic val$function:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$function:Ljava/util/function/Function;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$forEachRemaining$1(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    .line 120
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$tryAdvance$0(Ljava/util/function/Consumer;Ljava/util/function/Function;Ljava/lang/Object;)V
    .locals 0

    .line 115
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    .line 136
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x106

    return v0
.end method

.method public estimateSize()J
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    .line 131
    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$function:Ljava/util/function/Function;

    .line 120
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$function:Ljava/util/function/Function;

    .line 114
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    invoke-interface {v0, v2}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TOutElementT;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$fromSpliterator:Ljava/util/Spliterator;

    .line 125
    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators$1;->val$function:Ljava/util/function/Function;

    .line 126
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
