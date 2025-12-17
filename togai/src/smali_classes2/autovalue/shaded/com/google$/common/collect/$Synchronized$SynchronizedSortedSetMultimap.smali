.class Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSetMultimap;
.source "$Synchronized.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSortedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSetMultimap<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 867
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSetMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 872
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 879
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 886
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 864
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0

    .line 864
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 893
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 899
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSortedSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 900
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
