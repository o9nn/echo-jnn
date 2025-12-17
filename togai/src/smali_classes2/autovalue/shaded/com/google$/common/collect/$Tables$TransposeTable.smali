.class Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractTable;
.source "$Tables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposeTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractTable<",
        "TC;TR;TV;>;"
    }
.end annotation


# static fields
.field private static final TRANSPOSE_CELL:Lautovalue/shaded/com/google$/common/base/$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "***>;",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "***>;>;"
        }
    .end annotation
.end field


# instance fields
.field final original:Lautovalue/shaded/com/google$/common/collect/$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 281
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable$1;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable$1;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->TRANSPOSE_CELL:Lautovalue/shaded/com/google$/common/base/$Function;

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Table;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractTable;-><init>()V

    .line 192
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Table;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    return-void
.end method


# virtual methods
.method cellIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TC;TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 292
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->TRANSPOSE_CELL:Lautovalue/shaded/com/google$/common/base/$Function;

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
            "TC;TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 298
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->TRANSPOSE_CELL:Lautovalue/shaded/com/google$/common/base/$Function;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 197
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->clear()V

    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 202
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 207
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 212
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 217
    invoke-interface {v0, p2, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 222
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->containsRow(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 227
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->containsColumn(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 232
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 237
    invoke-interface {v0, p2, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TR;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 242
    invoke-interface {v0, p2, p1, p3}, Lautovalue/shaded/com/google$/common/collect/$Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lautovalue/shaded/com/google$/common/collect/$Table;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "+TC;+TR;+TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 247
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Tables;->transpose(Lautovalue/shaded/com/google$/common/collect/$Table;)Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object p1

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->putAll(Lautovalue/shaded/com/google$/common/collect/$Table;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 252
    invoke-interface {v0, p2, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 257
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 262
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 267
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 272
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->size()I

    move-result v0

    return v0
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 277
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
