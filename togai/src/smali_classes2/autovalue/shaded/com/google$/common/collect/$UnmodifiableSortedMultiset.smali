.class final Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;
.super Lautovalue/shaded/com/google$/common/collect/$Multisets$UnmodifiableMultiset;
.source "$UnmodifiableSortedMultiset.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Multisets$UnmodifiableMultiset<",
        "TE;>;",
        "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMultiset:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$UnmodifiableMultiset;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method createElementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->createElementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 41
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$UnmodifiableMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->descendingMultiset:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->descendingMultiset()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;-><init>(Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;)V

    iput-object p0, v0, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->descendingMultiset:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->descendingMultiset:Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;

    :cond_0
    return-object v0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 56
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$UnmodifiableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->firstEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->headMultiset(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->unmodifiableSortedMultiset(Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public lastEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->lastEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            "TE;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->subMultiset(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object p1

    .line 100
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->unmodifiableSortedMultiset(Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public tailMultiset(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableSortedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->tailMultiset(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->unmodifiableSortedMultiset(Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;

    move-result-object p1

    return-object p1
.end method
