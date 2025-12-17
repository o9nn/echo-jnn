.class Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;
.super Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSet;
.source "$Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedAsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSet<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 931
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 974
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 976
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2;->containsAllImpl(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 983
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 991
    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 992
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 993
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 937
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries$1;

    .line 938
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 998
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1000
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1007
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1013
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1014
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 960
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 962
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 969
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
