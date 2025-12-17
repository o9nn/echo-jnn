.class final Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;
.super Lautovalue/shaded/com/google$/common/collect/$ForwardingCollection;
.source "$Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ForwardingCollection<",
        "Ljava/util/List<",
        "TE;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient axes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final transient delegate:Lautovalue/shaded/com/google$/common/collect/$CartesianList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$CartesianList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$CartesianList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;>;",
            "Lautovalue/shaded/com/google$/common/collect/$CartesianList<",
            "TE;>;)V"
        }
    .end annotation

    .line 1385
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingCollection;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->axes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->delegate:Lautovalue/shaded/com/google$/common/collect/$CartesianList;

    return-void
.end method

.method static create(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TE;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1356
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;-><init>(I)V

    .line 1357
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1358
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    .line 1359
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1360
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 1362
    :cond_0
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    goto :goto_0

    .line 1364
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    .line 1365
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    .line 1382
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$CartesianList;

    invoke-direct {v2, v0}, Lautovalue/shaded/com/google$/common/collect/$CartesianList;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    invoke-direct {v1, p0, v2}, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$CartesianList;)V

    return-object v1
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1397
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1400
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 1401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->axes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 1405
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->axes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 1406
    invoke-virtual {v3, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    invoke-virtual {v3, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1350
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->delegate:Lautovalue/shaded/com/google$/common/collect/$CartesianList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1418
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;

    if-eqz v0, :cond_0

    .line 1419
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->axes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 1420
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->axes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1422
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 6

    .line 1431
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->axes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 1432
    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    not-int v0, v0

    not-int v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->axes:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 1438
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    mul-int/lit8 v1, v1, 0x1f

    .line 1439
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$CartesianSet;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/2addr v4, v3

    add-int/2addr v1, v4

    not-int v1, v1

    not-int v1, v1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v0

    not-int v0, v1

    not-int v0, v0

    return v0
.end method
