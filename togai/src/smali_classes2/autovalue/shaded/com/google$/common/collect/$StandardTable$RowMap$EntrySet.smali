.class Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap$EntrySet;
.super Lautovalue/shaded/com/google$/common/collect/$StandardTable$TableSet;
.source "$StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$StandardTable<",
        "TR;TC;TV;>.TableSet<",
        "Ljava/util/Map$Entry<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;)V
    .locals 1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;

    .line 788
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$TableSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Lautovalue/shaded/com/google$/common/collect/$StandardTable$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 808
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 809
    check-cast p1, Ljava/util/Map$Entry;

    .line 810
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 812
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;

    .line 791
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 792
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap$EntrySet$1;

    invoke-direct {v1, p0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap$EntrySet$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap$EntrySet;)V

    .line 791
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->asMapEntryIterator(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 819
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 820
    check-cast p1, Ljava/util/Map$Entry;

    .line 821
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 823
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap$EntrySet;->this$1:Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;

    .line 803
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
