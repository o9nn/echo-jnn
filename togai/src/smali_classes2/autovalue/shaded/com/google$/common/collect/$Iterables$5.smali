.class Lautovalue/shaded/com/google$/common/collect/$Iterables$5;
.super Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
.source "$Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterables;->transform(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/lang/Iterable;
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
.field final synthetic val$fromIterable:Ljava/lang/Iterable;

.field final synthetic val$function:Lautovalue/shaded/com/google$/common/base/$Function;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Function;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$5;->val$fromIterable:Ljava/lang/Iterable;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$5;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 695
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$FluentIterable;-><init>()V

    return-void
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/Consumer;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Object;)V
    .locals 0

    .line 704
    invoke-interface {p1, p2}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

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

    .line 703
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$5;->val$fromIterable:Ljava/lang/Iterable;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$5;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    .line 704
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$Iterables$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterables$5$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Lautovalue/shaded/com/google$/common/base/$Function;)V

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$5;->val$fromIterable:Ljava/lang/Iterable;

    .line 698
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$5;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->transform(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Iterator;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$5;->val$fromIterable:Ljava/lang/Iterable;

    .line 709
    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$5;->val$function:Lautovalue/shaded/com/google$/common/base/$Function;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
