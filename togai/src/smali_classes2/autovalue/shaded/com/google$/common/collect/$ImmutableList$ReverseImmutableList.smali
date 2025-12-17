.class Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
.source "$ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReverseImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 607
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-void
.end method

.method private reverseIndex(I)I
    .locals 1

    .line 612
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private reversePosition(I)I
    .locals 1

    .line 616
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 626
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 649
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 650
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 631
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 632
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method isPartialView()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 660
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 604
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 637
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 638
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 604
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->listIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 604
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->listIterator(I)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 655
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 643
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkPositionIndexes(III)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->forwardList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 644
    invoke-direct {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result p2

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->subList(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->reverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 604
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$ReverseImmutableList;->subList(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method
