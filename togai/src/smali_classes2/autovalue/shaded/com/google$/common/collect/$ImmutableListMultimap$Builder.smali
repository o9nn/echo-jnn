.class public final Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
.source "$ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 302
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    return-object v0
.end method

.method public bridge synthetic build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap;
    .locals 1

    .line 208
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 271
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method bridge synthetic combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->combine(Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 283
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 295
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 218
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 230
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->put(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 264
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 243
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 250
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 257
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultimap$Builder;
    .locals 0

    .line 208
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method
