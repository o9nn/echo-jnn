.class public final Lautovalue/shaded/com/google$/common/collect/$Sets;
.super Ljava/lang/Object;
.source "$Sets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$Sets$DescendingSet;,
        Lautovalue/shaded/com/google$/common/collect/$Sets$UnmodifiableNavigableSet;,
        Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;,
        Lautovalue/shaded/com/google$/common/collect/$Sets$SubSet;,
        Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;,
        Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;,
        Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSortedSet;,
        Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;,
        Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;,
        Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cartesianProduct(Ljava/util/List;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TB;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .line 1289
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->create(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varargs cartesianProduct([Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Set<",
            "+TB;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1347
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets;->cartesianProduct(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static combinations(Ljava/util/Set;I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;I)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1610
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->indexMap(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p0

    const-string v0, "size"

    .line 1611
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 1612
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "size (%s) must be <= set.size() (%s)"

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/String;II)V

    if-nez p1, :cond_1

    .line 1614
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 1615
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1616
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 1618
    :cond_2
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;

    invoke-direct {v0, p1, p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$5;-><init>(ILautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    return-object v0
.end method

.method public static complementOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 472
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    .line 473
    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 476
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "collection is empty; use the other version of this method"

    .line 475
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 477
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 478
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static complementOf(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 493
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    .line 495
    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    goto :goto_0

    .line 496
    :cond_0
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static difference(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 859
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 860
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$3;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$3;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method static equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1724
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1725
    check-cast p1, Ljava/util/Set;

    .line 1728
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :catch_0
    :cond_2
    return v2
.end method

.method public static filter(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1089
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;

    if-eqz v0, :cond_0

    .line 1092
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;

    .line 1093
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    .line 1094
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;

    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast p0, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0

    .line 1097
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1011
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 1012
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/SortedSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 1014
    :cond_0
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;

    if-eqz v0, :cond_1

    .line 1017
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;

    .line 1018
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    .line 1019
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;

    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast p0, Ljava/util/Set;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;-><init>(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0

    .line 1022
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;-><init>(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/SortedSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1050
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;

    if-eqz v0, :cond_0

    .line 1053
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;

    .line 1054
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->and(Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    .line 1055
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSortedSet;

    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast p0, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0

    .line 1058
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSortedSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method

.method static hashCodeImpl(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)I"
        }
    .end annotation

    .line 1710
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1711
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    not-int v1, v1

    not-int v1, v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;[TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 103
    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static immutableEnumSet(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 119
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumSet;

    if-eqz v0, :cond_0

    .line 120
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumSet;

    return-object p0

    .line 121
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 122
    check-cast p0, Ljava/util/Collection;

    .line 123
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 126
    :cond_1
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 129
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 132
    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 133
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 135
    :cond_3
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static intersection(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 788
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 789
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$2;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$2;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private static makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 501
    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 502
    invoke-virtual {p1, p0}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public static newConcurrentHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newConcurrentHashSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 286
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    .line 287
    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newCopyOnWriteArraySet()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-object v0
.end method

.method public static newCopyOnWriteArraySet(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 452
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 453
    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    .line 454
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 455
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static newEnumSet(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 158
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 159
    invoke-static {p1, p0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object p1
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 219
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/HashSet;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets;->newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 237
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 238
    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 195
    array-length v0, p0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 196
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static newHashSetWithExpectedSize(I)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->capacity(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 423
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newLinkedHashSet()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 324
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/util/LinkedHashSet;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 327
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 328
    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newLinkedHashSetWithExpectedSize(I)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 345
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->capacity(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    invoke-static {p0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static newTreeSet()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public static newTreeSet(Ljava/lang/Iterable;)Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 388
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    .line 389
    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static powerSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1474
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1920
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    if-eqz v0, :cond_0

    .line 1922
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 1931
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1932
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 1934
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1913
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1914
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static subSet(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/collect/$Range;)Ljava/util/NavigableSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;>(",
            "Ljava/util/NavigableSet<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2089
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2090
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 2091
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2092
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2094
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "set is using a custom comparator which is inconsistent with the natural ordering."

    .line 2093
    invoke-static {v0, v3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2097
    :cond_1
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2099
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    .line 2100
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object v3

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 2101
    :goto_1
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    .line 2102
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p1

    sget-object v5, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne p1, v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 2098
    :goto_2
    invoke-interface {p0, v0, v3, v4, v1}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0

    .line 2103
    :cond_4
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2104
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p1

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0

    .line 2105
    :cond_6
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2106
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBoundType()Lautovalue/shaded/com/google$/common/collect/$BoundType;

    move-result-object p1

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$BoundType;->CLOSED:Lautovalue/shaded/com/google$/common/collect/$BoundType;

    if-ne p1, v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0

    .line 2108
    :cond_8
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method public static symmetricDifference(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 927
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 928
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$4;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$4;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1907
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->navigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public static toImmutableEnumSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 148
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableEnumSet()Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/util/Set;Ljava/util/Set;)Lautovalue/shaded/com/google$/common/collect/$Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 689
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 690
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$1;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets$1;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1750
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    if-nez v0, :cond_1

    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$UnmodifiableNavigableSet;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1753
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$UnmodifiableNavigableSet;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method
