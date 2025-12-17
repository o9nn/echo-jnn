.class public Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
.source "$ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;-><init>()V

    .line 455
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 543
    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->size:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 549
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->size:I

    invoke-static {v0, v2, v1, v3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->access$100(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 547
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v2, v3, v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 545
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 531
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    return-object p0
.end method

.method public bridge synthetic orderEntriesByValue(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->orderEntriesByValue(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final orderEntriesByValue(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not available on ImmutableSortedMap.Builder"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 466
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 480
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;->putAll(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 510
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 494
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    return-object p0
.end method
