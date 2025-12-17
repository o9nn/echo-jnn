.class Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$2;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
.source "$ImmutableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->subRangeMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$outer:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

.field final synthetic val$range:Lautovalue/shaded/com/google$/common/collect/$Range;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$Range;Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;)V
    .locals 0

    iput-object p4, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$2;->val$range:Lautovalue/shaded/com/google$/common/collect/$Range;

    iput-object p5, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$2;->val$outer:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    .line 368
    invoke-direct {p0, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableList;Lautovalue/shaded/com/google$/common/collect/$ImmutableList;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 368
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->asDescendingMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 368
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->asMapOfRanges()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public subRangeMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$2;->val$range:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 371
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$2;->val$outer:Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$2;->val$range:Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 372
    invoke-virtual {p1, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->subRangeMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    move-result-object p1

    return-object p1

    .line 374
    :cond_0
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subRangeMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$RangeMap;
    .locals 0

    .line 368
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$2;->subRangeMap(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    move-result-object p1

    return-object p1
.end method
