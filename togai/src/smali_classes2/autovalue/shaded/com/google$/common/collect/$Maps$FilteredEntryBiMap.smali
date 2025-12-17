.class final Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;
.source "$Maps.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$BiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilteredEntryBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final inverse:Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3146
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    .line 3147
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;

    .line 3148
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$BiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$BiMap;

    move-result-object p1

    invoke-static {p2}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->inversePredicate(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p2

    invoke-direct {v0, p1, p2, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/collect/$BiMap;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    return-void
.end method

.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/collect/$BiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 3153
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    return-void
.end method

.method private static inversePredicate(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 3137
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap$1;-><init>(Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 3163
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(Z)V

    .line 3164
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    return-object v0
.end method

.method synthetic lambda$replaceAll$0$autovalue-shaded-com-google$-common-collect-$Maps$FilteredEntryBiMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 3172
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {p2, p3}, Lautovalue/shaded/com/google$/common/collect/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3173
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 3169
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$BiMap;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;Ljava/util/function/BiFunction;)V

    .line 3170
    invoke-interface {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$BiMap;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method unfiltered()Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3158
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->unfiltered:Ljava/util/Map;

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$BiMap;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 3131
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    .line 3184
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
