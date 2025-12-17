.class public abstract Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMultisetGwtSerializationDependencies;
.source "$ImmutableMultiset.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$Multiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$SerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$ElementSet;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$EntrySetSerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultisetGwtSerializationDependencies<",
        "TE;>;",
        "Lautovalue/shaded/com/google$/common/collect/$Multiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient asList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultisetGwtSerializationDependencies;-><init>()V

    return-void
.end method

.method public static builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 430
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;-><init>()V

    return-object v0
.end method

.method private static varargs copyFromElements([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 209
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultiset;->create()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultiset;

    move-result-object v0

    .line 210
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method static copyFromEntries(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "+TE;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 216
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0

    .line 219
    :cond_0
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->create(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 180
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    if-eqz v0, :cond_0

    .line 182
    move-object v0, p0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    .line 183
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 189
    :cond_0
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multiset;

    if-eqz v0, :cond_1

    .line 190
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->cast(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object p0

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultiset;->create(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultiset;

    move-result-object p0

    .line 193
    :goto_0
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 203
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultiset;->create()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultiset;

    move-result-object v0

    .line 204
    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 205
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 170
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method private createEntrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$EntrySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$1;)V

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$toImmutableMultiset$0(Ljava/lang/Object;)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static of()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 89
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->EMPTY:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 100
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 111
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 123
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 135
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 147
    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->copyFromElements([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 159
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static toImmutableMultiset()Ljava/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;>;"
        }
    .end annotation

    .line 67
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toImmutableMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->asList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    if-nez v0, :cond_0

    .line 255
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultisetGwtSerializationDependencies;->asList()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->asList:Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 4

    .line 322
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 323
    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 324
    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public abstract elementSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->elementSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->entrySet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->createEntrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->entrySet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 331
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multisets;->equalsImpl(Lautovalue/shaded/com/google$/common/collect/$Multiset;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract getEntry(I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .line 336
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    .line 228
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 341
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 422
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$SerializedForm;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    return-object v0
.end method
