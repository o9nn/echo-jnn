.class abstract Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "$MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;S:",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile count:I

.field final map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;TV;TE;TS;>;II)V"
        }
    .end annotation

    .line 1202
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1200
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    iput p3, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->maxSegmentSize:I

    .line 1205
    invoke-virtual {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    return-void
.end method

.method static isCollected(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;TE;>;>(TE;)Z"
        }
    .end annotation

    .line 1935
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method abstract castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation
.end method

.method clear()V
    .locals 4

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_1

    .line 1769
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->lock()V

    :try_start_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    move v2, v1

    .line 1772
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1773
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1775
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->maybeClearReferenceQueues()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1776
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    iput v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1782
    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1374
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method clearValueForTesting(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)Z"
        }
    .end annotation

    .line 1881
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->lock()V

    :try_start_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1884
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1885
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1888
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1889
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    iget-object v7, v7, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 1891
    invoke-virtual {v7, p1, v6}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1892
    move-object p1, v4

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueEntry;

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueEntry;->getValueReference()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    if-ne p1, p3, :cond_0

    .line 1894
    invoke-virtual {p0, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1895
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v2

    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    .line 1887
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1904
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1905
    throw p1
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2

    :try_start_0
    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1432
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1433
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1438
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->postReadCleanup()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->postReadCleanup()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1439
    throw p1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7

    :try_start_0
    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1451
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 1453
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    :goto_1
    if-eqz v4, :cond_2

    .line 1454
    invoke-virtual {p0, v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->getLiveValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1458
    invoke-virtual {v6}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->valueEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 1467
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 p1, 0x1

    return p1

    .line 1453
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1467
    :cond_3
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->postReadCleanup()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1468
    throw p1
.end method

.method copyEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1230
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    return-object p1
.end method

.method copyForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1300
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-virtual {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    return-object p1
.end method

.method drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1349
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1351
    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1352
    invoke-virtual {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->reclaimKey(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1363
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1365
    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1366
    invoke-virtual {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->reclaimValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method expand()V
    .locals 11

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1532
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    shl-int/lit8 v3, v1, 0x1

    .line 1548
    invoke-virtual {p0, v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 1549
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->threshold:I

    .line 1550
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    .line 1554
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    if-eqz v6, :cond_5

    .line 1557
    invoke-interface {v6}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v7

    .line 1558
    invoke-interface {v6}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_1

    .line 1562
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 1570
    invoke-interface {v7}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 1569
    :cond_2
    invoke-interface {v7}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v7

    goto :goto_1

    .line 1577
    :cond_3
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    .line 1581
    invoke-interface {v6}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    and-int/2addr v7, v4

    .line 1582
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    .line 1583
    invoke-virtual {p0, v6, v8}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->copyEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1585
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 1580
    :goto_3
    invoke-interface {v6}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    iput-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1414
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 1425
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 p1, 0x0

    return-object p1

    .line 1419
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1421
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->postReadCleanup()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 1426
    throw p1
.end method

.method getEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_3

    .line 1388
    invoke-virtual {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->getFirst(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 1389
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    .line 1393
    :cond_0
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1395
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1399
    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    invoke-virtual {v2, p1, v1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1388
    :cond_2
    :goto_1
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method getFirst(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1381
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    return-object p1
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    .line 1259
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getLiveEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1409
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    return-object p1
.end method

.method getLiveValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .line 1944
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1945
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    return-object v1

    .line 1948
    :cond_0
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1950
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    return-object v1

    :cond_1
    return-object p1
.end method

.method getLiveValueForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TV;"
        }
    .end annotation

    .line 1329
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->getLiveValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .line 1264
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getWeakValueReferenceForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1269
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 1238
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->threshold:I

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->threshold:I

    :cond_0
    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method maybeClearReferenceQueues()V
    .locals 0

    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 0

    return-void
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 1234
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method newEntryForTesting(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1310
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p3

    invoke-interface {v0, v1, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    return-object p1
.end method

.method newWeakValueReferenceForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1278
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method postReadCleanup()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1963
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 1964
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->runCleanup()V

    :cond_0
    return-void
.end method

.method preWriteCleanup()V
    .locals 0

    .line 1974
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->runLockedCleanup()V

    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 1472
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->lock()V

    .line 1474
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->preWriteCleanup()V

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 1478
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->expand()V

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1483
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 1484
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1488
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1489
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    iget-object v7, v7, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 1491
    invoke-virtual {v7, p1, v6}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1494
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1498
    invoke-virtual {p0, v4, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1524
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object v5

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object p1

    :cond_2
    :try_start_1
    iget p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1510
    invoke-virtual {p0, v4, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1524
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object p1

    .line 1487
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v4

    goto :goto_0

    :cond_4
    iget p4, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    iget-object p4, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1518
    iget-object p4, p4, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v4

    invoke-interface {p4, v4, p1, p2, v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->newEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1519
    invoke-virtual {p0, p1, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1520
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1524
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1525
    throw p1
.end method

.method reclaimKey(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 1817
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->lock()V

    :try_start_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1821
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr p2, v1

    .line 1822
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_0

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1827
    invoke-virtual {p0, v1, v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v1, v2

    .line 1829
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v2

    .line 1824
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1837
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1838
    throw p1
.end method

.method reclaimValue(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;)Z"
        }
    .end annotation

    .line 1844
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->lock()V

    :try_start_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1848
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1849
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1852
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1853
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    iget-object v7, v7, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 1855
    invoke-virtual {v7, p1, v6}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1856
    move-object p1, v4

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueEntry;

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueEntry;->getValueReference()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    if-ne p1, p3, :cond_0

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1859
    invoke-virtual {p0, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    iget p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    sub-int/2addr p2, v2

    .line 1861
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1871
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v2

    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    .line 1851
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1871
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1872
    throw p1
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1687
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->lock()V

    .line 1689
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->preWriteCleanup()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1693
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1694
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1697
    invoke-interface {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1698
    invoke-interface {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    iget-object v6, v6, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 1700
    invoke-virtual {v6, p1, v5}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1701
    invoke-interface {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1705
    :cond_0
    invoke-static {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->isCollected(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_1
    iget p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1712
    invoke-virtual {p0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p2

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 1714
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1722
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object v4

    .line 1696
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1722
    :cond_3
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1723
    throw p1
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 8

    .line 1727
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->lock()V

    .line 1729
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->preWriteCleanup()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1733
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1734
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1737
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1738
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    iget-object v7, v7, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 1740
    invoke-virtual {v7, p1, v6}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1741
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1744
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->valueEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v5, v2

    goto :goto_1

    .line 1746
    :cond_0
    invoke-static {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->isCollected(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1753
    invoke-virtual {p0, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    iget p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    sub-int/2addr p2, v2

    .line 1755
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1763
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    .line 1736
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1763
    :cond_3
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1764
    throw p1
.end method

.method removeEntryForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1910
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1913
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v0, v2

    .line 1914
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    if-ne v4, p1, :cond_0

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1919
    invoke-virtual {p0, v2, v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v2, v3

    .line 1921
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    return v3

    .line 1916
    :cond_0
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    .line 1801
    invoke-interface {p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 1803
    invoke-virtual {p0, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->copyEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1802
    :goto_1
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    goto :goto_0

    :cond_1
    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    return-object v1
.end method

.method removeFromChainForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1321
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-virtual {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    return-object p1
.end method

.method removeTableEntryForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)Z"
        }
    .end annotation

    .line 1316
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeEntryForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    return p1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 1645
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->lock()V

    .line 1647
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->preWriteCleanup()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1650
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1651
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1654
    invoke-interface {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1655
    invoke-interface {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    iget-object v6, v6, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 1657
    invoke-virtual {v6, p1, v5}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1660
    invoke-interface {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1662
    invoke-static {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->isCollected(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1665
    invoke-virtual {p0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    iget p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    add-int/lit8 p2, p2, -0x1

    .line 1667
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object v4

    :cond_1
    :try_start_1
    iget p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1674
    invoke-virtual {p0, v3, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1681
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object p1

    .line 1653
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1681
    :cond_3
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1682
    throw p1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 1598
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->lock()V

    .line 1600
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->preWriteCleanup()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1603
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1604
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1607
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1608
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    iget-object v7, v7, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 1610
    invoke-virtual {v7, p1, v6}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1613
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1615
    invoke-static {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->isCollected(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1618
    invoke-virtual {p0, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->removeFromChain(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    iget p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    sub-int/2addr p2, v2

    .line 1620
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    :cond_1
    :try_start_1
    iget-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1626
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->valueEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    .line 1628
    invoke-virtual {p0, v4, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1640
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v2

    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    .line 1606
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1640
    :cond_4
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1641
    throw p1
.end method

.method runCleanup()V
    .locals 0

    .line 1978
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->runLockedCleanup()V

    return-void
.end method

.method runLockedCleanup()V
    .locals 2

    .line 1982
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 1985
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1987
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1988
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method abstract self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method setTableEntryForTesting(ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1295
    invoke-virtual {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1225
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    return-void
.end method

.method setValueForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->map:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 1305
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->setValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    return-void
.end method

.method setWeakValueReferenceForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    .line 1288
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .line 1336
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    :try_start_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->unlock()V

    .line 1341
    throw v0

    :cond_0
    :goto_0
    return-void
.end method
