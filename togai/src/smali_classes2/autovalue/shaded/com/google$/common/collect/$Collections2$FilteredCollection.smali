.class Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;
.super Ljava/util/AbstractCollection;
.source "$Collections2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FilteredCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final unfiltered:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    return-void
.end method

.method static synthetic lambda$retainAll$1(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    .line 208
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 138
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 139
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 145
    invoke-interface {v2, v1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 147
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 152
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->removeIf(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 157
    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 160
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 167
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2;->containsAllImpl(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method createCombined(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection<",
            "TE;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v2, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 187
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 188
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection$$ExternalSyntheticLambda1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 172
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->any(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 177
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->filter(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$forEach$0$autovalue-shaded-com-google$-common-collect-$Collections2$FilteredCollection(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 190
    invoke-interface {v0, p2}, Lautovalue/shaded/com/google$/common/base/$Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$removeIf$2$autovalue-shaded-com-google$-common-collect-$Collections2$FilteredCollection(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 214
    invoke-interface {v0, p2}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 198
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 213
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 214
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection$$ExternalSyntheticLambda2;-><init>(Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 208
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection$$ExternalSyntheticLambda3;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 220
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 221
    invoke-interface {v3, v2}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->unfiltered:Ljava/util/Collection;

    .line 182
    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->filter(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Collections2$FilteredCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
