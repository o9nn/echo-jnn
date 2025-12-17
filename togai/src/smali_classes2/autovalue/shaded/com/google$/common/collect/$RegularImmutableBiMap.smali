.class Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
.source "$RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap$InverseSerializedForm;,
        Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap$Inverse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_LOAD_FACTOR:D = 1.2


# instance fields
.field final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private transient inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient keyTable:[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient valueTable:[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 44
    new-instance v6, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;-><init>([Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;[Ljava/util/Map$Entry;II)V

    sput-object v6, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->EMPTY:Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;

    return-void
.end method

.method private constructor <init>([Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;[Ljava/util/Map$Entry;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry<",
            "TK;TV;>;[",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->keyTable:[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->valueTable:[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    iput-object p3, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    iput p4, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->mask:I

    iput p5, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->hashCode:I

    return-void
.end method

.method static synthetic access$100(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;)[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;
    .locals 0

    .line 43
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->valueTable:[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    return-object p0
.end method

.method static synthetic access$200(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;)I
    .locals 0

    .line 43
    iget p0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->mask:I

    return p0
.end method

.method static synthetic access$300(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;)I
    .locals 0

    .line 43
    iget p0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->hashCode:I

    return p0
.end method

.method private static checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry<",
            "**>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "value"

    invoke-static {v1, v2, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    .line 129
    invoke-virtual {p2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;->getNextInValueBucket()Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    move-result-object p2

    goto :goto_0

    :cond_0
    return v0
.end method

.method static varargs fromEntries([Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 57
    array-length v0, p0

    invoke-static {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object p0

    return-object p0
.end method

.method static fromEntryArray(I[Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    .line 61
    array-length v2, v1

    invoke-static {v0, v2}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkPositionIndex(II)I

    const-wide v2, 0x3ff3333333333333L    # 1.2

    .line 62
    invoke-static {v0, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->closedTableSize(ID)I

    move-result v2

    add-int/lit8 v7, v2, -0x1

    .line 64
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;->createEntryArray(I)[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    move-result-object v4

    .line 65
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;->createEntryArray(I)[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    move-result-object v5

    .line 67
    array-length v2, v1

    if-ne v0, v2, :cond_0

    move-object v6, v1

    goto :goto_0

    .line 70
    :cond_0
    invoke-static/range {p0 .. p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;->createEntryArray(I)[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    move-result-object v2

    move-object v6, v2

    :goto_0
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v2, v0, :cond_4

    .line 76
    aget-object v3, v1, v2

    .line 77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 78
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 79
    invoke-static {v9, v10}, Lautovalue/shaded/com/google$/common/collect/$CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 81
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 82
    invoke-static {v11}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->smear(I)I

    move-result v13

    and-int/2addr v13, v7

    .line 83
    invoke-static {v12}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->smear(I)I

    move-result v14

    and-int/2addr v14, v7

    .line 85
    aget-object v15, v4, v13

    .line 86
    invoke-static {v9, v3, v15}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;->checkNoConflictInKeyBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;)I

    move-result v0

    .line 87
    aget-object v1, v5, v14

    move/from16 v16, v7

    .line 88
    invoke-static {v10, v3, v1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->checkNoConflictInValueBucket(Ljava/lang/Object;Ljava/util/Map$Entry;Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;)I

    move-result v7

    move/from16 v17, v8

    const/16 v8, 0x8

    if-gt v0, v8, :cond_3

    if-le v7, v8, :cond_1

    goto :goto_3

    :cond_1
    if-nez v1, :cond_2

    if-nez v15, :cond_2

    .line 95
    invoke-static {v3, v9, v10}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;->makeImmutable(Ljava/util/Map$Entry;Ljava/lang/Object;Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    move-result-object v0

    goto :goto_2

    .line 96
    :cond_2
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry$NonTerminalImmutableBiMapEntry;

    invoke-direct {v0, v9, v10, v15, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry$NonTerminalImmutableBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;)V

    .line 98
    :goto_2
    aput-object v0, v4, v13

    .line 99
    aput-object v0, v5, v14

    .line 100
    aput-object v0, v6, v2

    xor-int v0, v11, v12

    add-int v8, v17, v0

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, v16

    goto :goto_1

    .line 91
    :cond_3
    :goto_3
    invoke-static/range {p0 .. p1}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableBiMap;->create(I[Ljava/util/Map$Entry;)Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    return-object v0

    :cond_4
    move/from16 v16, v7

    move/from16 v17, v8

    .line 103
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;-><init>([Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;[Ljava/util/Map$Entry;II)V

    return-object v0
.end method


# virtual methods
.method createEntrySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntrySet$RegularEntrySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;[Ljava/util/Map$Entry;)V

    :goto_0
    return-object v0
.end method

.method createKeySet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 150
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapKeySet;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMapKeySet;-><init>(Lautovalue/shaded/com/google$/common/collect/$ImmutableMap;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    .line 156
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 157
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
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

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->keyTable:[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->mask:I

    .line 138
    invoke-static {p1, v0, v1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMap;->get(Ljava/lang/Object;[Lautovalue/shaded/com/google$/common/collect/$ImmutableMapEntry;I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->hashCode:I

    return v0
.end method

.method public bridge synthetic inverse()Lautovalue/shaded/com/google$/common/collect/$BiMap;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap$Inverse;-><init>(Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap$1;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->inverse:Lautovalue/shaded/com/google$/common/collect/$ImmutableBiMap;

    :cond_1
    return-object v0
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableBiMap;->entries:[Ljava/util/Map$Entry;

    .line 178
    array-length v0, v0

    return v0
.end method
