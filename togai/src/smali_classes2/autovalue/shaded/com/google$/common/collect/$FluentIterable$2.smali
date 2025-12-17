.class Lautovalue/shaded/com/google$/common/collect/$FluentIterable$2;
.super Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
.source "$FluentIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$FluentIterable;->concat(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
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
.field final synthetic val$inputs:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FluentIterable$2;->val$inputs:Ljava/lang/Iterable;

    .line 274
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FluentIterable$2;->val$inputs:Ljava/lang/Iterable;

    .line 277
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->toIterator()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->transform(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
