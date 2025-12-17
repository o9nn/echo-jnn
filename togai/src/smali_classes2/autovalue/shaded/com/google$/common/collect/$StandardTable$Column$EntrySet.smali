.class Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;
.super Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet;
.source "$StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet<",
        "Ljava/util/Map$Entry<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 478
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;Lautovalue/shaded/com/google$/common/collect/$StandardTable$1;)V
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 502
    invoke-static {}, Lautovalue/shaded/com/google$/common/base/$Predicates;->alwaysTrue()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->removeFromColumnIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 507
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 508
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 509
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->access$300(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 497
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 481
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySetIterator;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySetIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;Lautovalue/shaded/com/google$/common/collect/$StandardTable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 516
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 517
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 518
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->access$400(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 525
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->not(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->removeFromColumnIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 487
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 488
    iget-object v3, v3, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
