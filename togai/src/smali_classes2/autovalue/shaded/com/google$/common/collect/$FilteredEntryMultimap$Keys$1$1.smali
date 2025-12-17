.class Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1$1;
.super Ljava/lang/Object;
.source "$FilteredEntryMultimap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/base/$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;->removeEntriesIf(Lautovalue/shaded/com/google$/common/base/$Predicate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/base/$Predicate<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 0

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1$1;->val$predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 395
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1$1;->apply(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public apply(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredEntryMultimap$Keys$1$1;->val$predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 399
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->immutableEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object p1

    .line 398
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
