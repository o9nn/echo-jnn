.class abstract Lautovalue/shaded/com/google$/common/collect/$Multisets$EntrySet;
.super Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet;
.source "$Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet<",
        "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 997
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1037
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$EntrySet;->multiset()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1002
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1007
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 1008
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    .line 1011
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$EntrySet;->multiset()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 1012
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method abstract multiset()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1021
    instance-of v0, p1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1022
    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 1023
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 1024
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1028
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$EntrySet;->multiset()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v2

    .line 1029
    invoke-interface {v2, v0, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method
