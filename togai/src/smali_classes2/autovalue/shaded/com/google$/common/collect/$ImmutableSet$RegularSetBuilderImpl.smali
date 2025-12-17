.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;
.source "$ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularSetBuilderImpl"
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
.field private expandTableThreshold:I

.field private hashCode:I

.field private hashTable:[Ljava/lang/Object;

.field private maxRunBeforeFallback:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .line 760
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;-><init>(I)V

    .line 761
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->chooseTableSize(I)I

    move-result p1

    .line 762
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 763
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->access$000(I)I

    move-result v0

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    const-wide v0, 0x3fe6666666666666L    # 0.7

    int-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl<",
            "TE;>;)V"
        }
    .end annotation

    .line 768
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;)V

    .line 769
    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 770
    iget v0, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 771
    iget v0, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 772
    iget p1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 786
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 788
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->smear(I)I

    move-result v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 789
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v3, v1

    :goto_0
    sub-int v4, v3, v1

    iget v5, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    if-ge v4, v5, :cond_2

    and-int v4, v3, v2

    iget-object v5, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 792
    aget-object v5, v5, v4

    if-nez v5, :cond_0

    .line 794
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 795
    aput-object p1, v1, v4

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    add-int/2addr p1, v0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    .line 797
    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->ensureTableCapacity(I)V

    return-object p0

    .line 799
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 804
    :cond_2
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;)V

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 825
    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->distinct:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 832
    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->distinct:I

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 833
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    goto :goto_0

    .line 834
    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 835
    :goto_0
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSet;

    iget v3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    iget-object v4, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v5, v4

    sub-int/2addr v5, v1

    invoke-direct {v2, v0, v3, v4, v5}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    return-object v2

    .line 829
    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0

    .line 827
    :cond_2
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

    .line 809
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;)V

    return-object v0
.end method

.method ensureTableCapacity(I)V
    .locals 4

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 776
    array-length v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_0

    .line 777
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    .line 778
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 779
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->access$000(I)I

    move-result v0

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    const-wide v0, 0x3fe6666666666666L    # 0.7

    int-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    :cond_0
    return-void
.end method

.method review()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 814
    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->chooseTableSize(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 815
    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 816
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 817
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->access$000(I)I

    move-result v1

    iput v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    const-wide v1, 0x3fe6666666666666L    # 0.7

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v0, v3

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 820
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->hashFloodingDetected([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method
