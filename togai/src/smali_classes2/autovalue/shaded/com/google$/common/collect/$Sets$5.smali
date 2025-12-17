.class Lautovalue/shaded/com/google$/common/collect/$Sets$5;
.super Ljava/util/AbstractSet;
.source "$Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets;->combinations(Ljava/util/Set;I)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$index:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(ILautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$size:I

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$index:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 1618
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1621
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1622
    check-cast p1, Ljava/util/Set;

    .line 1623
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$size:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$index:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1630
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Sets$5;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$index:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 1697
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v0

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$size:I

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/math/$IntMath;->binomial(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$index:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 1702
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$size:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sets.combinations("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
