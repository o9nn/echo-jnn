.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$ValueIterator;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$HashIterator;
.source "$MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V
    .locals 0

    .line 2615
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$HashIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2619
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$ValueIterator;->nextEntry()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
