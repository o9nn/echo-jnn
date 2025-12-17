.class abstract Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;
.super Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;
.source "$AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$MapBasedMultisetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L


# instance fields
.field private transient backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lautovalue/shaded/com/google$/common/collect/$Count;",
            ">;"
        }
    .end annotation
.end field

.field private transient size:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lautovalue/shaded/com/google$/common/collect/$Count;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(Z)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$010(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;)J
    .locals 4

    .line 47
    iget-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$022(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;J)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$100(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-object p0
.end method

.method private static getAndSet(Lautovalue/shaded/com/google$/common/collect/$Count;I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 326
    :cond_0
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$Count;->getAndSet(I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$forEachEntry$0(Ljava/util/function/ObjIntConsumer;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$Count;)V
    .locals 0

    .line 159
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$Count;->get()I

    move-result p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 252
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string v3, "occurrences cannot be negative: %s"

    .line 254
    invoke-static {v2, v3, p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 255
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lautovalue/shaded/com/google$/common/collect/$Count;

    if-nez v2, :cond_2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 259
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$Count;

    invoke-direct {v2, p2}, Lautovalue/shaded/com/google$/common/collect/$Count;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 261
    :cond_2
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$Count;->get()I

    move-result p1

    int-to-long v3, p1

    int-to-long v5, p2

    add-long/2addr v3, v5

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    const-string/jumbo v1, "too many occurrences: %s"

    .line 263
    invoke-static {v0, v1, v3, v4}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 264
    invoke-virtual {v2, p2}, Lautovalue/shaded/com/google$/common/collect/$Count;->add(I)V

    move v1, p1

    :goto_2
    iget-wide v2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    int-to-long p1, p2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    return v1
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 164
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Count;

    const/4 v2, 0x0

    .line 165
    invoke-virtual {v1, v2}, Lautovalue/shaded/com/google$/common/collect/$Count;->set(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 167
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 236
    invoke-static {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Count;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$Count;->get()I

    move-result p1

    :goto_0
    return p1
.end method

.method distinctElements()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 173
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method elementIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 85
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$1;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 113
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 114
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2;

    invoke-direct {v1, p0, v0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$2;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 80
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public forEachEntry(Ljava/util/function/ObjIntConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ObjIntConsumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 158
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 159
    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/ObjIntConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 3

    if-nez p2, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-lez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const-string v2, "occurrences cannot be negative: %s"

    .line 276
    invoke-static {v1, v2, p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkArgument(ZLjava/lang/String;I)V

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 277
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$Count;

    if-nez v1, :cond_2

    return v0

    .line 282
    :cond_2
    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$Count;->get()I

    move-result v0

    if-le v0, p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 289
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v0

    :goto_1
    neg-int p1, p2

    .line 292
    invoke-virtual {v1, p1}, Lautovalue/shaded/com/google$/common/collect/$Count;->add(I)V

    iget-wide v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    int-to-long p1, p2

    sub-long/2addr v1, p1

    iput-wide v1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    return v0
.end method

.method setBackingMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Lautovalue/shaded/com/google$/common/collect/$Count;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 301
    invoke-static {p2, v0}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    if-nez p2, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 306
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lautovalue/shaded/com/google$/common/collect/$Count;

    .line 307
    invoke-static {p1, p2}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->getAndSet(Lautovalue/shaded/com/google$/common/collect/$Count;I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 309
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lautovalue/shaded/com/google$/common/collect/$Count;

    .line 310
    invoke-static {v0, p2}, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->getAndSet(Lautovalue/shaded/com/google$/common/collect/$Count;I)I

    move-result v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 313
    new-instance v2, Lautovalue/shaded/com/google$/common/collect/$Count;

    invoke-direct {v2, p2}, Lautovalue/shaded/com/google$/common/collect/$Count;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move p1, v1

    :goto_0
    iget-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    sub-int/2addr p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    return p1
.end method

.method public size()I
    .locals 2

    iget-wide v0, p0, Lautovalue/shaded/com/google$/common/collect/$AbstractMapBasedMultiset;->size:J

    .line 180
    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/primitives/$Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
