.class final Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;
.super Ljava/util/AbstractSet;
.source "$Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PowerSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final inputSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 1524
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1526
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Too many elements to create power set: %s > 30"

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 1525
    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 1527
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->indexMap(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;->inputSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1552
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1553
    check-cast p1, Ljava/util/Set;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;->inputSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 1554
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1561
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;

    if-eqz v0, :cond_0

    .line 1562
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;->inputSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 1563
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;->inputSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1565
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;->inputSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 1575
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->hashCode()I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;->inputSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1542
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet$1;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;I)V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;->inputSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 1532
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$PowerSet;->inputSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 1580
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "powerSet("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
