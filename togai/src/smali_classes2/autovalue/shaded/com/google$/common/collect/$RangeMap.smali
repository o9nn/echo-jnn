.class public interface abstract Lautovalue/shaded/com/google$/common/collect/$RangeMap;
.super Ljava/lang/Object;
.source "$RangeMap.java"


# annotations
.annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/$DoNotMock;
    value = "Use ImmutableRangeMap or TreeRangeMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract asDescendingMapOfRanges()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;>;"
        }
    .end annotation
.end method

.method public abstract asMapOfRanges()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public abstract getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;>;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract merge(Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)V"
        }
    .end annotation
.end method

.method public abstract put(Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;)V"
        }
    .end annotation
.end method

.method public abstract putAll(Lautovalue/shaded/com/google$/common/collect/$RangeMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract putCoalescing(Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;)V"
        }
    .end annotation
.end method

.method public abstract remove(Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;)V"
        }
    .end annotation
.end method

.method public abstract span()Lautovalue/shaded/com/google$/common/collect/$Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract subRangeMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$RangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$RangeMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
