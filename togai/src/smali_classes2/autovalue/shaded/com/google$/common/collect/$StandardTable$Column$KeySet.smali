.class Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$KeySet;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet;
.source "$StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$KeySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 569
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$KeySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 574
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$KeySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$KeySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 579
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$KeySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column$KeySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    .line 584
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->not(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;->removeFromColumnIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result p1

    return p1
.end method
