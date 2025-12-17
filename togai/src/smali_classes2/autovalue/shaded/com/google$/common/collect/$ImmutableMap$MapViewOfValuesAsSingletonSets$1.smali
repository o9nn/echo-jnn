.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;
.super Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.source "$ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->entryIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$backingIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;->val$backingIterator:Ljava/util/Iterator;

    .line 851
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;->val$backingIterator:Ljava/util/Iterator;

    .line 854
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;->val$backingIterator:Ljava/util/Iterator;

    .line 859
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 860
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method
