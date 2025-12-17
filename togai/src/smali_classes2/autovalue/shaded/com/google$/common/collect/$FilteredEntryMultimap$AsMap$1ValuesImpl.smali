.class Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1ValuesImpl;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$Values;
.source "$FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->createValues()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$Values<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 296
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$Values;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 6

    .line 301
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 302
    check-cast p1, Ljava/util/Collection;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 303
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 304
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 305
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$ValuePredicate;

    iget-object v5, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    iget-object v5, v5, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-direct {v4, v5, v2}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$ValuePredicate;-><init>(Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Collection;

    move-result-object v2

    .line 310
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 325
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valuePredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->removeEntriesIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 330
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->not(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valuePredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->removeEntriesIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result p1

    return p1
.end method
