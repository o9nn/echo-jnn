.class public final Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
.source "$ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
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
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field contents:[Ljava/lang/Object;

.field private forceCopy:Z

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 765
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 768
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;-><init>()V

    .line 769
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->contents:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    return-void
.end method

.method private add([Ljava/lang/Object;I)V
    .locals 3

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    add-int/2addr v0, p2

    .line 815
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->getReadyToExpandTo(I)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    const/4 v2, 0x0

    .line 816
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    return-void
.end method

.method private getReadyToExpandTo(I)V
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->contents:[Ljava/lang/Object;

    .line 774
    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 775
    array-length v1, v0

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->expandedCapacity(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iput-boolean v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->forceCopy:Z

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->forceCopy:Z

    if-eqz p1, :cond_1

    .line 778
    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iput-boolean v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->forceCopy:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 793
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    .line 794
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->getReadyToExpandTo(I)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    .line 795
    aput-object p1, v0, v1

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 809
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 810
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;
    .locals 0

    .line 755
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 830
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 832
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    .line 833
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->getReadyToExpandTo(I)V

    .line 834
    instance-of v1, v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    if-eqz v1, :cond_0

    .line 835
    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    .line 836
    invoke-virtual {v0, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    return-object p0

    .line 840
    :cond_0
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 854
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->forceCopy:Z

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    .line 871
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder<",
            "TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 860
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget p1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->size:I

    invoke-direct {p0, v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add([Ljava/lang/Object;I)V

    return-object p0
.end method
