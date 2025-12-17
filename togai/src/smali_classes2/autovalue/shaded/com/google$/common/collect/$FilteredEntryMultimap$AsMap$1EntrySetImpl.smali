.class Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1EntrySetImpl;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$EntrySet;
.source "$FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
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
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1EntrySetImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 245
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
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

    .line 253
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1EntrySetImpl$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1EntrySetImpl$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1EntrySetImpl;)V

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1EntrySetImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    return-object v0
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1EntrySetImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 275
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1EntrySetImpl;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;

    .line 280
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->not(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->removeEntriesIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 285
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$AsMap$1EntrySetImpl;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
