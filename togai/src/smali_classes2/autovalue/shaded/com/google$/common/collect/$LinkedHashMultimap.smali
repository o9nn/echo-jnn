.class public final Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;
.super Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;
.source "$LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;,
        Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;,
        Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY_CAPACITY:I = 0x10

.field private static final DEFAULT_VALUE_SET_CAPACITY:I = 0x2

.field static final VALUE_SET_LOAD_FACTOR:D = 1.0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient multimapHeaderEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient valueSetCapacity:I


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .line 223
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Platform;->newLinkedHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x2

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->valueSetCapacity:I

    const-string p1, "expectedValuesPerKey"

    .line 224
    invoke-static {p2, p1}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    iput p2, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->valueSetCapacity:I

    .line 227
    new-instance p1, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p2, v0, p2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->multimapHeaderEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 228
    invoke-static {p1, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->succeedsInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method static synthetic access$200(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V
    .locals 0

    .line 81
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->succeedsInValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method static synthetic access$300(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .locals 0

    .line 81
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->multimapHeaderEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-object p0
.end method

.method static synthetic access$400(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V
    .locals 0

    .line 81
    invoke-static {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->succeedsInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method static synthetic access$500(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V
    .locals 0

    .line 81
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->deleteFromValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method static synthetic access$600(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V
    .locals 0

    .line 81
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->deleteFromMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method public static create()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(II)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

    .line 100
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->capacity(I)I

    move-result p0

    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Maps;->capacity(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$Multimap<",
            "+TK;+TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 113
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->create(II)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Z

    return-object v0
.end method

.method private static deleteFromMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    move-result-object v0

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getSuccessorInMultimap()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    move-result-object p0

    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->succeedsInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method private static deleteFromValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 139
    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;->getPredecessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    invoke-interface {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    move-result-object p0

    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->succeedsInValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 590
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 591
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->multimapHeaderEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 592
    invoke-static {v0, v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->succeedsInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    const/4 v0, 0x2

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->valueSetCapacity:I

    .line 594
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/16 v1, 0xc

    .line 595
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$Platform;->newLinkedHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 598
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 599
    invoke-virtual {p0, v4}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 604
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 606
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 607
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 609
    :cond_1
    invoke-virtual {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method private static succeedsInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->setSuccessorInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    .line 135
    invoke-virtual {p1, p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->setPredecessorInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method private static succeedsInValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 129
    invoke-interface {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;->setSuccessorInValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V

    .line 130
    invoke-interface {p1, p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;->setPredecessorInValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 577
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 578
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 579
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 582
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 583
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 584
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .line 80
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 566
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->clear()V

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->multimapHeaderEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 567
    invoke-static {v0, v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->succeedsInMultimap(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 254
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->valueSetCapacity:I

    invoke-direct {v0, p0, p1, v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;-><init>(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method createCollection()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->valueSetCapacity:I

    .line 240
    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Platform;->newLinkedHashSetWithExpectedSize(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 283
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 520
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;)V

    return-object v0
.end method

.method entrySpliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 80
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 80
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->isEmpty()Z

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

    .line 298
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lautovalue/shaded/com/google$/common/collect/$Multiset;
    .locals 1

    .line 80
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->keys()Lautovalue/shaded/com/google$/common/collect/$Multiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Z
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->putAll(Lautovalue/shaded/com/google$/common/collect/$Multimap;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 267
    invoke-super {p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 80
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method valueSpliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->entrySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapValues$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lautovalue/shaded/com/google$/common/collect/$CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 310
    invoke-super {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimapGwtSerializationDependencies;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
