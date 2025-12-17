.class final Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap;
.source "$ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapViewOfValuesAsSingletonSets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap<",
        "TK;",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;


# direct methods
.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 0

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 808
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$IteratorBasedImmutableMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$1;)V
    .locals 0

    .line 808
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 823
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method createKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 818
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->keySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TV;>;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 850
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    .line 851
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 828
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 829
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 807
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->get(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 840
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 845
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->isHashCodeFast()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 834
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 813
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v0

    return v0
.end method
