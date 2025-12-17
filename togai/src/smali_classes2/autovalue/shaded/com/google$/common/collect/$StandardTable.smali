.class Lautovalue/shaded/com/google$/common/collect/$StandardTable;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractTable;
.source "$StandardTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;,
        Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;,
        Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;,
        Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeySet;,
        Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;,
        Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row;,
        Lautovalue/shaded/com/google$/common/collect/$StandardTable$CellIterator;,
        Lautovalue/shaded/com/google$/common/collect/$StandardTable$TableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractTable<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final backingMap:Ljava/util/Map;
    .annotation runtime Lautovalue/shaded/com/google$/common/collect/$GwtTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient columnKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation
.end field

.field private transient columnMap:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$StandardTable<",
            "TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field

.field final factory:Lautovalue/shaded/com/google$/common/base/$Supplier;
    .annotation runtime Lautovalue/shaded/com/google$/common/collect/$GwtTransient;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private transient rowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractTable;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    return-void
.end method

.method static synthetic access$300(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->removeColumn(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 185
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getOrCreate(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 133
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 135
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/base/$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 136
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$cellSpliterator$0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;
    .locals 1

    .line 274
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 273
    invoke-static {p0, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$cellSpliterator$1(Ljava/util/Map$Entry;)Ljava/util/Spliterator;
    .locals 2

    .line 271
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map$Entry;)V

    .line 270
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method private removeColumn(Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 170
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 171
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 191
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method cellIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 232
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$CellIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$CellIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Lautovalue/shaded/com/google$/common/collect/$StandardTable$1;)V

    return-object v0
.end method

.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 227
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method cellSpliterator()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 268
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$StandardTable$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$$ExternalSyntheticLambda0;-><init>()V

    .line 276
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->size()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x41

    .line 267
    invoke-static {v0, v1, v4, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 129
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 422
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Column;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->columnKeySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Lautovalue/shaded/com/google$/common/collect/$StandardTable$1;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->columnKeySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->columnMap:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    if-nez v0, :cond_0

    .line 835
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Lautovalue/shaded/com/google$/common/collect/$StandardTable$1;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->columnMap:Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnMap;

    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 80
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$AbstractTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 88
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 89
    invoke-static {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 98
    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 103
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractTable;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method createColumnKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation

    .line 712
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$ColumnKeyIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Lautovalue/shaded/com/google$/common/collect/$StandardTable$1;)V

    return-object v0
.end method

.method createRowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 760
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$RowMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$AbstractTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 113
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .line 144
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->getOrCreate(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 156
    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    return-object v0

    .line 160
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 161
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 162
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p2

    :cond_3
    :goto_0
    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 281
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable$Row;-><init>(Lautovalue/shaded/com/google$/common/collect/$StandardTable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->rowMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->createRowMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->rowMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;->backingMap:Ljava/util/Map;

    .line 119
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 120
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 748
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
