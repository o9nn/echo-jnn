.class public abstract Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSetFauxverideShim;
.source "$ImmutableSortedSet.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lautovalue/shaded/com/google$/common/collect/$SortedIterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$SerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSetFauxverideShim<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Lautovalue/shaded/com/google$/common/collect/$SortedIterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final SPLITERATOR_CHARACTERISTICS:I = 0x515


# instance fields
.field final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field transient descendingSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSetFauxverideShim;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method static varargs construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;I[TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 364
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    move-result-object p0

    return-object p0

    .line 366
    :cond_0
    invoke-static {p2, p1}, Lautovalue/shaded/com/google$/common/collect/$ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 367
    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 370
    aget-object v2, p2, v0

    add-int/lit8 v3, v1, -0x1

    .line 371
    aget-object v3, p2, v3

    .line 372
    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 373
    aput-object v2, p2, v1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 376
    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 377
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    .line 378
    invoke-static {p2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 211
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    .line 212
    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 243
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    .line 244
    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 291
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    if-eqz v0, :cond_0

    .line 296
    move-object v0, p1

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    .line 297
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 302
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object p1

    .line 303
    array-length v0, p1

    invoke-static {p0, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 323
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 275
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 262
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    .line 263
    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>([TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 183
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Comparable;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Comparable;

    invoke-static {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOfSorted(Ljava/util/SortedSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 341
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$SortedIterables;->comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object v0

    .line 342
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    .line 343
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    move-result-object p0

    return-object p0

    .line 346
    :cond_0
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    return-object v1
.end method

.method static emptySet(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->NATURAL_EMPTY_SET:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    return-object p0

    .line 87
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static naturalOrder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 408
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 93
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;->NATURAL_EMPTY_SET:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 134
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 147
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    const/4 p0, 0x3

    aput-object p3, v2, p0

    const/4 p0, 0x4

    aput-object p4, v2, p0

    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 161
    array-length v0, p6

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v2, v0, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    .line 162
    aput-object p0, v2, v3

    const/4 p0, 0x1

    .line 163
    aput-object p1, v2, p0

    const/4 p0, 0x2

    .line 164
    aput-object p2, v2, p0

    const/4 p0, 0x3

    .line 165
    aput-object p3, v2, p0

    const/4 p0, 0x4

    .line 166
    aput-object p4, v2, p0

    const/4 p0, 0x5

    .line 167
    aput-object p5, v2, p0

    .line 168
    array-length p0, p6

    invoke-static {p6, v3, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object p0

    invoke-static {p0, v0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 390
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 833
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static reverseOrder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 398
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static toImmutableSortedSet(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableSortedSet(Ljava/util/Comparator;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 584
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 703
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method abstract createDescendingSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract descendingIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->descendingIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->descendingSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    if-nez v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->createDescendingSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->descendingSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    .line 767
    iput-object p0, v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->descendingSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->descendingSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 697
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->descendingIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 624
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->headSet(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method abstract headSetImpl(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 710
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method abstract indexOf(Ljava/lang/Object;)I
.end method

.method public abstract iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 720
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->descendingIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 691
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->descendingIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 736
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 780
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$1;

    .line 781
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->size()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x555

    invoke-direct {v0, p0, v1, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;JI)V

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 641
    invoke-virtual {p0, p1, v0, p2, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 649
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 651
    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(Z)V

    .line 652
    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method abstract subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public tailSet(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 667
    invoke-virtual {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 673
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->tailSet(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method abstract tailSetImpl(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 575
    invoke-static {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .line 838
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
