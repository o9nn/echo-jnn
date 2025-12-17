.class final Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors;
.super Ljava/lang/Object;
.source "ToPrettyStringCollectors.java"


# direct methods
.method public static synthetic $r8$lambda$GMX4HiFPZkfx8KWQZMqhiH4Cz8w()Ljava/util/LinkedHashSet;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toImmutableList()Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;>;"
        }
    .end annotation

    .line 30
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableSet()Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/auto/value/extension/toprettystring/processor/ToPrettyStringCollectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method
