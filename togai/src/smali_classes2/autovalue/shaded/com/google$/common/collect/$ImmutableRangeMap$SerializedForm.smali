.class Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$SerializedForm;
.super Ljava/lang/Object;
.source "$ImmutableRangeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mapOfRanges:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TK;>;TV;>;)V"
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$SerializedForm;->mapOfRanges:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    return-void
.end method


# virtual methods
.method createRangeMap()Ljava/lang/Object;
    .locals 4

    .line 420
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;-><init>()V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$SerializedForm;->mapOfRanges:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 421
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;->put(Lautovalue/shaded/com/google$/common/collect/$Range;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$SerializedForm;->mapOfRanges:Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    .line 412
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap;

    move-result-object v0

    return-object v0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableRangeMap$SerializedForm;->createRangeMap()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
