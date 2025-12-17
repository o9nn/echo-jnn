.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$EntrySet;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
.source "$ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$EntrySet;->multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 524
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 525
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$EntrySet;->multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;

    .line 526
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$EntrySet;->multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;

    .line 538
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;->entryIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 515
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$EntrySet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap$EntrySet;->multimap:Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;

    .line 533
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSetMultimap;->size()I

    move-result v0

    return v0
.end method
