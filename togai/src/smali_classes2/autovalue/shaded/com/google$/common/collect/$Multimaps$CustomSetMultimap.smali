.class Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractSetMultimap;
.source "$Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient factory:Lautovalue/shaded/com/google$/common/base/$Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lautovalue/shaded/com/google$/common/base/$Supplier<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 391
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 392
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Supplier;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 444
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/base/$Supplier;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 445
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 446
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 436
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 437
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;->backingMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method createAsMap()Ljava/util/Map;
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

    .line 402
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;->createMaybeNavigableAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 387
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 407
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/base/$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSetMultimap;->createMaybeNavigableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 412
    instance-of v0, p1, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    .line 413
    check-cast p1, Ljava/util/NavigableSet;

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1

    .line 414
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 415
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1

    .line 417
    :cond_1
    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 423
    instance-of v0, p2, Ljava/util/NavigableSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedNavigableSet;

    check-cast p2, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedNavigableSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/NavigableSet;Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0

    .line 425
    :cond_0
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 426
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedSortedSet;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0

    .line 428
    :cond_1
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedSet;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap$WrappedSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method
