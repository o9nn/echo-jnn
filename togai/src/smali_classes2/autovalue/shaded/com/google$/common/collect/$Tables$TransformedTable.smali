.class Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractTable;
.source "$Tables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractTable<",
        "TR;TC;TV2;>;"
    }
.end annotation


# instance fields
.field final fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV1;>;"
        }
    .end annotation
.end field

.field final function:Lautovalue/shaded/com/google$/common/base/$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Table;Lautovalue/shaded/com/google$/common/base/$Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV1;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV1;TV2;>;)V"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractTable;-><init>()V

    .line 381
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Table;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 382
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Function;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    return-void
.end method


# virtual methods
.method cellFunction()Lautovalue/shaded/com/google$/common/base/$Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV1;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    .line 435
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;)V

    return-object v0
.end method

.method cellIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 446
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->cellFunction()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->transform(Ljava/util/Iterator;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method cellSpliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 451
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->cellFunction()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 404
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->clear()V

    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 431
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 461
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->columnKeySet()Ljava/util/Set;

    move-result-object v0

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
            "TR;TV2;>;>;"
        }
    .end annotation

    .line 483
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$3;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$3;-><init>(Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 490
    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->columnMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 387
    invoke-interface {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method createValues()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 466
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Collections2;->transform(Ljava/util/Collection;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 394
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV2;)TV2;"
        }
    .end annotation

    .line 409
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Lautovalue/shaded/com/google$/common/collect/$Table;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "+TR;+TC;+TV2;>;)V"
        }
    .end annotation

    .line 414
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 419
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 420
    invoke-interface {v1, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 426
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->function:Lautovalue/shaded/com/google$/common/base/$Function;

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 456
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV2;>;>;"
        }
    .end annotation

    .line 471
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$2;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 478
    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;->fromTable:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 399
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->size()I

    move-result v0

    return v0
.end method
