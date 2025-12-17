.class final Lautovalue/shaded/com/google$/common/collect/$TableCollectors;
.super Ljava/lang/Object;
.source "$TableCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$TableCollectors$MutableCell;,
        Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$toImmutableTable$0(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 44
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableTable$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableTable$1()Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;
    .locals 2

    .line 67
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;-><init>(Lautovalue/shaded/com/google$/common/collect/$TableCollectors$1;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableTable$2(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;Ljava/lang/Object;)V
    .locals 0

    .line 71
    invoke-interface {p0, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 72
    invoke-interface {p1, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 73
    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 70
    invoke-virtual {p4, p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method static synthetic lambda$toImmutableTable$3(Ljava/util/function/BinaryOperator;Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;)Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;
    .locals 0

    .line 75
    invoke-virtual {p1, p2, p0}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;->combine(Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;Ljava/util/function/BinaryOperator;)Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toImmutableTable$4(Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;)Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;
    .locals 0

    .line 76
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$ImmutableTableCollectorState;->toTable()Lautovalue/shaded/com/google$/common/collect/$ImmutableTable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toTable$5(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Conflicting values "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " and "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$toTable$6(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lautovalue/shaded/com/google$/common/collect/$Table;Ljava/lang/Object;)V
    .locals 0

    .line 110
    invoke-interface {p0, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 111
    invoke-interface {p1, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 108
    invoke-static {p4, p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors;->mergeTables(Lautovalue/shaded/com/google$/common/collect/$Table;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method static synthetic lambda$toTable$7(Ljava/util/function/BinaryOperator;Lautovalue/shaded/com/google$/common/collect/$Table;Lautovalue/shaded/com/google$/common/collect/$Table;)Lautovalue/shaded/com/google$/common/collect/$Table;
    .locals 3

    .line 115
    invoke-interface {p2}, Lautovalue/shaded/com/google$/common/collect/$Table;->cellSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;

    .line 117
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 116
    invoke-static {p1, v1, v2, v0, p0}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors;->mergeTables(Lautovalue/shaded/com/google$/common/collect/$Table;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static mergeTables(Lautovalue/shaded/com/google$/common/collect/$Table;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
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
            "TR;TC;TV;>;TR;TC;TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)V"
        }
    .end annotation

    .line 185
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    invoke-interface {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    :cond_0
    invoke-interface {p4, v0, p3}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    .line 192
    invoke-interface {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method static toImmutableTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
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
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableTable<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    const-string v0, "rowFunction"

    .line 38
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "columnFunction"

    .line 39
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "valueFunction"

    .line 40
    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda8;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda10;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda10;-><init>()V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda1;-><init>()V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, p2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 2
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
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableTable<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    const-string v0, "rowFunction"

    .line 55
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "columnFunction"

    .line 56
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "valueFunction"

    .line 57
    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mergeFunction"

    .line 58
    invoke-static {p3, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda6;

    invoke-direct {p0, p3}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda7;-><init>()V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, p2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1
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

    .line 100
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p4}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda2;

    invoke-direct {p0, p3}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/BinaryOperator;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p4, v0, p0, p1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1
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

    .line 84
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lautovalue/shaded/com/google$/common/collect/$TableCollectors;->toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method
