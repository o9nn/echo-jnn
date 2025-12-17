.class Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;
.source "$Synchronized.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;",
        "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient keys:Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 588
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 723
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v2

    invoke-interface {v2}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    .line 725
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 726
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 677
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->clear()V

    .line 679
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 621
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 623
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 607
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 614
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 616
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 584
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Multimap;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 706
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    .line 708
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 709
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 744
    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 746
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 716
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 630
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 751
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 753
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 600
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 602
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 686
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    .line 688
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 689
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keys()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->keys:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    if-nez v1, :cond_0

    .line 733
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keys()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->multiset(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->keys:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->keys:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 735
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 736
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 637
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 651
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 663
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 665
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
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

    .line 670
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 672
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 657
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 2

    .line 593
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 595
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

    .line 694
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 696
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    .line 698
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 699
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
