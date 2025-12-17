.class Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet;
.source "$Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;

    .line 2869
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;

    .line 2874
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;

    .line 2875
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;

    .line 2883
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->removeAllKeys(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;

    .line 2888
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;->this$0:Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap;->retainAllKeys(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 2894
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2899
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
