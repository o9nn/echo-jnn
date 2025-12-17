.class Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$ForwardingMultimap;
.source "$Multimaps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ForwardingMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient keys:Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient map:Ljava/util/Map;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 634
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingMultimap;-><init>()V

    .line 635
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multimap;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 656
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap$1;

    invoke-direct {v1, p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;)V

    .line 655
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->transformValues(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Function;)Ljava/util/Map;

    move-result-object v0

    .line 654
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 645
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 671
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->access$100(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 678
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 683
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps;->access$000(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 699
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keys()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->keys:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 690
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keys()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->unmodifiableMultiset(Lautovalue/shaded/com/google$/common/collect/$Multiset;)Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->keys:Lautovalue/shaded/com/google$/common/collect/$Multiset;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 706
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

    .line 716
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

    .line 711
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 721
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 726
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 731
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 738
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
