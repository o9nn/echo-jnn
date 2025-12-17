.class Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Multisets$3;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$AbstractIterator<",
        "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$3;

.field final synthetic val$iterator1:Ljava/util/Iterator;

.field final synthetic val$iterator2:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multisets$3;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$3;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->val$iterator1:Ljava/util/Iterator;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->val$iterator2:Ljava/util/Iterator;

    .line 566
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->val$iterator1:Ljava/util/Iterator;

    .line 569
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->val$iterator1:Ljava/util/Iterator;

    .line 570
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 571
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 572
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v0

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$3;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Multisets$3;->val$multiset2:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-interface {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 573
    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->immutableEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->val$iterator2:Ljava/util/Iterator;

    .line 575
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->val$iterator2:Ljava/util/Iterator;

    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 577
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$3;

    .line 578
    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Multisets$3;->val$multiset1:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-interface {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v0

    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->immutableEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object v0

    return-object v0

    .line 582
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    return-object v0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$3$1;->computeNext()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
