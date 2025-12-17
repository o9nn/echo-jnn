.class final Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
.source "$JdkBackedImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient elementSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final size:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;J)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->delegateMap:Ljava/util/Map;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-wide p3, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->size:J

    return-void
.end method

.method static create(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "+TE;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 39
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 40
    array-length v1, p0

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 42
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 43
    aget-object v4, p0, v0

    .line 44
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 46
    invoke-interface {v4}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    instance-of v4, v4, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    if-nez v4, :cond_0

    .line 49
    invoke-static {v6, v5}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->immutableEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object v4

    aput-object v4, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;

    .line 53
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->asImmutableList([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    invoke-direct {v0, v1, p0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;J)V

    return-object v0
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->delegateMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public elementSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->elementSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$ElementSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-direct {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$ElementSet;-><init>(Ljava/util/List;Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->elementSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->elementSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->entries:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 78
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    iget-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->size:J

    .line 88
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/primitives/$Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
