.class Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;
.super Lautovalue/shaded/com/google$/common/collect/$Multisets$EntrySet;
.source "$FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Multisets$EntrySet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;

    .line 376
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$EntrySet;-><init>()V

    return-void
.end method

.method private removeEntriesIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TK;>;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;

    .line 394
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1$1;

    invoke-direct {v1, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->removeEntriesIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;

    .line 385
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method multiset()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 406
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;->removeEntriesIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 411
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->in(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Predicates;->not(Lautovalue/shaded/com/google$/common/base/$Predicate;)Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;->removeEntriesIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;->this$1:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;

    .line 390
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
