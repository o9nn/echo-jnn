.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
.source "$MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyDummyValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment<",
        "TK;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment<",
        "TK;>;>;"
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


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;>;II)V"
        }
    .end annotation

    .line 2225
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V

    .line 2219
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$200(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 2217
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2217
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
            "*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 2241
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2251
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2246
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method bridge synthetic self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 1

    .line 2217
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method
