.class Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;
.super Lautovalue/shaded/com/google$/common/collect/$ForwardingMap;
.source "$Maps.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ForwardingMap<",
        "TK;TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field

.field inverse:Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field final unmodifiableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/collect/$BiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "+TK;+TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1541
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ForwardingMap;-><init>()V

    .line 1542
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->delegate:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1534
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1554
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public inverse()Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    if-nez v0, :cond_0

    .line 1561
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->delegate:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    invoke-interface {v1}, Lautovalue/shaded/com/google$/common/collect/$BiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$BiMap;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$BiMap;Lautovalue/shaded/com/google$/common/collect/$BiMap;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1534
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->delegate:Lautovalue/shaded/com/google$/common/collect/$BiMap;

    .line 1568
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$BiMap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
