.class final Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;
.super Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset;
.source "$Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilteredMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset<",
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

.field final unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multisets$1;)V

    .line 307
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 308
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Predicate;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 357
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Element %s does not match predicate %s"

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 356
    invoke-static {v0, v1, p1, v2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 358
    invoke-interface {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->add(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 345
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 349
    invoke-interface {v2, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 318
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 329
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset$1;

    invoke-direct {v1, p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;)V

    .line 328
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 313
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->filter(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1

    const-string v0, "occurrences"

    .line 363
    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    if-nez p2, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-interface {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->remove(Ljava/lang/Object;I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
