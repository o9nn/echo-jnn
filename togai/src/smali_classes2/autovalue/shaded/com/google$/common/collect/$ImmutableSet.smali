.class public abstract Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
.source "$ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$JdkBackedSetBuilderImpl;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Indexed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final CUTOFF:I = 0x2ccccccc

.field private static final DESIRED_LOAD_FACTOR:D = 0.7

.field static final HASH_FLOODING_FPP:D = 0.001

.field static final MAX_RUN_MULTIPLIER:I = 0xd

.field static final MAX_TABLE_SIZE:I = 0x40000000

.field static final SPLITERATOR_CHARACTERISTICS:I = 0x511


# instance fields
.field private transient asList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 53
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->maxRunBeforeFallback(I)I

    move-result p0

    return p0
.end method

.method public static builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 419
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method public static builderWithExpectedSize(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "expectedSize"

    .line 436
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 437
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;-><init>(I)V

    return-object v0
.end method

.method static chooseTableSize(I)I
    .locals 5

    const/4 v0, 0x2

    .line 643
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    const/4 v1, 0x1

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    .line 647
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/2addr v0, v1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string p0, "collection too large"

    .line 655
    invoke-static {v1, p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return v0
.end method

.method private static varargs construct(II[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(II[",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    .line 196
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;

    invoke-direct {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$RegularSetBuilderImpl;-><init>(I)V

    :goto_0
    if-ge v0, p0, :cond_0

    .line 199
    aget-object p1, p2, v0

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 200
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;->review()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SetBuilderImpl;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 193
    :cond_1
    aget-object p0, p2, v0

    .line 194
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 190
    :cond_2
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method private static varargs constructUnknownDuplication(I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 165
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 169
    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/math/$IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v0

    const/4 v1, 0x4

    .line 167
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 165
    invoke-static {p0, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->construct(II[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 255
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 256
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    goto :goto_0

    .line 257
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOf(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 224
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 226
    move-object v0, p0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 227
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 230
    :cond_0
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    .line 231
    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->copyOfEnumSet(Ljava/util/EnumSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 233
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 234
    instance-of p0, p0, Ljava/util/Set;

    if-eqz p0, :cond_2

    .line 236
    array-length p0, v0

    array-length v1, v0

    invoke-static {p0, v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->construct(II[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 238
    :cond_2
    array-length p0, v0

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->constructUnknownDuplication(I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 268
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 271
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 272
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 273
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 275
    :cond_1
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 287
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 293
    array-length v0, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->constructUnknownDuplication(I[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 291
    aget-object p0, p0, v0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 289
    :cond_1
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method private static copyOfEnumSet(Ljava/util/EnumSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 0

    .line 299
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method static hashFloodingDetected([Ljava/lang/Object;)Z
    .locals 8

    .line 698
    array-length v0, p0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->maxRunBeforeFallback(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 702
    :cond_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    .line 703
    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_0

    return v4

    .line 712
    :cond_2
    :goto_0
    array-length v3, p0

    sub-int/2addr v3, v4

    :goto_1
    if-le v3, v2, :cond_5

    .line 713
    aget-object v5, p0, v3

    if-nez v5, :cond_3

    goto :goto_2

    .line 716
    :cond_3
    array-length v5, p0

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    add-int/2addr v5, v2

    if-le v5, v0, :cond_4

    return v4

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 723
    :cond_5
    :goto_2
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v4

    :goto_3
    add-int v5, v2, v0

    if-gt v5, v3, :cond_8

    move v6, v1

    :goto_4
    if-ge v6, v0, :cond_7

    add-int v7, v2, v6

    .line 727
    aget-object v7, p0, v7

    if-nez v7, :cond_6

    move v2, v5

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    return v4

    :cond_8
    return v1
.end method

.method private static maxRunBeforeFallback(I)I
    .locals 1

    .line 742
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/math/$IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result p0

    mul-int/lit8 p0, p0, 0xd

    return p0
.end method

.method public static of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSet;->EMPTY:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 93
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->construct(II[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 102
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->construct(II[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 111
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->construct(II[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 120
    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->construct(II[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 134
    array-length v0, p6

    const v1, 0x7ffffff9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string/jumbo v1, "the total number of elements must fit in an int"

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 137
    array-length v0, p6

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v4, v0, [Ljava/lang/Object;

    .line 138
    aput-object p0, v4, v3

    .line 139
    aput-object p1, v4, v2

    const/4 p0, 0x2

    .line 140
    aput-object p2, v4, p0

    const/4 p0, 0x3

    .line 141
    aput-object p3, v4, p0

    const/4 p0, 0x4

    .line 142
    aput-object p4, v4, p0

    const/4 p0, 0x5

    .line 143
    aput-object p5, v4, p0

    .line 144
    array-length p0, p6

    invoke-static {p6, v3, v4, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    invoke-static {v0, v0, v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->construct(II[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method static rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 6

    .line 442
    new-array v0, p0, [Ljava/lang/Object;

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 445
    aget-object v2, p1, v1

    .line 446
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->smear(I)I

    move-result v3

    :goto_1
    and-int v4, v3, p0

    .line 449
    aget-object v5, v0, v4

    if-nez v5, :cond_0

    .line 450
    aput-object v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static toImmutableSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableSet()Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->asList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    if-nez v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->createAsList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->asList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    :cond_0
    return-object v0
.end method

.method createAsList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 342
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableAsList;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 314
    :cond_0
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    .line 316
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 320
    :cond_1
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 325
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 411
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
