.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
.source "$ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 625
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 628
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 633
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 634
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_0
    return p1
.end method

.method public elementSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 639
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 623
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;->elementSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 649
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 650
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->immutableEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 644
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 661
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$KeysSerializedForm;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$KeysSerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V

    return-object v0
.end method
