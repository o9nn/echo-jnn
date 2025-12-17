.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractMapEntry;
.source "$ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$AbstractMapEntry<",
        "TK;",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$backingEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    .line 860
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    .line 863
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->val$backingEntry:Ljava/util/Map$Entry;

    .line 868
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 860
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;->getValue()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method
