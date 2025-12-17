.class Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2$1;
.super Lautovalue/shaded/com/google$/common/collect/$Multisets$AbstractEntry;
.source "$AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2;->next()Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2;

.field final synthetic val$mapEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    .line 126
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Count;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Count;->get()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2;

    .line 136
    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;

    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->access$100(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2$1;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Count;

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Count;->get()I

    move-result v0

    return v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Count;->get()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2$1;->val$mapEntry:Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
