.class Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;
.super Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedCollection;
.source "$Synchronized.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$Multiset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedCollection<",
        "TE;>;",
        "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 483
    invoke-direct {p0, p1, p2, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$Synchronized$1;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->add(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 502
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2

    .line 493
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 488
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 530
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    .line 532
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 533
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 540
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    .line 542
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 543
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

    .line 551
    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    invoke-interface {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 553
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 558
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 560
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 2

    .line 507
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->remove(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 509
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->setCount(Ljava/lang/Object;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 516
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized$SynchronizedMultiset;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 523
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
