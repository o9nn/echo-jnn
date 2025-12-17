.class final Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
.source "$JdkBackedImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap$InverseEntries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final backwardDelegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final forwardDelegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->forwardDelegate:Ljava/util/Map;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->backwardDelegate:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 0

    .line 31
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p0
.end method

.method static create(I[Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 35
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    .line 37
    aget-object v3, p1, v2

    invoke-static {v3}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;->makeImmutable(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    move-result-object v3

    .line 38
    aput-object v3, p1, v2

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "="

    if-nez v4, :cond_1

    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v2

    const-string/jumbo v0, "value"

    invoke-static {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->conflictException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 41
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v2

    const-string v0, "key"

    invoke-static {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->conflictException(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 48
    :cond_2
    invoke-static {p1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    .line 49
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;

    invoke-direct {p1, p0, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method createEntrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 109
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method createKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapKeySet;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapKeySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->forwardDelegate:Ljava/util/Map;

    .line 104
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic inverse()Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap$InverseEntries;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap$InverseEntries;-><init>(Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap$1;)V

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->backwardDelegate:Ljava/util/Map;

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->forwardDelegate:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;

    iput-object p0, v0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;

    :cond_0
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 65
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    return v0
.end method
