.class Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;
.source "$Multimaps.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$SetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$SetMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 778
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1

    .line 775
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 783
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 775
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 775
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 797
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 775
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 792
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;->delegate()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 775
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 802
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 775
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$UnmodifiableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 807
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
