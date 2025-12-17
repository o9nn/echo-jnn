.class interface abstract Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;
.super Ljava/lang/Object;
.source "$FilteredSetMultimap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap;
.implements Lautovalue/shaded/com/google$/common/collect/$SetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lautovalue/shaded/com/google$/common/collect/$FilteredMultimap<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic unfiltered()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 1

    .line 26
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$FilteredSetMultimap;->unfiltered()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public abstract unfiltered()Lautovalue/shaded/com/google$/common/collect/$SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
