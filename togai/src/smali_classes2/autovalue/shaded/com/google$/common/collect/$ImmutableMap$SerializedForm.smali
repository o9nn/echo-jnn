.class Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;
.super Ljava/lang/Object;
.source "$ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final USE_LEGACY_SERIALIZATION:Z = true

.field private static final serialVersionUID:J


# instance fields
.field private final keys:Ljava/lang/Object;

.field private final values:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 916
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 918
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->entrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 919
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    .line 920
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final legacyReadResolve()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    .line 954
    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    .line 955
    check-cast v1, [Ljava/lang/Object;

    .line 957
    array-length v2, v0

    invoke-virtual {p0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;->makeBuilder(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 959
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 960
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v2, v4, v5}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 962
    :cond_0
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method makeBuilder(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 969
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    invoke-direct {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;-><init>(I)V

    return-object v0
.end method

.method final readResolve()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;->keys:Ljava/lang/Object;

    .line 933
    instance-of v1, v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    if-nez v1, :cond_0

    .line 934
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;->legacyReadResolve()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 937
    :cond_0
    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;->values:Ljava/lang/Object;

    .line 938
    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;

    .line 940
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$SerializedForm;->makeBuilder(I)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    move-result-object v2

    .line 942
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v0

    .line 943
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableCollection;->iterator()Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;

    move-result-object v1

    .line 945
    :goto_0
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 946
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;

    goto :goto_0

    .line 949
    :cond_1
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap$Builder;->build()Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method
