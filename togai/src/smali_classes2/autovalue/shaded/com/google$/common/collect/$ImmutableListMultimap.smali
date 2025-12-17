.class public Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
.source "$ImmutableListMultimap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$ListMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;I)V

    return-void
.end method

.method public static builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 186
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
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
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 319
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0

    .line 324
    :cond_0
    instance-of v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    if-eqz v0, :cond_1

    .line 326
    move-object v0, p0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    .line 327
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 332
    :cond_1
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1
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
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 346
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static flatteningToImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Ljava/util/stream/Stream<",
            "+TV;>;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 122
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->flatteningToImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+",
            "Ljava/util/Collection<",
            "+TV;>;>;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 353
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0

    .line 356
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    .line 357
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;-><init>(I)V

    .line 360
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 361
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 362
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-nez p1, :cond_2

    .line 365
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->copyOf(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    goto :goto_1

    .line 366
    :cond_2
    invoke-static {p1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v2

    .line 367
    :goto_1
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 368
    invoke-virtual {v0, v3, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    .line 369
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 373
    :cond_3
    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;I)V

    return-object p0
.end method

.method private invert()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 412
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->entries()Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 414
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v0

    .line 417
    iput-object p0, v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    return-object v0
.end method

.method public static of()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 129
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;->INSTANCE:Lautovalue/shaded/com/google$/common/collect/$EmptyImmutableListMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 136
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 141
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 143
    invoke-virtual {v0, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 144
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 149
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 151
    invoke-virtual {v0, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 152
    invoke-virtual {v0, p4, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 153
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 159
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 161
    invoke-virtual {v0, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 162
    invoke-virtual {v0, p4, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 163
    invoke-virtual {v0, p6, p7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 164
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 170
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 172
    invoke-virtual {v0, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 173
    invoke-virtual {v0, p4, p5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 174
    invoke-virtual {v0, p6, p7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 175
    invoke-virtual {v0, p8, p9}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    .line 176
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 461
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 462
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_3

    .line 466
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 470
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 471
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    if-lez v6, :cond_1

    .line 476
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->builder()Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    move-result-object v7

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_0

    .line 478
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->add(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 480
    :cond_0
    invoke-virtual {v7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid value count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 486
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;

    invoke-virtual {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    sget-object p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;

    invoke-virtual {p1, p0, v4}, Lautovalue/shaded/com/google$/common/collect/$Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    return-void

    :catch_0
    move-exception p1

    .line 488
    new-instance v0, Ljava/io/InvalidObjectException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/InvalidObjectException;

    throw p1

    .line 464
    :cond_3
    new-instance p1, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid key count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static toImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectCollectors;->toImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 456
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Serialization;->writeMultimap(Lautovalue/shaded/com/google$/common/collect/$Multimap;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->map:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    if-nez p1, :cond_0

    .line 391
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    if-nez v0, :cond_0

    .line 408
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->invert()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public final removeAll(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 432
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public final replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p1

    return-object p1
.end method
