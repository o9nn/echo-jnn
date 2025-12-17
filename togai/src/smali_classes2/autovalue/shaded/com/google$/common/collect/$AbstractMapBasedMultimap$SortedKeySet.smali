.class Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$KeySet;
.source "$AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap<",
        "TK;TV;>.KeySet;",
        "Ljava/util/SortedSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    .line 989
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$KeySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 998
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1003
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 1008
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1013
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method sortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 993
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 1018
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 1023
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$SortedKeySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method
