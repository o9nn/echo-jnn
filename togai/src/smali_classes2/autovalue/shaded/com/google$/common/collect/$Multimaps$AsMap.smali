.class final Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;
.super Lautovalue/shaded/com/google$/common/collect/$Maps$ViewCachingAbstractMap;
.source "$Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$Maps$ViewCachingAbstractMap<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$Multimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1805
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps$ViewCachingAbstractMap;-><init>()V

    .line 1806
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Multimap;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    return-void
.end method

.method static synthetic access$200(Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;)Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .locals 0

    .line 1802
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 1881
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 1876
    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1816
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap$EntrySet;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap$EntrySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1802
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1856
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 1871
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 1866
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1802
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1861
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    invoke-interface {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method removeValuesForKey(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 1820
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$Multimaps$AsMap;->multimap:Lautovalue/shaded/com/google$/common/collect/$Multimap;

    .line 1811
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
