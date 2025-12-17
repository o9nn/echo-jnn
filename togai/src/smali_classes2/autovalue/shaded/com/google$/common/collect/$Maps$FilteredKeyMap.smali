.class Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;
.source "$Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredKeyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;Lautovalue/shaded/com/google$/common/base/$Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-TK;>;",
            "Lautovalue/shaded/com/google$/common/base/$Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2764
    invoke-direct {p0, p1, p3}, Lautovalue/shaded/com/google$/common/collect/$Maps$AbstractFilteredMap;-><init>(Ljava/util/Map;Lautovalue/shaded/com/google$/common/base/$Predicate;)V

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 2783
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2770
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;->predicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2775
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$Maps$FilteredKeyMap;->keyPredicate:Lautovalue/shaded/com/google$/common/base/$Predicate;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Sets;->filter(Ljava/util/Set;Lautovalue/shaded/com/google$/common/base/$Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
