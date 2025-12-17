.class final Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;
.super Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet;
.source "$LinkedHashMultimap.java"

# interfaces
.implements Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet<",
        "TV;>;",
        "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private firstEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private modCount:I

.field private size:I

.field final synthetic this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;


# direct methods
.method constructor <init>(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

    .line 331
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$Sets$ImprovedAbstractSet;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->size:I

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->modCount:I

    iput-object p2, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    iput-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->firstEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    iput-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->lastEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 336
    invoke-static {p3, p1, p2}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->closedTableSize(ID)I

    move-result p1

    .line 339
    new-array p1, p1, [Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    return-void
.end method

.method static synthetic access$000(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .locals 0

    .line 315
    iget-object p0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->firstEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-object p0
.end method

.method static synthetic access$100(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;)I
    .locals 0

    .line 315
    iget p0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->modCount:I

    return p0
.end method

.method private mask()I
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 344
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private rehashIfNecessary()V
    .locals 6

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->size:I

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 461
    array-length v1, v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->needsResizing(IID)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 463
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    iput-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->firstEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    :goto_0
    if-eq v2, p0, :cond_0

    .line 469
    move-object v3, v2

    check-cast v3, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 470
    iget v4, v3, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    and-int/2addr v4, v0

    .line 471
    aget-object v5, v1, v4

    iput-object v5, v3, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 472
    aput-object v3, v1, v4

    .line 468
    invoke-interface {v2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 439
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 440
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->mask()I

    move-result v1

    and-int/2addr v1, v0

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 441
    aget-object v2, v2, v1

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 443
    invoke-virtual {v3, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 442
    :cond_0
    iget-object v3, v3, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    goto :goto_0

    .line 448
    :cond_1
    new-instance v3, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    iget-object v4, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->key:Ljava/lang/Object;

    invoke-direct {v3, v4, p1, v0, v2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->lastEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    .line 449
    invoke-static {p1, v3}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$200(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V

    .line 450
    invoke-static {v3, p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$200(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

    .line 451
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$300(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-virtual {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getPredecessorInMultimap()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-static {p1, v3}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$400(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->this$0:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;

    .line 452
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$300(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;)Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    move-result-object p1

    invoke-static {v3, p1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$400(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 453
    aput-object v3, p1, v1

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->size:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->size:I

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->modCount:I

    .line 456
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->rehashIfNecessary()V

    return v0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    const/4 v1, 0x0

    .line 505
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->size:I

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->firstEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    :goto_0
    if-eq v0, p0, :cond_0

    .line 510
    move-object v1, v0

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 511
    invoke-static {v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$600(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    .line 509
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    goto :goto_0

    .line 513
    :cond_0
    invoke-static {p0, p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$200(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->modCount:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 426
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 427
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->mask()I

    move-result v2

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {v1, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 429
    :cond_0
    iget-object v1, v1, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 411
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/base/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->firstEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    :goto_0
    if-eq v0, p0, :cond_0

    .line 415
    move-object v1, v0

    check-cast v1, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    invoke-virtual {v1}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 414
    invoke-interface {v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;->getSuccessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPredecessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->lastEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->firstEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 369
    new-instance v0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;

    invoke-direct {v0, p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet$1;-><init>(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    .line 480
    invoke-static {p1}, Lautovalue/shaded/com/google$/common/collect/$Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 481
    invoke-direct {p0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->mask()I

    move-result v1

    and-int/2addr v1, v0

    iget-object v2, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 483
    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 486
    invoke-virtual {v2, p1, v0}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->matchesValue(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    iget-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->hashTable:[Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 489
    iget-object v0, v2, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    aput-object v0, p1, v1

    goto :goto_1

    .line 491
    :cond_0
    iget-object p1, v2, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    iput-object p1, v3, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    .line 493
    :goto_1
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$500(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V

    .line 494
    invoke-static {v2}, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap;->access$600(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;)V

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->size:I

    iget p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->modCount:I

    return v0

    .line 485
    :cond_1
    iget-object v3, v2, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueEntry;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setPredecessorInValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->lastEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public setSuccessorInValueSet(Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->firstEntry:Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSetLink;

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lautovalue/shaded/com/google$/common/collect/$LinkedHashMultimap$ValueSet;->size:I

    return v0
.end method
