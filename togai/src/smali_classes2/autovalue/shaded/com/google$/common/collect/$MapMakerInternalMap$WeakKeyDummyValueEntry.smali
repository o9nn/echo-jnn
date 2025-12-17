.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyDummyValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry<",
        "TK;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongValueEntry<",
        "TK;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)V"
        }
    .end annotation

    .line 678
    invoke-direct {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V

    return-void
.end method


# virtual methods
.method copy(Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 690
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;->hash:I

    invoke-direct {v0, p1, v1, v2, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;)V

    return-object v0
.end method

.method public getValue()Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;
    .locals 1

    .line 683
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;->VALUE:Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;->getValue()Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;)V
    .locals 0

    return-void
.end method
