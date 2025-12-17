.class Lautovalue/shaded/com/google$/common/collect/$Multisets$4;
.super Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset;
.source "$Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Multisets;->difference(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$multiset1:Lautovalue/shaded/com/google$/common/collect/$Multiset;

.field final synthetic val$multiset2:Lautovalue/shaded/com/google$/common/collect/$Multiset;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;Lautovalue/shaded/com/google$/common/collect/$Multiset;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;->val$multiset1:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;->val$multiset2:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    const/4 p1, 0x0

    .line 608
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ViewMultiset;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multisets$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 617
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;->val$multiset1:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 611
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;->val$multiset2:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 612
    invoke-interface {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method distinctElements()I
    .locals 1

    .line 659
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;->val$multiset1:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 622
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 623
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$1;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multisets$4;Ljava/util/Iterator;)V

    return-object v1
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multisets$4;->val$multiset1:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    .line 640
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 641
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$4$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multisets$4;Ljava/util/Iterator;)V

    return-object v1
.end method
