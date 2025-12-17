.class Lautovalue/shaded/com/google$/common/collect/$Iterators$5;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Iterators;->filter(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$retainIfTrue:Lautovalue/shaded/com/google$/common/base/$Predicate;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$5;->val$unfiltered:Ljava/util/Iterator;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$5;->val$retainIfTrue:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 632
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$5;->val$unfiltered:Ljava/util/Iterator;

    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$5;->val$unfiltered:Ljava/util/Iterator;

    .line 636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Iterators$5;->val$retainIfTrue:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 637
    invoke-interface {v1, v0}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 641
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Iterators$5;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
