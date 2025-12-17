.class Lautovalue/shaded/com/google$/common/collect/$Sets$1;
.super Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;
.source "$Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Sets$SetView<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set2:Ljava/util/Set;

    const/4 p1, 0x0

    .line 692
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;-><init>(Lautovalue/shaded/com/google$/common/collect/$Sets$1;)V

    return-void
.end method

.method static synthetic lambda$stream$0(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 0

    .line 733
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set1:Ljava/util/Set;

    .line 743
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public copyInto(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/util/Set<",
            "TE;>;>(TS;)TS;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set1:Ljava/util/Set;

    .line 748
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set2:Ljava/util/Set;

    .line 749
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public immutableCopy()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 755
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;-><init>()V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set1:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set2:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set1:Ljava/util/Set;

    .line 706
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set2:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 711
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$1$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$1$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Sets$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 692
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 738
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    return-object v0
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set1:Ljava/util/Set;

    .line 695
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set2:Ljava/util/Set;

    .line 696
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set1:Ljava/util/Set;

    .line 697
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set1:Ljava/util/Set;

    .line 733
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set2:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;->val$set1:Ljava/util/Set;

    new-instance v3, Lautovalue/shaded/com/google$/common/collect/$Sets$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lautovalue/shaded/com/google$/common/collect/$Sets$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
