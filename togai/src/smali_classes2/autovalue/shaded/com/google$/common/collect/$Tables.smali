.class public final Lautovalue/shaded/com/google$/common/collect/$Tables;
.super Ljava/lang/Object;
.source "$Tables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableRowSortedMap;,
        Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableTable;,
        Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;,
        Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;,
        Lautovalue/shaded/com/google$/common/collect/$Tables$AbstractCell;,
        Lautovalue/shaded/com/google$/common/collect/$Tables$ImmutableCell;
    }
.end annotation


# static fields
.field private static final UNMODIFIABLE_WRAPPER:Lautovalue/shaded/com/google$/common/base/$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "+",
            "Ljava/util/Map<",
            "**>;+",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 644
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$1;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$Tables$1;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$Tables;->UNMODIFIABLE_WRAPPER:Lautovalue/shaded/com/google$/common/base/$Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lautovalue/shaded/com/google$/common/base/$Function;
    .locals 1

    .line 52
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Tables;->unmodifiableWrapper()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v0

    return-object v0
.end method

.method static equalsImpl(Lautovalue/shaded/com/google$/common/collect/$Table;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "***>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 688
    :cond_0
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Table;

    if-eqz v0, :cond_1

    .line 689
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Table;

    .line 690
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Table;->cellSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Table;->cellSet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Table$Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 109
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$ImmutableCell;

    invoke-direct {v0, p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Tables$ImmutableCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newCustomTable(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)Lautovalue/shaded/com/google$/common/collect/$Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 343
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(Z)V

    .line 344
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$StandardTable;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$StandardTable;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)V

    return-object v0
.end method

.method public static synchronizedTable(Lautovalue/shaded/com/google$/common/collect/$Table;)Lautovalue/shaded/com/google$/common/collect/$Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 682
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Synchronized;->table(Lautovalue/shaded/com/google$/common/collect/$Table;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$Table;

    move-result-object p0

    return-object p0
.end method

.method public static toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "I::",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;",
            "Ljava/util/function/Supplier<",
            "TI;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TI;>;"
        }
    .end annotation

    .line 94
    invoke-static {p0, p1, p2, p3, p4}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors;->toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "I::",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/Supplier<",
            "TI;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TI;>;"
        }
    .end annotation

    .line 71
    invoke-static {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors;->toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static transformValues(Lautovalue/shaded/com/google$/common/collect/$Table;Lautovalue/shaded/com/google$/common/base/$Function;)Lautovalue/shaded/com/google$/common/collect/$Table;
    .locals 1
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
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV1;>;",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "-TV1;TV2;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    .line 373
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransformedTable;-><init>(Lautovalue/shaded/com/google$/common/collect/$Table;Lautovalue/shaded/com/google$/common/base/$Function;)V

    return-object v0
.end method

.method public static transpose(Lautovalue/shaded/com/google$/common/collect/$Table;)Lautovalue/shaded/com/google$/common/collect/$Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TC;TR;TV;>;"
        }
    .end annotation

    .line 183
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;

    if-eqz v0, :cond_0

    .line 184
    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;

    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;->original:Lautovalue/shaded/com/google$/common/collect/$Table;

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Tables$TransposeTable;-><init>(Lautovalue/shaded/com/google$/common/collect/$Table;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static unmodifiableRowSortedTable(Lautovalue/shaded/com/google$/common/collect/$RowSortedTable;)Lautovalue/shaded/com/google$/common/collect/$RowSortedTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$RowSortedTable<",
            "TR;+TC;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$RowSortedTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 610
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableRowSortedMap;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableRowSortedMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$RowSortedTable;)V

    return-object v0
.end method

.method public static unmodifiableTable(Lautovalue/shaded/com/google$/common/collect/$Table;)Lautovalue/shaded/com/google$/common/collect/$Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "+TR;+TC;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 508
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableTable;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Tables$UnmodifiableTable;-><init>(Lautovalue/shaded/com/google$/common/collect/$Table;)V

    return-object v0
.end method

.method private static unmodifiableWrapper()Lautovalue/shaded/com/google$/common/base/$Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/base/$Function<",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$Tables;->UNMODIFIABLE_WRAPPER:Lautovalue/shaded/com/google$/common/base/$Function;

    return-object v0
.end method
