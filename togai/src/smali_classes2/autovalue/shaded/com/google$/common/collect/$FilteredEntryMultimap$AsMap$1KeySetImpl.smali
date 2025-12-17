.class Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1KeySetImpl;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet;
.source "$FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->createKeySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet<",
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

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 221
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 236
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 226
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1KeySetImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 231
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->not(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->keyPredicateOnEntries(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->removeEntriesIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result p1

    return p1
.end method
