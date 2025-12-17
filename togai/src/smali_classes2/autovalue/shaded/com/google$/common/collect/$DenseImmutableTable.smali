.class final Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;
.super Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;
.source "$DenseImmutableTable.java"


# annotations
.annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/$Immutable;
    containerOf = {
        "R",
        "C",
        "V"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ColumnMap;,
        Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$RowMap;,
        Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Column;,
        Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$Row;,
        Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ImmutableArrayMap;
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
        "Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private final cellColumnIndices:[I

.field private final cellRowIndices:[I

.field private final columnCounts:[I

.field private final columnKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TC;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final rowCounts:[I

.field private final rowKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rowMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TR;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final values:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TR;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableTable;-><init>()V

    .line 55
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->size()I

    move-result v0

    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$Maps;->indexMap(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p2

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 58
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/collect/$Maps;->indexMap(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p3

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 59
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowCounts:[I

    .line 60
    invoke-virtual {p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnCounts:[I

    .line 61
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result p2

    new-array p2, p2, [I

    .line 62
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result p3

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 64
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    .line 65
    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    .line 66
    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 67
    invoke-virtual {v4, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 68
    invoke-virtual {v5, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 69
    aget-object v6, v6, v4

    aget-object v6, v6, v5

    .line 70
    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v2, v3, v6, v7}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->checkNoDuplicate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 71
    aget-object v2, v2, v4

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v5

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowCounts:[I

    .line 72
    aget v2, v1, v4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnCounts:[I

    .line 73
    aget v2, v1, v5

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    .line 74
    aput v4, p2, v0

    .line 75
    aput v5, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellRowIndices:[I

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellColumnIndices:[I

    .line 79
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$RowMap;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$RowMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$1;)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 80
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ColumnMap;

    invoke-direct {p1, p0, p2}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$ColumnMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable$1;)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-void
.end method

.method static synthetic access$200(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)[I
    .locals 0

    .line 27
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowCounts:[I

    return-object p0
.end method

.method static synthetic access$300(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object p0
.end method

.method static synthetic access$400(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)[[Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->values:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)[I
    .locals 0

    .line 27
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnCounts:[I

    return-object p0
.end method

.method static synthetic access$600(Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object p0
.end method


# virtual methods
.method public columnMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 236
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method createSerializedForm()Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellRowIndices:[I

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellColumnIndices:[I

    .line 275
    invoke-static {p0, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;->create(Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;[I[I)Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$SerializedForm;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 248
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnKeyToIndex:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 249
    invoke-virtual {v0, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 250
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method getCell(I)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellRowIndices:[I

    .line 260
    aget v0, v0, p1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellColumnIndices:[I

    .line 261
    aget p1, v1, p1

    .line 262
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 263
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->columnKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 264
    aget-object v0, v3, v0

    aget-object p1, v0, p1

    .line 265
    invoke-static {v1, v2, p1}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    move-result-object p1

    return-object p1
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->values:[[Ljava/lang/Object;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellRowIndices:[I

    .line 270
    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellColumnIndices:[I

    aget p1, v1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public rowMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowMap:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 243
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->rowMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$DenseImmutableTable;->cellRowIndices:[I

    .line 255
    array-length v0, v0

    return v0
.end method
