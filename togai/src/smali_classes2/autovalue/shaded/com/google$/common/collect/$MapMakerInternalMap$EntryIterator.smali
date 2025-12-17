.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntryIterator;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$HashIterator;
.source "$MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V
    .locals 0

    .line 2670
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$HashIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2670
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2674
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntryIterator;->nextEntry()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
