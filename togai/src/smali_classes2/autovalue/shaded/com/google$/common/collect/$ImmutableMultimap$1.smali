.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;
.super Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.source "$ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->entryIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final asMapItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;+",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

.field valueItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 563
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;-><init>()V

    .line 564
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 565
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->asMapItr:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->currentKey:Ljava/lang/Object;

    .line 567
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->emptyIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    .line 571
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->asMapItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 563
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->asMapItr:Ljava/util/Iterator;

    .line 577
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 578
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->currentKey:Ljava/lang/Object;

    .line 579
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->currentKey:Ljava/lang/Object;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;->valueItr:Ljava/util/Iterator;

    .line 581
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
