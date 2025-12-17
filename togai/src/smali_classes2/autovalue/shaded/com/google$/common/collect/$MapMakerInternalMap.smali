.class Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
.super Ljava/util/AbstractMap;
.source "$MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$SerializationProxy;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractSerializationProxy;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$SafeToArraySet;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Values;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$KeySet;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntryIterator;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WriteThroughEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$ValueIterator;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$KeyIterator;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$HashIterator;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$CleanupMapTask;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueSegment;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueSegment;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueSegment;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueSegment;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueSegment;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyStrongValueSegment;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReferenceImpl;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractWeakKeyEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyStrongValueEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongValueEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$AbstractStrongKeyEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;,
        Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;S:",
        "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CLEANUP_EXECUTOR_DELAY_SECS:J = 0x3cL

.field static final CONTAINS_VALUE_RETRIES:I = 0x3

.field static final DRAIN_MAX:I = 0x10

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET_WEAK_VALUE_REFERENCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$DummyInternalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field final concurrencyLevel:I

.field final transient entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final transient segmentMask:I

.field final transient segmentShift:I

.field final transient segments:[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1000
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$1;

    invoke-direct {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$1;-><init>()V

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    return-void
.end method

.method private constructor <init>(Lautovalue/shaded/com/google$/common/collect/$MapMaker;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper<",
            "TK;TV;TE;TS;>;)V"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 161
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getConcurrencyLevel()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->concurrencyLevel:I

    .line 163
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getKeyEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    .line 166
    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getInitialCapacity()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    move v2, p2

    move v1, v0

    :goto_0
    iget v3, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->concurrencyLevel:I

    if-ge v1, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v2, 0x20

    iput v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentShift:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentMask:I

    .line 179
    invoke-virtual {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->newSegmentArray(I)[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v2

    iput-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segments:[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    .line 181
    div-int v2, p1, v1

    mul-int/2addr v1, v2

    if-ge v1, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segments:[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    .line 191
    array-length v1, p1

    if-ge p2, v1, :cond_3

    const/4 v1, -0x1

    .line 192
    invoke-virtual {p0, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->createSegment(II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method static synthetic access$900(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static create(Lautovalue/shaded/com/google$/common/collect/$MapMaker;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;TV;+",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;*>;"
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getKeyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 200
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getValueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 201
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMaker;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getKeyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 204
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getValueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 205
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;->instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMaker;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 207
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getKeyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_2

    .line 208
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getValueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_2

    .line 209
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;->instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyStrongValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMaker;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getKeyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getValueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_3

    .line 212
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;->instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyWeakValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMaker;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 214
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method static createWithDummyValues(Lautovalue/shaded/com/google$/common/collect/$MapMaker;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker;",
            ")",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
            "+",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;",
            "Lautovalue/shaded/com/google$/common/collect/$MapMaker$Dummy;",
            "*>;*>;"
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getKeyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getValueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_0

    .line 232
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMaker;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getKeyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 235
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getValueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    sget-object v1, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->STRONG:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne v0, v1, :cond_1

    .line 236
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->instance()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMaker;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;)V

    return-object v0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$MapMaker;->getValueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object p0

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->WEAK:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    if-ne p0, v0, :cond_2

    .line 239
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map cannot have both weak and dummy values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method static rehash(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 2820
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2821
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method static unsetWeakValueReference()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;TE;>;>()",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    sget-object v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->UNSET_WEAK_VALUE_REFERENCE:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segments:[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    .line 2468
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2469
    invoke-virtual {v3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2358
    :cond_0
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2359
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object/from16 v2, p0

    iget-object v3, v2, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segments:[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    const-wide/16 v4, -0x1

    move v6, v1

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    .line 2377
    array-length v7, v3

    const-wide/16 v8, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v7, :cond_4

    aget-object v11, v3, v10

    .line 2379
    iget v12, v11, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    .line 2381
    iget-object v12, v11, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v13, v1

    .line 2382
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    .line 2383
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    :goto_3
    if-eqz v14, :cond_2

    .line 2384
    invoke-virtual {v11, v14}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->getLiveValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 2385
    invoke-virtual/range {p0 .. p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->valueEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 2383
    :cond_1
    invoke-interface {v14}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getNext()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v14

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_2

    .line 2390
    :cond_3
    iget v1, v11, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    int-to-long v11, v1

    add-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    cmp-long v1, v8, v4

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v8

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_4
    return v0
.end method

.method copyEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1069
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 1070
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->copyEntry(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    return-object p1
.end method

.method createSegment(II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    .line 1110
    invoke-interface {v0, p0, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->newSegment(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;II)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object p1

    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2494
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$EntrySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2337
    :cond_0
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2338
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getEntry(Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2349
    :cond_0
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2350
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object p1

    return-object p1
.end method

.method getLiveValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .line 1118
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1121
    :cond_0
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    .line 1074
    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/base/$Equivalence;->hash(Ljava/lang/Object;)I

    move-result p1

    .line 1075
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->rehash(I)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 10

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segments:[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    .line 2303
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 2304
    aget-object v7, v0, v4

    iget v7, v7, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    if-eqz v7, :cond_0

    return v3

    .line 2307
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v5, v1

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    move v4, v3

    .line 2311
    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_3

    .line 2312
    aget-object v8, v0, v4

    iget v8, v8, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    if-eqz v8, :cond_2

    return v3

    .line 2315
    :cond_2
    aget-object v8, v0, v4

    iget v8, v8, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->modCount:I

    int-to-long v8, v8

    sub-long/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    move v3, v7

    :cond_4
    return v3

    :cond_5
    return v7
.end method

.method isLiveForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)Z"
        }
    .end annotation

    .line 1095
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->getLiveValueForTesting(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2478
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$KeySet;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$KeySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keySet:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method keyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    .line 2277
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->keyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    return-object v0
.end method

.method final newSegmentArray(I)[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .line 1126
    new-array p1, p1, [Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2403
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2405
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2406
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2420
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2421
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2412
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2415
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method reclaimKey(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1085
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 1086
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->reclaimKey(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;I)Z

    return-void
.end method

.method reclaimValue(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;)V"
        }
    .end annotation

    .line 1079
    invoke-interface {p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;->getEntry()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;

    move-result-object v0

    .line 1080
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    .line 1081
    invoke-virtual {p0, v1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v2

    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->reclaimValue(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$WeakValueReference;)Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2431
    :cond_0
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2432
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2441
    :cond_0
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2442
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2460
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    invoke-static {p2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2463
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 2448
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2449
    invoke-static {p3}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2453
    :cond_0
    invoke-virtual {p0, p1}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2454
    invoke-virtual {p0, v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method segmentFor(I)Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segments:[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentShift:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segmentMask:I

    and-int/2addr p1, v1

    .line 1106
    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 6

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->segments:[Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2326
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 2327
    aget-object v4, v0, v3

    iget v4, v4, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Segment;->count:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2329
    :cond_0
    invoke-static {v1, v2}, Lautovalue/shaded/com/google$/common/primitives/$Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method valueEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/base/$Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    .line 2287
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->defaultEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v0

    return-object v0
.end method

.method valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    .line 2282
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2486
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Values;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Values;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->values:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 8

    .line 2830
    new-instance v7, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$SerializationProxy;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    .line 2831
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->keyStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    .line 2832
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v2

    iget-object v3, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->keyEquivalence:Lautovalue/shaded/com/google$/common/base/$Equivalence;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->entryHelper:Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;

    .line 2834
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$InternalEntryHelper;->valueStrength()Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;

    move-result-object v0

    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;->defaultEquivalence()Lautovalue/shaded/com/google$/common/base/$Equivalence;

    move-result-object v4

    iget v5, p0, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap;->concurrencyLevel:I

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$SerializationProxy;-><init>(Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;Lautovalue/shaded/com/google$/common/collect/$MapMakerInternalMap$Strength;Lautovalue/shaded/com/google$/common/base/$Equivalence;Lautovalue/shaded/com/google$/common/base/$Equivalence;ILjava/util/concurrent/ConcurrentMap;)V

    return-object v7
.end method
