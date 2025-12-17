.class Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$1;
.super Ljava/lang/Object;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public copyFor(Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic copyFor(Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 0

    .line 1001
    check-cast p2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;

    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$1;->copyFor(Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getEntry()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 1

    .line 1001
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$1;->getEntry()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;

    move-result-object v0

    return-object v0
.end method
