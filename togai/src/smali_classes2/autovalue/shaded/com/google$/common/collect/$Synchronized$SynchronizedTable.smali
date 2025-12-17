.class final Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;
.super Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;
.source "$Synchronized.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;",
        "Lautovalue/shaded/com/google$/common/collect/$Table<",
        "TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Table;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1984
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 2086
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2087
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2088
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 2044
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2045
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->clear()V

    .line 2046
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 2079
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2080
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2081
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2101
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public columnMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 2130
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2133
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->columnMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable$2;

    invoke-direct {v2, p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;)V

    .line 2132
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    .line 2131
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1995
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1996
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1997
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 2

    .line 2009
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2010
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->containsColumn(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2011
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 2

    .line 2002
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2003
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->containsRow(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2004
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 2016
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2017
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2018
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method delegate()Lautovalue/shaded/com/google$/common/collect/$Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 1990
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Table;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1980
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2156
    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 2158
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2023
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2024
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2025
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 2146
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2147
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 2030
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2031
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2032
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2052
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2053
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Lautovalue/shaded/com/google$/common/collect/$Table;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 2058
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2059
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->putAll(Lautovalue/shaded/com/google$/common/collect/$Table;)V

    .line 2060
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2065
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2066
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2067
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 2072
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2073
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2074
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 2093
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2094
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->rowKeySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2095
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rowMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 2114
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2117
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->rowMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable$1;

    invoke-direct {v2, p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;)V

    .line 2116
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    .line 2115
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 2037
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2038
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2039
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2107
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2108
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->delegate()Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
