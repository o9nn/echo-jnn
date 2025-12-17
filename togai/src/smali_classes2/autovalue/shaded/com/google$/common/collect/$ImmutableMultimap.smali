.class public abstract Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;
.source "$ImmutableMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$KeysSerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$EntryCollection;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$FieldSettersHolder;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;+",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final transient size:I


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;+",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->size:I

    return-void
.end method

.method public static builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 119
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 307
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    if-eqz v0, :cond_0

    .line 309
    move-object v0, p0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    .line 310
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 314
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->copyOf(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 328
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$entrySpliterator$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 594
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$entrySpliterator$1(Ljava/util/Map$Entry;)Ljava/util/Spliterator;
    .locals 2

    .line 591
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 592
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 594
    invoke-interface {p0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    .line 593
    invoke-static {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$forEach$2(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 605
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$forEach$3(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1

    .line 605
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 79
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 92
    invoke-static/range {p0 .. p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 100
    invoke-static/range {p0 .. p7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 109
    invoke-static/range {p0 .. p9}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->asMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 472
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 477
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method createEntries()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 524
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$EntryCollection;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$EntryCollection;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->createEntries()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method createKeys()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TK;>;"
        }
    .end annotation

    .line 620
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Keys;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic createKeys()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->createKeys()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method createValues()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 689
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Values;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->createValues()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public entries()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 519
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->entries()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 563
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic entryIterator()Ljava/util/Iterator;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->entryIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method entrySpliterator()Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 589
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->asMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$$ExternalSyntheticLambda3;-><init>()V

    .line 596
    instance-of v2, p0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    or-int/lit8 v2, v2, 0x40

    .line 597
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->size()I

    move-result v3

    int-to-long v3, v3

    .line 588
    invoke-static {v0, v1, v2, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 602
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->asMap()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/BiConsumer;)V

    .line 604
    invoke-virtual {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public abstract get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 68
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
            "TV;TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 68
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 465
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 493
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TK;>;"
        }
    .end annotation

    .line 615
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;->keys()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    return-object v0
.end method

.method public bridge synthetic keys()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->keys()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 416
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->removeAll(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->size:I

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TV;>;"
        }
    .end annotation

    .line 694
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic valueIterator()Ljava/util/Iterator;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->valueIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public values()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 684
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$BaseImmutableMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;->values()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
