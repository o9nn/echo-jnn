.class public abstract Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMapFauxverideShim;
.source "$ImmutableBiMap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$BiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$SerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMapFauxverideShim<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 372
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMapFauxverideShim;-><init>()V

    return-void
.end method

.method public static builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 121
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;-><init>()V

    return-object v0
.end method

.method public static builderWithExpectedSize(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "expectedSize"

    .line 138
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 139
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$Builder;-><init>(I)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 356
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 357
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 368
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->fromEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 361
    aget-object p0, p0, v0

    .line 362
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p0

    return-object p0

    .line 359
    :cond_1
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 331
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    if-eqz v0, :cond_0

    .line 333
    move-object v0, p0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    .line 336
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 340
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p0

    return-object p0
.end method

.method public static of()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->EMPTY:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->fromEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p4, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->fromEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 100
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p4, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    invoke-static {p6, p7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    .line 99
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->fromEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 111
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    invoke-static {p4, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x3

    invoke-static {p6, p7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    const/4 p0, 0x4

    invoke-static {p8, p9}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, v0, p0

    .line 110
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->fromEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p0

    return-object p0
.end method

.method public static toImmutableBiMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 0
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

    .line 60
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableBiMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method bridge synthetic createValues()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->createValues()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method final createValues()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic inverse()Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->values()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public values()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->values()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->values()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 433
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$SerializedForm;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap$SerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;)V

    return-object v0
.end method
