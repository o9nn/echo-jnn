.class public final Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
.source "$ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 438
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;-><init>(Z)V

    .line 439
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    return-void
.end method

.method private sortAndDedup()V
    .locals 5

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    .line 453
    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v1, -0x1

    .line 456
    aget-object v4, v3, v4

    aget-object v3, v3, v0

    invoke-interface {v2, v4, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    .line 458
    aget-object v4, v2, v0

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_1
    if-gtz v2, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Comparator "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " compare method violates its contract"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 464
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 480
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->copyIfNecessary()V

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    .line 482
    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 483
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->sortAndDedup()V

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    add-int/lit8 v1, v0, 0x1

    .line 489
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    .line 490
    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 491
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    .line 494
    aput-object p1, v0, v1

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 509
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 510
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 511
    invoke-virtual {p0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 527
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 542
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 563
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->sortAndDedup()V

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    .line 565
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 567
    iput-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->forceCopy:Z

    .line 568
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    iget v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    .line 569
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method bridge synthetic combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet$Builder<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->copyIfNecessary()V

    .line 550
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    const/4 v0, 0x0

    .line 551
    :goto_0
    iget v1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->n:I

    if-ge v0, v1, :cond_0

    .line 552
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method copy()V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    .line 446
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedSet$Builder;->elements:[Ljava/lang/Object;

    return-void
.end method
