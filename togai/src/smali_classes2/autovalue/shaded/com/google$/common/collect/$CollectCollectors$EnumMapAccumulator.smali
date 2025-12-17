.class Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;
.super Ljava/lang/Object;
.source "$CollectCollectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapAccumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final mergeFunction:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)V"
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->mergeFunction:Ljava/util/function/BinaryOperator;

    return-void
.end method


# virtual methods
.method combine(Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;)Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    return-object p1

    .line 304
    :cond_0
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    if-nez p1, :cond_1

    return-object p0

    .line 307
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;)V

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method put(Ljava/lang/Enum;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->mergeFunction:Ljava/util/function/BinaryOperator;

    .line 298
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/EnumMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method toImmutableMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 313
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    :goto_0
    return-object v0
.end method
