.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
.source "$MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyWeakValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment<",
        "TK;TV;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final queueForKeys:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final queueForValues:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2155
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V

    .line 2148
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2149
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$400(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 2146
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method static synthetic access$500(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 2146
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2146
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2176
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public getWeakValueReferenceForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2182
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->getValueReference()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    return-object p1
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2212
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2206
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    .line 2207
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public newWeakValueReferenceForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2188
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReferenceImpl;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V

    return-object v0
.end method

.method bridge synthetic self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 1

    .line 2146
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public setWeakValueReferenceForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)V
    .locals 1
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

    .line 2195
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    move-result-object p1

    .line 2199
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->access$700(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    .line 2200
    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->access$702(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    .line 2201
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;->clear()V

    return-void
.end method
