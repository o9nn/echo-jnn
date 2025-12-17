.class public Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;
.source "$TreeRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSet;,
        Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSetRangesByLowerBound;,
        Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$Complement;,
        Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$ComplementRangesByLowerBound;,
        Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$RangesByUpperBound;,
        Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$AsRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient asDescendingSetOfRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private transient asRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private transient complement:Lautovalue/shaded/com/google$/common/collect/$RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;"
        }
    .end annotation
.end field

.field final rangesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lautovalue/shaded/com/google$/common/collect/$Cut<",
            "TC;>;",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/NavigableMap;Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic access$600(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangeEnclosing(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p0

    return-object p0
.end method

.method public static create()Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static create(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 55
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->create()Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->addAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->create()Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->addAll(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method private rangeEnclosing(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 156
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private replaceRangeWithSameLowerBound(Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 263
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 264
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 266
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 174
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 183
    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 185
    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 189
    iget-object v2, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v2, v0}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 191
    iget-object v0, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 193
    iget-object p1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 199
    :cond_1
    iget-object v0, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    :cond_2
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 203
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 207
    iget-object v2, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 209
    iget-object p1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    :cond_3
    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 214
    invoke-interface {v1, v0, p1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    .line 216
    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->replaceRangeWithSameLowerBound(Lautovalue/shaded/com/google$/common/collect/$Range;)V

    return-void
.end method

.method public bridge synthetic addAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->addAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)V

    return-void
.end method

.method public asDescendingSetOfRanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->asDescendingSetOfRanges:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$AsRanges;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$AsRanges;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;Ljava/util/Collection;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->asDescendingSetOfRanges:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public asRanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->asRanges:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$AsRanges;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$AsRanges;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;Ljava/util/Collection;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->asRanges:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 41
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lautovalue/shaded/com/google$/common/collect/$RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->complement:Lautovalue/shaded/com/google$/common/collect/$RangeSet;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$Complement;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$Complement;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->complement:Lautovalue/shaded/com/google$/common/collect/$RangeSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 150
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->encloses(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic enclosesAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->enclosesAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public intersects(Lautovalue/shaded/com/google$/common/collect/$Range;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 135
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 141
    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v2, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isConnected(Lautovalue/shaded/com/google$/common/collect/$Range;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->intersection(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 41
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 123
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Cut;->belowValue(Ljava/lang/Comparable;)Lautovalue/shaded/com/google$/common/collect/$Cut;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Range;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Lautovalue/shaded/com/google$/common/collect/$Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 221
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 230
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 234
    iget-object v1, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 236
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 237
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 239
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 240
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v1

    .line 239
    invoke-direct {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->replaceRangeWithSameLowerBound(Lautovalue/shaded/com/google$/common/collect/$Range;)V

    .line 242
    :cond_1
    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 243
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    .line 242
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->replaceRangeWithSameLowerBound(Lautovalue/shaded/com/google$/common/collect/$Range;)V

    :cond_2
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 247
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 250
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    .line 251
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v2, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 252
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Cut;->compareTo(Lautovalue/shaded/com/google$/common/collect/$Cut;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 254
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    .line 255
    invoke-static {v1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    .line 254
    invoke-direct {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->replaceRangeWithSameLowerBound(Lautovalue/shaded/com/google$/common/collect/$Range;)V

    :cond_3
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 259
    iget-object v1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    iget-object p1, p1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->clear()V

    return-void
.end method

.method public bridge synthetic removeAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractRangeSet;->removeAll(Lautovalue/shaded/com/google$/common/collect/$RangeSet;)V

    return-void
.end method

.method public span()Lautovalue/shaded/com/google$/common/collect/$Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 164
    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 165
    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v0, v0, Lautovalue/shaded/com/google$/common/collect/$Range;->lowerBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Range;

    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$Range;->upperBound:Lautovalue/shaded/com/google$/common/collect/$Cut;

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$Range;->create(Lautovalue/shaded/com/google$/common/collect/$Cut;Lautovalue/shaded/com/google$/common/collect/$Cut;)Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeSet(Lautovalue/shaded/com/google$/common/collect/$Range;)Lautovalue/shaded/com/google$/common/collect/$RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$Range<",
            "TC;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$RangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 856
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$Range;->all()Lautovalue/shaded/com/google$/common/collect/$Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lautovalue/shaded/com/google$/common/collect/$Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSet;

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet$SubRangeSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$TreeRangeSet;Lautovalue/shaded/com/google$/common/collect/$Range;)V

    :goto_0
    return-object v0
.end method
