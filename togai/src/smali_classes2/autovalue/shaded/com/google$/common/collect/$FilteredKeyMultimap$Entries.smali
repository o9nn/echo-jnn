.class Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;
.super Lautovalue/shaded/com/google$/common/collect/$ForwardingCollection;
.source "$FilteredKeyMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ForwardingCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    .line 185
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    .line 188
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->entryPredicate()Lautovalue/shaded/com/google$/common/base/$Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Collections2;->filter(Ljava/util/Collection;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 194
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    .line 196
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    .line 198
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap$Entries;->this$0:Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;

    .line 199
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$FilteredKeyMultimap;->unfiltered:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
