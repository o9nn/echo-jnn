.class final Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;
.super Ljava/lang/Object;
.source "$CollectCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;,
        Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumSetAccumulator;
    }
.end annotation


# static fields
.field private static final TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "Ljava/lang/Comparable<",
            "*>;>;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_SET:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Rr5wHpoNM5boD4b5K8greFBFLF8()Ljava/util/LinkedHashMap;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda9;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda13;-><init>()V

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda14;-><init>()V

    new-instance v3, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda15;-><init>()V

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 45
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;

    .line 51
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda16;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda17;-><init>()V

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda18;-><init>()V

    new-instance v3, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda19;-><init>()V

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 52
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->TO_IMMUTABLE_SET:Ljava/util/stream/Collector;

    .line 60
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda20;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda21;-><init>()V

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda10;-><init>()V

    new-instance v3, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda12;-><init>()V

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 61
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flatteningToImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 348
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;)V

    .line 354
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;->linkedHashKeys()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda3;-><init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$ListMultimapBuilder;)V

    .line 351
    invoke-static {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda4;-><init>()V

    .line 350
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static flatteningToImmutableSetMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 373
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda63;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda63;-><init>(Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda64;

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda64;-><init>(Ljava/util/function/Function;)V

    .line 379
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder;->linkedHashKeys()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues()Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda65;

    invoke-direct {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda65;-><init>(Lautovalue/shaded/com/google$/common/collect/$MultimapBuilder$SetMultimapBuilder;)V

    .line 376
    invoke-static {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda67;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda67;-><init>()V

    .line 375
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 404
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda44;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda55;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda55;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, p0, p1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$flatteningToImmutableListMultimap$18(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 352
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$flatteningToImmutableListMultimap$19(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    .line 353
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$flatteningToImmutableSetMultimap$21(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$flatteningToImmutableSetMultimap$22(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    .line 378
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$flatteningToMultimap$25(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$Multimap;Ljava/lang/Object;)V
    .locals 0

    .line 410
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 411
    invoke-interface {p2, p0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    .line 412
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/stream/Stream;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda29;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$flatteningToMultimap$26(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 0

    .line 415
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Z

    return-object p0
.end method

.method static synthetic lambda$toImmutableBiMap$10(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 240
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableEnumMap$11(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Multiple values for key: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$toImmutableEnumMap$12()Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;
    .locals 2

    .line 253
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda33;-><init>()V

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableEnumMap$13(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;Ljava/lang/Object;)V
    .locals 1

    .line 258
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    const-string v0, "Null key for input %s"

    invoke-static {p0, v0, p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    .line 259
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Null value for input %s"

    invoke-static {p1, v0, p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 260
    invoke-virtual {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->put(Ljava/lang/Enum;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$toImmutableEnumMap$14(Ljava/util/function/BinaryOperator;)Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;
    .locals 1

    .line 276
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableEnumMap$15(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;Ljava/lang/Object;)V
    .locals 1

    .line 278
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    const-string v0, "Null key for input %s"

    invoke-static {p0, v0, p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    .line 279
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Null value for input %s"

    invoke-static {p1, v0, p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 280
    invoke-virtual {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->put(Ljava/lang/Enum;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$toImmutableListMultimap$17(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 340
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableMap$6(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 182
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableMultiset$1(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;)V
    .locals 0

    .line 149
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method static synthetic lambda$toImmutableMultiset$2(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 0

    .line 151
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toImmutableMultiset$3(Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 0

    .line 154
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toImmutableRangeMap$16(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 326
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;->put(Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSetMultimap$20(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 365
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedMap$7(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 1

    .line 211
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedMap$8(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 212
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedMap$9(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1

    .line 229
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedSet$0(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    .locals 1

    .line 85
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toMultimap$23(Ljava/util/function/Function;Ljava/util/function/Function;Lautovalue/shaded/com/google$/common/collect/$Multimap;Ljava/lang/Object;)V
    .locals 0

    .line 392
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$toMultimap$24(Lautovalue/shaded/com/google$/common/collect/$Multimap;Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 0

    .line 394
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Z

    return-object p0
.end method

.method static synthetic lambda$toMultiset$4(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;)V
    .locals 0

    .line 166
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method static synthetic lambda$toMultiset$5(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 0

    .line 168
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static toImmutableBiMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 236
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda5;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda7;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda7;-><init>()V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda8;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 249
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda23;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda24;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda25;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda25;-><init>()V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda26;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda26;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 271
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda46;

    invoke-direct {v0, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda46;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance p2, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda47;

    invoke-direct {p2, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda47;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda25;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda25;-><init>()V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda26;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda26;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p2, p0, p1, v1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableEnumSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 93
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumSetAccumulator;->TO_IMMUTABLE_ENUM_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableList()Ljava/util/stream/Collector;
    .locals 1
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

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keyFunction"

    .line 336
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "valueFunction"

    .line 337
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda48;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda49;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda49;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda50;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda50;-><init>()V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda51;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda51;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 178
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda57;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda57;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda58;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda59;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda59;-><init>()V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda60;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda60;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 191
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda11;-><init>()V

    .line 195
    invoke-static {p0, p1, p2, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda22;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda22;-><init>()V

    .line 194
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;>;"
        }
    .end annotation

    .line 144
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda52;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda53;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda54;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda54;-><init>()V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda56;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda56;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableRangeMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 322
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda35;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda36;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda37;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda37;-><init>()V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda38;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda38;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableRangeSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/stream/Collector<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TE;>;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSet()Ljava/util/stream/Collector;
    .locals 1
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

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->TO_IMMUTABLE_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSetMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keyFunction"

    .line 361
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "valueFunction"

    .line 362
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda30;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda31;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda32;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda32;-><init>()V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda34;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda34;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 203
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda66;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda66;-><init>(Ljava/util/Comparator;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda68;

    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda68;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda69;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda69;-><init>()V

    new-instance p2, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda70;

    invoke-direct {p2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda70;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    aput-object v3, v1, v2

    invoke-static {v0, p0, p1, p2, v1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 223
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda43;-><init>(Ljava/util/Comparator;)V

    .line 228
    invoke-static {p1, p2, p3, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p0

    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda45;

    invoke-direct {p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda45;-><init>()V

    .line 227
    invoke-static {p0, p1}, Ljava/util/stream/Collectors;->collectingAndThen(Ljava/util/stream/Collector;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableSortedSet(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda39;-><init>(Ljava/util/Comparator;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda40;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda40;-><init>()V

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda41;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda41;-><init>()V

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda42;

    invoke-direct {v2}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda42;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0, v1, v2, v3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 387
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda27;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda28;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda28;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, p0, p1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "M::",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;>(",
            "Ljava/util/function/Function<",
            "-TT;TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda61;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda61;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda62;

    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$$ExternalSyntheticLambda62;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, p0, p1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method
