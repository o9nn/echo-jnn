.class Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Sets$5;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$AbstractIterator<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final bits:Ljava/util/BitSet;

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$5;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Sets$5;)V
    .locals 1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$5;

    .line 1630
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;-><init>()V

    .line 1631
    new-instance v0, Ljava/util/BitSet;

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$index:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->bits:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 1630
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->computeNext()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->bits:Ljava/util/BitSet;

    .line 1635
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->bits:Ljava/util/BitSet;

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$5;

    .line 1636
    iget v2, v2, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$size:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->bits:Ljava/util/BitSet;

    .line 1638
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->bits:Ljava/util/BitSet;

    .line 1639
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Sets$5;

    .line 1641
    iget-object v3, v3, Lautovalue/shaded/com/google$/common/collect/$Sets$5;->val$index:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1642
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    :cond_1
    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->bits:Ljava/util/BitSet;

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, -0x1

    .line 1658
    invoke-virtual {v3, v1, v0}, Ljava/util/BitSet;->set(II)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->bits:Ljava/util/BitSet;

    .line 1659
    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->clear(II)V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->bits:Ljava/util/BitSet;

    .line 1660
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :goto_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;->bits:Ljava/util/BitSet;

    .line 1662
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 1663
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Sets$5$1$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Sets$5$1;Ljava/util/BitSet;)V

    return-object v1
.end method
