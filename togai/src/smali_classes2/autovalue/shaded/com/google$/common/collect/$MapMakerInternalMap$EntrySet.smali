.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$SafeToArraySet;
.source "$MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$SafeToArraySet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    const/4 p1, 0x0

    .line 2755
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$SafeToArraySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 2799
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 2764
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2767
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2768
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 2772
    invoke-virtual {v2, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 2774
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->valueEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 2794
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2759
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntryIterator;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntryIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 2779
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2782
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2783
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 2784
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    .line 2789
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->size()I

    move-result v0

    return v0
.end method
