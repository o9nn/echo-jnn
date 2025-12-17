.class Lautovalue/shaded/com/google$/common/collect/$Multimaps$Keys$1;
.super Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;
.source "$Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$Multimaps$Keys;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$TransformedIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;",
        "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multimaps$Keys;Ljava/util/Iterator;)V
    .locals 0

    .line 1671
    invoke-direct {p0, p2}, Lautovalue/shaded/com/google$/common/collect/$TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 1674
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$Keys$1$1;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$Keys$1$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimaps$Keys$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1671
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$Keys$1;->transform(Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    move-result-object p1

    return-object p1
.end method
