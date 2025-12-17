.class Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractSortedSetMultimap;
.source "$Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomSortedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractSortedSetMultimap<",
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
            "Ljava/util/SortedSet<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field transient valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
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
            "Ljava/util/SortedSet<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 492
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractSortedSetMultimap;-><init>(Ljava/util/Map;)V

    .line 493
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/base/$Supplier;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 494
    invoke-interface {p2}, Lautovalue/shaded/com/google$/common/base/$Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->valueComparator:Ljava/util/Comparator;

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

    .line 528
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 529
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/base/$Supplier;

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 530
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/base/$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->valueComparator:Ljava/util/Comparator;

    .line 531
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 532
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 521
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 522
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->backingMap()Ljava/util/Map;

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

    .line 504
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->createMaybeNavigableAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 487
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .line 487
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected createCollection()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->factory:Lautovalue/shaded/com/google$/common/base/$Supplier;

    .line 509
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/base/$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

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

    .line 499
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->createMaybeNavigableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$CustomSortedSetMultimap;->valueComparator:Ljava/util/Comparator;

    return-object v0
.end method
