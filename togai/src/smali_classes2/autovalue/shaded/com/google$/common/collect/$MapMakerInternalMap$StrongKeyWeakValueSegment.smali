.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
.source "$MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyWeakValueSegment"
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
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
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
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2027
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V

    .line 2020
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$100(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 2018
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2018
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2043
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

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
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2049
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;->getValueReference()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    return-object p1
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    .line 2078
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    .line 2073
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

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
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2055
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReferenceImpl;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V

    return-object v0
.end method

.method bridge synthetic self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 1

    .line 2018
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment<",
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

    .line 2062
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    .line 2066
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;->access$600(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    .line 2067
    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;->access$602(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    .line 2068
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;->clear()V

    return-void
.end method
