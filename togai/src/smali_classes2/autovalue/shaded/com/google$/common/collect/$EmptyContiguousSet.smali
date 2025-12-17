.class final Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;
.super Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;
.source "$EmptyContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ContiguousSet<",
        "TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)V

    return-void
.end method


# virtual methods
.method public asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TC;>;"
        }
    .end annotation

    .line 115
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method createDescendingSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 167
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->reverse()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TC;>;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;->descendingIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 125
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Ljava/util/Set;

    .line 127
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public first()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method headSetImpl(Ljava/lang/Comparable;Z)Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;->headSetImpl(Ljava/lang/Comparable;Z)Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public intersection(Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;)Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ContiguousSet<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TC;>;"
        }
    .end annotation

    .line 94
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public range()Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public range(Lautovalue/shaded/com/google$/common/collect/$BoundType;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 62
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method tailSetImpl(Ljava/lang/Comparable;Z)Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lautovalue/shaded/com/google$/common/collect/$ContiguousSet<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lautovalue/shaded/com/google$/common/collect/$ContiguousSet;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .line 161
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet$SerializedForm;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet;->domain:Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet$SerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;Lautovalue/shaded/com/google$/common/collect/$EmptyContiguousSet$1;)V

    return-object v0
.end method
