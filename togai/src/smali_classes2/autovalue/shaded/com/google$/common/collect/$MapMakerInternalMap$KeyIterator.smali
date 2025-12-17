.class final Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$KeyIterator;
.super Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$HashIterator;
.source "$MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V
    .locals 0

    .line 2607
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$HashIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2611
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$KeyIterator;->nextEntry()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
