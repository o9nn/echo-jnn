.class interface abstract Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;
.super Ljava/lang/Object;
.source "$FilteredMultimap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$Multimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract entryPredicate()Lautovalue/shaded/com/google$/common/base/$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract unfiltered()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
