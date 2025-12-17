.class Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;
.super Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
.source "$RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset$NonTerminalEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final HASH_FLOODING_FPP:D = 0.001

.field static final MAX_HASH_BUCKET_LENGTH:I = 0x9

.field static final MAX_LOAD_FACTOR:D = 1.0


# instance fields
.field private transient elementSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .annotation runtime Lautovalue/shaded/com/google$/errorprone/annotations/concurrent/$LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient entries:[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private final transient hashTable:[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->create(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object v0

    sput-object v0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->EMPTY:Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    return-void
.end method

.method private constructor <init>([Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;IILautovalue/shaded/com/google$/common/collect/$ImmutableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry<",
            "TE;>;[",
            "Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry<",
            "TE;>;II",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->entries:[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    iput p3, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->size:I

    iput p4, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->hashCode:I

    iput-object p5, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->elementSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    return-void
.end method

.method static create(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "+TE;>;>;)",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 43
    new-array v2, v0, [Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    if-nez v0, :cond_0

    .line 45
    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;->of()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;-><init>([Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;IILautovalue/shaded/com/google$/common/collect/$ImmutableSet;)V

    return-object p0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 47
    invoke-static {v0, v3, v4}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->closedTableSize(ID)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 50
    new-array v3, v0, [Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    .line 55
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    move v6, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;

    .line 56
    invoke-interface {v7}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 57
    invoke-interface {v7}, Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;->getCount()I

    move-result v9

    .line 58
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 59
    invoke-static {v10}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->smear(I)I

    move-result v11

    and-int/2addr v11, v1

    .line 60
    aget-object v12, v3, v11

    if-nez v12, :cond_2

    .line 63
    instance-of v12, v7, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    if-eqz v12, :cond_1

    instance-of v12, v7, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset$NonTerminalEntry;

    if-nez v12, :cond_1

    .line 67
    check-cast v7, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    goto :goto_1

    .line 68
    :cond_1
    new-instance v7, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    invoke-direct {v7, v8, v9}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    goto :goto_1

    .line 70
    :cond_2
    new-instance v7, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset$NonTerminalEntry;

    invoke-direct {v7, v8, v9, v12}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset$NonTerminalEntry;-><init>(Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;)V

    :goto_1
    xor-int v8, v10, v9

    add-int/2addr v6, v8

    add-int/lit8 v8, v0, 0x1

    .line 73
    aput-object v7, v2, v0

    .line 74
    aput-object v7, v3, v11

    int-to-long v9, v9

    add-long/2addr v4, v9

    move v0, v8

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {v3}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->hashFloodingDetected([Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 79
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$ImmutableList;->asImmutableList([Ljava/lang/Object;)Lautovalue/shaded/com/google$/common/collect/$ImmutableList;

    move-result-object p0

    invoke-static {p0}, Lautovalue/shaded/com/google$/common/collect/$JdkBackedImmutableMultiset;->create(Ljava/util/Collection;)Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset;

    move-result-object p0

    goto :goto_2

    .line 80
    :cond_4
    new-instance p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;

    .line 81
    invoke-static {v4, v5}, Lautovalue/shaded/com/google$/common/primitives/$Ints;->saturatedCast(J)I

    move-result v4

    const/4 v0, 0x0

    move-object v1, p0

    move v5, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;-><init>([Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;IILautovalue/shaded/com/google$/common/collect/$ImmutableSet;)V

    :goto_2
    return-object p0
.end method

.method private static hashFloodingDetected([Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 85
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 87
    aget-object v2, p0, v1

    move v3, v0

    :goto_1
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x9

    if-le v3, v5, :cond_0

    return v4

    .line 89
    :cond_0
    invoke-virtual {v2}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;->nextInBucket()Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 164
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    .line 165
    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lautovalue/shaded/com/google$/common/base/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;->getCount()I

    move-result p1

    return p1

    .line 167
    :cond_1
    invoke-virtual {v0}, Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;->nextInBucket()Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    move-result-object v0

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public elementSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->elementSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$ElementSet;

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->entries:[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lautovalue/shaded/com/google$/common/collect/$ImmutableMultiset$ElementSet;-><init>(Ljava/util/List;Lautovalue/shaded/com/google$/common/collect/$Multiset;)V

    iput-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->elementSet:Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->elementSet()Lautovalue/shaded/com/google$/common/collect/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lautovalue/shaded/com/google$/common/collect/$Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->entries:[Lautovalue/shaded/com/google$/common/collect/$Multisets$ImmutableEntry;

    .line 188
    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->hashCode:I

    return v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$RegularImmutableMultiset;->size:I

    return v0
.end method
