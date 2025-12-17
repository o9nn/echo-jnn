.class Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$EntrySet;
.source "$AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$EntrySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;

    .line 1372
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;

    .line 1392
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1380
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapIterator;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1397
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1400
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;

    .line 1401
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;->access$300(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;

    .line 1385
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;

    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap$AsMapEntries$$ExternalSyntheticLambda0;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$AsMap;)V

    invoke-static {v0, v2}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
