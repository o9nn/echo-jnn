.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;
.source "$ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdkBackedSetBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl<",
            "TE;>;)V"
        }
    .end annotation

    .line 847
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;)V

    .line 848
    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    const/4 p1, 0x0

    .line 849
    :goto_0
    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    .line 850
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 856
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    .line 857
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 870
    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 876
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->delegate:Ljava/util/Set;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->distinct:I

    .line 877
    invoke-static {v2, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableSet;-><init>(Ljava/util/Set;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0

    .line 874
    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0

    .line 872
    :cond_1
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method copy()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 865
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;)V

    return-object v0
.end method
