.class Lautovalue/shaded/com/google$/common/collect/$FluentIterable$3;
.super Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
.source "$FluentIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$FluentIterable;->concatNoDefensiveCopy([Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
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
.field final synthetic val$inputs:[Ljava/lang/Iterable;


# direct methods
.method constructor <init>([Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FluentIterable$3;->val$inputs:[Ljava/lang/Iterable;

    .line 288
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

    .line 291
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FluentIterable$3$1;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$FluentIterable$3;->val$inputs:[Ljava/lang/Iterable;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$FluentIterable$3$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$FluentIterable$3;I)V

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
