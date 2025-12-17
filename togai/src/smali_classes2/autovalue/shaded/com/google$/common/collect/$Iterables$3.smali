.class Lautovalue/shaded/com/google$/common/collect/$Iterables$3;
.super Lautovalue/shaded/com/google$/common/collect/$FluentIterable;
.source "$Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterables;->paddedPartition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$FluentIterable<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$3;->val$iterable:Ljava/lang/Iterable;

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$3;->val$size:I

    .line 538
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
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$3;->val$iterable:Ljava/lang/Iterable;

    .line 541
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterables$3;->val$size:I

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->paddedPartition(Ljava/util/Iterator;I)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
