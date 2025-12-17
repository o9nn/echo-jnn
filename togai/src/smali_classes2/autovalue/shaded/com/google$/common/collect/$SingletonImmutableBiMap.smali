.class final Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
.source "$SingletonImmutableBiMap.java"


# annotations
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
.field private final transient inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private transient lazyInverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field final transient singleKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final transient singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;-><init>()V

    .line 42
    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    .line 86
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    .line 91
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/BiConsumer;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic inverse()Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->lazyInverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableBiMap;->lazyInverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    :cond_1
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
