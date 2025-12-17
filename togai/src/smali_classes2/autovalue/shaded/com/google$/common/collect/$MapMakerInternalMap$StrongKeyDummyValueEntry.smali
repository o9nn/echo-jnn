.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractStrongKeyEntry;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyDummyValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractStrongKeyEntry<",
        "TK;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongValueEntry<",
        "TK;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)V"
        }
    .end annotation

    .line 574
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractStrongKeyEntry;-><init>(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V

    return-void
.end method


# virtual methods
.method copy(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 585
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;->key:Ljava/lang/Object;

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;->hash:I

    invoke-direct {v0, v1, v2, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;-><init>(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;)V

    return-object v0
.end method

.method public getValue()Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;
    .locals 1

    .line 579
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;->VALUE:Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 570
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;->getValue()Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;)V
    .locals 0

    return-void
.end method
