.class public final Lautovalue/shaded/com/google$/common/collect/$Multisets;
.super Ljava/lang/Object;
.source "$Multisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset;,
        Lautovalue/shaded/com/google$/common/collect/$Multisets$DecreasingCount;,
        Lautovalue/shaded/com/google$/common/collect/$Multisets$MultisetIteratorImpl;,
        Lautovalue/shaded/com/google$/common/collect/$Multisets$EntrySet;,
        Lautovalue/shaded/com/google$/common/collect/$Multisets$ElementSet;,
        Lautovalue/shaded/com/google$/common/collect/$Multisets$AbstractEntry;,
        Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;,
        Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;,
        Lautovalue/shaded/com/google$/common/collect/$Multisets$UnmodifiableMultiset;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAllImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 894
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 897
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$$ExternalSyntheticLambda1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    invoke-interface {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->forEachEntry(Ljava/util/function/ObjIntConsumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method static addAllImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 881
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    if-eqz v0, :cond_0

    .line 884
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->cast(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->addAllImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Z

    move-result p0

    return p0

    .line 885
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 888
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static cast(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TT;>;"
        }
    .end annotation

    .line 1118
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    return-object p0
.end method

.method public static containsOccurrences(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 672
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 675
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 676
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static copyHighestCountFirst(Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 1129
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 1130
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$DecreasingCount;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$Multisets$DecreasingCount;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1131
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static difference(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 604
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    return-object v0
.end method

.method static elementIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 952
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$5;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$5;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static equalsImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 858
    :cond_0
    instance-of v1, p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 859
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 866
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->size()I

    move-result v1

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 869
    :cond_1
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 870
    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v1

    if-eq v3, v1, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static filter(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 292
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;

    if-eqz v0, :cond_0

    .line 295
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;

    .line 296
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    .line 297
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;

    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$FilteredMultiset;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 235
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static inferDistinctElements(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    .line 378
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    if-eqz v0, :cond_0

    .line 379
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method public static intersection(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 470
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$2;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    return-object v0
.end method

.method static iteratorImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1043
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$MultisetIteratorImpl;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static synthetic lambda$spliteratorImpl$0(Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;)Ljava/util/Spliterator;
    .locals 1

    .line 1100
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v0

    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static linearTimeSizeImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;)I"
        }
    .end annotation

    .line 1110
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 1111
    invoke-interface {v2}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1113
    :cond_0
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/primitives/$Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method static removeAllImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 904
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    if-eqz v0, :cond_0

    .line 905
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 908
    :cond_0
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static removeOccurrences(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 791
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 796
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 797
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 798
    invoke-interface {v2}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 799
    invoke-interface {v2}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 800
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    move v1, v5

    goto :goto_0

    :cond_1
    if-lez v3, :cond_0

    .line 803
    invoke-interface {v2}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_1

    :cond_2
    return v1
.end method

.method public static removeOccurrences(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 753
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    if-eqz v0, :cond_0

    .line 754
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->removeOccurrences(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Z

    move-result p0

    return p0

    .line 756
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 760
    invoke-interface {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static retainAllImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 913
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    if-eqz v0, :cond_0

    .line 916
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 919
    :cond_0
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static retainOccurrences(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 702
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->retainOccurrencesImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Z

    move-result p0

    return p0
.end method

.method private static retainOccurrencesImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 708
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 713
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 714
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 715
    invoke-interface {v2}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 717
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    move v1, v4

    goto :goto_0

    .line 719
    :cond_1
    invoke-interface {v2}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 720
    invoke-interface {v2}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->setCount(Ljava/lang/Object;I)I

    goto :goto_1

    :cond_2
    return v1
.end method

.method static setCountImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 924
    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 926
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    if-lez p2, :cond_0

    .line 930
    invoke-interface {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    .line 932
    invoke-interface {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->remove(Ljava/lang/Object;I)I

    :cond_1
    :goto_0
    return v0
.end method

.method static setCountImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;TE;II)Z"
        }
    .end annotation

    const-string v0, "oldCount"

    .line 940
    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    const-string v0, "newCount"

    .line 941
    invoke-static {p3, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 943
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 944
    invoke-interface {p0, p1, p3}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->setCount(Ljava/lang/Object;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static spliteratorImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;)Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;)",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1097
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 1098
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Multisets$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$$ExternalSyntheticLambda0;-><init>()V

    .line 1102
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v2

    and-int/lit16 v2, v2, 0x510

    or-int/lit8 v2, v2, 0x40

    .line 1104
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->size()I

    move-result p0

    int-to-long v3, p0

    .line 1098
    invoke-static {v0, v1, v2, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "+TE;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 527
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$3;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    return-object v0
.end method

.method public static toMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "M::",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;>(",
            "Ljava/util/function/Function<",
            "-TT;TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 79
    invoke-static {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static union(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "+TE;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 399
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$1;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    return-object v0
.end method

.method public static unmodifiableMultiset(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    return-object p0
.end method

.method public static unmodifiableMultiset(Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 93
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$UnmodifiableMultiset;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multisets$UnmodifiableMultiset;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$UnmodifiableMultiset;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSortedMultiset(Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 223
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;-><init>(Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;)V

    return-object v0
.end method
