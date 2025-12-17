.class Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
.source "$ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient length:I

.field final transient offset:I

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;II)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    .line 459
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;-><init>()V

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->offset:I

    iput p3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->length:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->length:I

    .line 471
    invoke-static {p1, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->offset:I

    add-int/2addr p1, v1

    .line 472
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 455
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 455
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->listIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 455
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->listIterator(I)Lautovalue/shaded/com/google$/common/collect/$UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->length:I

    return v0
.end method

.method public subList(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->length:I

    .line 477
    invoke-static {p1, p2, v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkPositionIndexes(III)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 478
    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->subList(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 455
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$SubList;->subList(II)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method
