.class Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;
.super Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;
.source "$Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedAsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMapEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field transient asMapValues:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1352
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1386
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1365
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1367
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->delegate()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapEntries;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->asMapEntrySet:Ljava/util/Set;

    .line 1369
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1370
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1347
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1358
    :try_start_0
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1359
    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-static {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 1377
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->delegate()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMapValues;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;->asMapValues:Ljava/util/Collection;

    .line 1379
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1380
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
