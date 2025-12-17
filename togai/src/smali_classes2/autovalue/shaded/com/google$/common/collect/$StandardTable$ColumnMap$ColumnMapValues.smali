.class Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$Values;
.source "$StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnMapValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$Values<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    .line 946
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$Values;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    .line 951
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 952
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    .line 953
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->access$900(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 962
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    .line 964
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    .line 965
    iget-object v3, v3, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-virtual {v3, v2}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    .line 966
    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->access$900(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 975
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    .line 977
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    .line 978
    iget-object v3, v3, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-virtual {v3, v2}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap$ColumnMapValues;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    .line 979
    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->access$900(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
