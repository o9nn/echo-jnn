.class Lautovalue/shaded/com/google$/common/collect/$Sets$2;
.super Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;
.source "$Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets;->intersection(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;
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

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set2:Ljava/util/Set;

    const/4 p1, 0x0

    .line 791
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;-><init>(Lautovalue/shaded/com/google$/common/collect/$Sets$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set1:Ljava/util/Set;

    .line 838
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set1:Ljava/util/Set;

    .line 843
    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set2:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set2:Ljava/util/Set;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set1:Ljava/util/Set;

    .line 833
    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

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

    .line 794
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$2$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$2$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Sets$2;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 791
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set1:Ljava/util/Set;

    .line 817
    invoke-interface {v0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set2:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$Sets$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set1:Ljava/util/Set;

    .line 823
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set2:Ljava/util/Set;

    .line 824
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set1:Ljava/util/Set;

    .line 812
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;->val$set2:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$Sets$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
