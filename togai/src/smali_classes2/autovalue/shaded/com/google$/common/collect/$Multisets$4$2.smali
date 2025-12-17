.class Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractIterator;
.source "$Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Multisets$4;->entryIterator()Ljava/util/Iterator;
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
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$4;

.field final synthetic val$iterator1:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multisets$4;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;->this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$4;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;->val$iterator1:Ljava/util/Iterator;

    .line 641
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

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;->val$iterator1:Ljava/util/Iterator;

    .line 644
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;->val$iterator1:Ljava/util/Iterator;

    .line 645
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 646
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 647
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v0

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;->this$0:Lautovalue/shaded/com/google$/common/collect/$Multisets$4;

    iget-object v2, v2, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;->val$multiset2:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    invoke-interface {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v0, v2

    if-lez v0, :cond_0

    .line 649
    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->immutableEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object v0

    return-object v0

    .line 652
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    return-object v0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 641
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;->computeNext()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
