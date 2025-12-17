.class abstract Lautovalue/shaded/com/google$/common/collect/$Multimaps$Entries;
.super Ljava/util/AbstractCollection;
.source "$Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1769
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1797
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$Entries;->multimap()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v0

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1779
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1780
    check-cast p1, Ljava/util/Map$Entry;

    .line 1781
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$Entries;->multimap()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method abstract multimap()Lautovalue/shaded/com/google$/common/collect/$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1788
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1789
    check-cast p1, Ljava/util/Map$Entry;

    .line 1790
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$Entries;->multimap()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 1774
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimaps$Entries;->multimap()Lautovalue/shaded/com/google$/common/collect/$Multimap;

    move-result-object v0

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->size()I

    move-result v0

    return v0
.end method
