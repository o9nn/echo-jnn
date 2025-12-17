.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyWeakValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry<",
        "TK;TV;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;>;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueEntry<",
        "TK;TV;",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 848
    invoke-direct {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V

    .line 844
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->unsetWeakValueReference()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    return-void
.end method

.method static synthetic access$700(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 0

    .line 840
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    return-object p0
.end method

.method static synthetic access$702(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 0

    .line 840
    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    return-object p1
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    .line 868
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;->clear()V

    return-void
.end method

.method copy(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 860
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;

    .line 861
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->hash:I

    invoke-direct {v0, p1, v1, v2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;)V

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    .line 862
    invoke-interface {p1, p2, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    iput-object p1, v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    .line 853
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueReference()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method

.method setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    .line 873
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReferenceImpl;

    invoke-direct {v1, p2, p1, p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;->valueReference:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    .line 874
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;->clear()V

    return-void
.end method
