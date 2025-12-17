.class Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;
.super Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSortedSet;
.source "$Sets.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1165
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1184
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->find(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1209
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->filter(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1204
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1179
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->find(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1226
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1189
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->find(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1214
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->find(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1174
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->find(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1194
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1199
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1221
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 1220
    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1231
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1
.end method

.method unfiltered()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$FilteredNavigableSet;->unfiltered:Ljava/util/Collection;

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method
