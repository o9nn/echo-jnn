.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
.source "$MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyStrongValueSegment"
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
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment<",
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


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2115
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)V

    .line 2108
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$300(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 2106
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2106
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2131
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2141
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2136
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method bridge synthetic self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 1

    .line 2106
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;->self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method
