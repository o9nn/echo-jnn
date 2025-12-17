.class public interface abstract Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
.super Ljava/lang/Object;
.source "$SortedMultiset.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$SortedMultisetBridge;
.implements Lautovalue/shaded/com/google$/common/collect/$SortedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$SortedMultisetBridge<",
        "TE;>;",
        "Lautovalue/shaded/com/google$/common/collect/$SortedIterable<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract comparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end method

.method public abstract descendingMultiset()Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract elementSet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 44
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 44
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract firstEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract headMultiset(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract lastEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract pollFirstEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract pollLastEntry()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract subMultiset(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
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
.end method

.method public abstract tailMultiset(Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$BoundType;)Lautovalue/shaded/com/google$/common/collect/$SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lautovalue/shaded/com/google$/common/collect/$BoundType;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method
