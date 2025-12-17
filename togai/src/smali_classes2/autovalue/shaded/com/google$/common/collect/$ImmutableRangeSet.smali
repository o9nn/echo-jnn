.class public final Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;
.source "$ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$SerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSetSerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$ComplementRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient complement:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final transient ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    .line 54
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->EMPTY:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    .line 56
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    .line 57
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v1

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ALL:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    return-void
.end method

.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method

.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->complement:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 0

    .line 50
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p0
.end method

.method static all()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ALL:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    return-object v0
.end method

.method public static builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 715
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$RangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p0

    return-object p0

    .line 103
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    invoke-interface {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$RangeSet;->encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->all()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p0

    return-object p0

    .line 107
    :cond_1
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    if-eqz v0, :cond_2

    .line 108
    move-object v0, p0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    .line 109
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 113
    :cond_2
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$RangeSet;->asRanges()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method

.method private intersectRanges(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 427
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 429
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->span()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object p1

    .line 434
    :cond_1
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 438
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 436
    invoke-static {v0, v1, v2, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$SortedLists;->binarySearch(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 447
    :goto_0
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 451
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v2

    iget-object v3, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;

    sget-object v5, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 449
    invoke-static {v1, v2, v3, v4, v5}, Lautovalue/shaded/com/google$/common/collect/$SortedLists;->binarySearch(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Comparable;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;)I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 456
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v1

    :goto_1
    sub-int/2addr v1, v0

    if-nez v1, :cond_4

    .line 460
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1

    .line 462
    :cond_4
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;IILautovalue/shaded/com/google$/common/collect/$Range;)V

    return-object v2

    .line 428
    :cond_5
    :goto_2
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public static of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->EMPTY:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    return-object v0
.end method

.method public static of(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->all()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p0

    return-object p0

    .line 88
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method

.method public static toImmutableRangeSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/stream/Collector<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TE;>;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableRangeSet()Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static unionOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 137
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->create(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->copyOf(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public asDescendingSetOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 302
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->reverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->rangeLexOrdering()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->reverse()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asDescendingSetOfRanges()Ljava/util/Set;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->asDescendingSetOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 294
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->rangeLexOrdering()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asRanges()Ljava/util/Set;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->asRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asSet(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 520
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object p1

    return-object p1

    .line 524
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->span()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->canonical(Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasLowerBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 530
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 532
    :try_start_0
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;->maxValue()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 539
    :cond_1
    :goto_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$AsSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;Lautovalue/shaded/com/google$/common/collect/$DiscreteDomain;)V

    return-object v0

    .line 528
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 48
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->complement:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 370
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->all()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->complement:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    return-object v0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 372
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->complement:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    return-object v0

    .line 375
    :cond_2
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$ComplementRanges;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$ComplementRanges;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;)V

    .line 376
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    invoke-direct {v1, v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;)V

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->complement:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    return-object v1
.end method

.method public bridge synthetic complement()Lautovalue/shaded/com/google$/common/collect/$RangeSet;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->complement()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public difference(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 417
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->create(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    move-result-object v0

    .line 418
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$RangeSet;->removeAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)V

    .line 419
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->copyOf(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 176
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 178
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v3

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;

    sget-object v5, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 174
    invoke-static/range {v0 .. v5}, Lautovalue/shaded/com/google$/common/collect/$SortedLists;->binarySearch(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Object;Ljava/util/Comparator;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 181
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic enclosesAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Z
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->enclosesAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public intersection(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 403
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->create(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    move-result-object v0

    .line 404
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$RangeSet;->complement()Lautovalue/shaded/com/google$/common/collect/$RangeSet;

    move-result-object p1

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$RangeSet;->removeAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)V

    .line 405
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->copyOf(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public intersects(Lautovalue/shaded/com/google$/common/collect/$Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 156
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 158
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v3

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;

    sget-object v5, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 154
    invoke-static/range {v0 .. v5}, Lautovalue/shaded/com/google$/common/collect/$SortedLists;->binarySearch(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Object;Ljava/util/Comparator;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;)I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 161
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 162
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 163
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    sub-int/2addr v0, v2

    .line 167
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 168
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 211
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 710
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 189
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBoundFn()Lautovalue/shaded/com/google$/common/base/$Function;

    move-result-object v1

    .line 190
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v2

    .line 191
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Ordering;->natural()Lautovalue/shaded/com/google$/common/collect/$Ordering;

    move-result-object v3

    sget-object v4, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;

    sget-object v5, Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;

    .line 187
    invoke-static/range {v0 .. v5}, Lautovalue/shaded/com/google$/common/collect/$SortedLists;->binarySearch(Ljava/util/List;Lautovalue/shaded/com/google$/common/base/$Function;Ljava/lang/Object;Ljava/util/Comparator;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyPresentBehavior;Lautovalue/shaded/com/google$/common/collect/$SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 195
    invoke-virtual {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 196
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2
.end method

.method public remove(Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public span()Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 203
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeSet(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 489
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->span()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    .line 491
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 493
    :cond_0
    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->intersectRanges(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0

    .line 497
    :cond_1
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subRangeSet(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$RangeSet;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->subRangeSet(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method public union(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->asRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$RangeSet;->asRanges()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->unionOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 834
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$SerializedForm;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet;->ranges:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeSet$SerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-object v0
.end method
