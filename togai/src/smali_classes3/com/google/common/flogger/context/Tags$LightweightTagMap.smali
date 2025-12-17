.class Lcom/google/common/flogger/context/Tags$LightweightTagMap;
.super Ljava/util/AbstractMap;
.source "Tags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/context/Tags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LightweightTagMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/util/Set<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ENTRY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SMALL_ARRAY_LENGTH:I = 0x10

.field private static final singletonOffsets:[I


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private hashCode:Ljava/lang/Integer;

.field private final offsets:[I

.field private toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 365
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$1;

    invoke-direct {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$1;-><init>()V

    sput-object v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->singletonOffsets:[I

    return-void
.end method

.method constructor <init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;Lcom/google/common/flogger/context/Tags$LightweightTagMap;)V
    .locals 8

    .line 432
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 402
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->entrySet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    .line 438
    invoke-virtual {p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->size()I

    move-result v1

    add-int v5, v0, v1

    .line 439
    invoke-direct {p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getTotalElementCount()I

    move-result v0

    invoke-direct {p2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getTotalElementCount()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    add-int/lit8 v1, v5, 0x1

    .line 440
    new-array v1, v1, [I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v0

    move-object v7, v1

    .line 442
    invoke-direct/range {v2 .. v7}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mergeTagMaps(Lcom/google/common/flogger/context/Tags$LightweightTagMap;Lcom/google/common/flogger/context/Tags$LightweightTagMap;I[Ljava/lang/Object;[I)I

    move-result p1

    .line 443
    invoke-static {v0, v1, p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->adjustOffsetsAndMaybeResize([Ljava/lang/Object;[II)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    .line 444
    invoke-static {v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->maybeResizeOffsetsArray([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 411
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 402
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->entrySet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    sget-object v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->singletonOffsets:[I

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    const/4 v0, 0x0

    .line 413
    invoke-direct {p0, p1, v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/flogger/context/Tags$KeyValuePair;",
            ">;)V"
        }
    .end annotation

    .line 418
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 402
    new-instance v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->entrySet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    .line 421
    invoke-static {p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->countMapEntries(Ljava/util/List;)I

    move-result v0

    .line 422
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    .line 423
    new-array v2, v2, [I

    .line 425
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->makeTagMap(Ljava/util/List;I[Ljava/lang/Object;[I)I

    move-result p1

    .line 426
    invoke-static {v1, p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->maybeResizeElementArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    return-void
.end method

.method static synthetic access$1000(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[I
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    return-object p0
.end method

.method static synthetic access$1100()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->ENTRY_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/common/flogger/context/Tags$LightweightTagMap;)[Ljava/lang/Object;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    return-object p0
.end method

.method private static adjustOffsetsAndMaybeResize([Ljava/lang/Object;[II)[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    .line 593
    aget v1, p1, v0

    sub-int v2, v1, p2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    move v3, v0

    :goto_0
    if-gt v3, p2, :cond_1

    .line 599
    aget v4, p1, v3

    sub-int/2addr v4, v2

    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 602
    :cond_1
    aget p1, p1, p2

    sub-int v2, p1, p2

    .line 604
    array-length v3, p0

    invoke-static {v3, p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mustResize(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    new-array p1, p1, [Ljava/lang/Object;

    .line 606
    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    move-object p1, p0

    .line 611
    :goto_1
    invoke-static {p0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private copyEntryAndValues(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "Ljava/lang/Object;",
            ">;>;II[",
            "Ljava/lang/Object;",
            "[I)I"
        }
    .end annotation

    .line 577
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    .line 578
    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result v2

    sub-int/2addr v1, v2

    .line 579
    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValuesArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getStart()I

    move-result v0

    invoke-static {v2, v0, p4, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 580
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object p1

    aput-object p1, p4, p2

    add-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x1

    .line 583
    aput p3, p5, p2

    return p3
.end method

.method private static countMapEntries(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/flogger/context/Tags$KeyValuePair;",
            ">;)I"
        }
    .end annotation

    .line 453
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/context/Tags$KeyValuePair;

    .line 454
    invoke-static {v2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    invoke-static {v2}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getEntryOrNull(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    const/4 v1, 0x0

    .line 644
    aget v0, v0, v1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->array:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getTotalElementCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->offsets:[I

    .line 650
    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->size()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method private makeTagMap(Ljava/util/List;I[Ljava/lang/Object;[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/flogger/context/Tags$KeyValuePair;",
            ">;I[",
            "Ljava/lang/Object;",
            "[I)I"
        }
    .end annotation

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, p2

    move-object v2, v0

    move-object v4, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/flogger/context/Tags$KeyValuePair;

    .line 471
    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 472
    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$200(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-direct {p0, v2, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, p3, v1

    .line 474
    aput v3, p4, v1

    add-int/lit8 v1, v1, 0x1

    move-object v4, v0

    .line 478
    :cond_1
    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 479
    invoke-static {v5}, Lcom/google/common/flogger/context/Tags$KeyValuePair;->access$300(Lcom/google/common/flogger/context/Tags$KeyValuePair;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    .line 480
    aput-object v4, p3, v3

    move v3, v5

    goto :goto_0

    :cond_2
    if-ne v1, p2, :cond_3

    .line 487
    aput v3, p4, p2

    return v3

    .line 485
    :cond_3
    new-instance p1, Ljava/util/ConcurrentModificationException;

    const-string p2, "corrupted tag map"

    invoke-direct {p1, p2}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static maybeResizeElementArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1

    .line 619
    array-length v0, p0

    invoke-static {v0, p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mustResize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static maybeResizeOffsetsArray([I)[I
    .locals 2

    const/4 v0, 0x0

    .line 625
    aget v0, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 626
    array-length v1, p0

    invoke-static {v1, v0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mustResize(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private mergeTagMaps(Lcom/google/common/flogger/context/Tags$LightweightTagMap;Lcom/google/common/flogger/context/Tags$LightweightTagMap;I[Ljava/lang/Object;[I)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    const/4 v9, 0x0

    .line 504
    aput p3, p5, v9

    .line 508
    invoke-direct {v0, v9}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 510
    invoke-direct {v1, v9}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v3

    move/from16 v5, p3

    move-object v10, v2

    move-object v11, v3

    move v4, v9

    move v12, v4

    move v13, v12

    :goto_0
    if-nez v10, :cond_1

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    return v4

    :cond_1
    :goto_1
    if-nez v10, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    if-nez v11, :cond_3

    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    move v2, v9

    :goto_2
    if-nez v2, :cond_4

    .line 518
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 521
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v14, p0

    invoke-direct {v14, v2, v4}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v8, v4

    add-int/lit8 v4, v4, 0x1

    .line 523
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    invoke-static {v2, v3, v8, v5}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->mergeValues(Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;[Ljava/lang/Object;I)I

    move-result v5

    .line 524
    aput v5, p5, v4

    add-int/lit8 v12, v12, 0x1

    .line 525
    invoke-direct {v0, v12}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v10

    add-int/lit8 v13, v13, 0x1

    .line 526
    invoke-direct {v1, v13}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v11

    goto :goto_0

    :cond_4
    move-object/from16 v14, p0

    if-gez v2, :cond_5

    add-int/lit8 v15, v4, 0x1

    move-object/from16 v2, p0

    move-object v3, v10

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 532
    invoke-direct/range {v2 .. v7}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->copyEntryAndValues(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I

    move-result v2

    add-int/lit8 v12, v12, 0x1

    .line 533
    invoke-direct {v0, v12}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v10

    goto :goto_3

    :cond_5
    add-int/lit8 v15, v4, 0x1

    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 535
    invoke-direct/range {v2 .. v7}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->copyEntryAndValues(Ljava/util/Map$Entry;II[Ljava/lang/Object;[I)I

    move-result v2

    add-int/lit8 v13, v13, 0x1

    .line 536
    invoke-direct {v1, v13}, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->getEntryOrNull(I)Ljava/util/Map$Entry;

    move-result-object v11

    :goto_3
    move v5, v2

    move v4, v15

    goto :goto_0
.end method

.method private static mergeValues(Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;[Ljava/lang/Object;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "*>;",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "*>;[",
            "Ljava/lang/Object;",
            "I)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 549
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    goto :goto_1

    :cond_0
    return p3

    .line 550
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    const/4 v3, -0x1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    if-nez v3, :cond_4

    .line 552
    invoke-static {}, Lcom/google/common/flogger/context/Tags;->access$400()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValue(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    :cond_4
    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    .line 557
    invoke-virtual {p0, v1}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v2, 0x1

    .line 559
    invoke-virtual {p1, v2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    move v3, v1

    move-object v1, v2

    move v2, v4

    :goto_3
    add-int/lit8 v4, p3, 0x1

    .line 565
    aput-object v1, p2, p3

    move v1, v3

    move p3, v4

    goto :goto_0
.end method

.method private static mustResize(II)Z
    .locals 1

    const/16 v0, 0x10

    if-le p0, v0, :cond_0

    mul-int/lit8 p0, p0, 0x9

    mul-int/lit8 p1, p1, 0xa

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private newEntry(Ljava/lang/String;I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 638
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    new-instance v1, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;

    invoke-direct {v1, p0, p2}, Lcom/google/common/flogger/context/Tags$LightweightTagMap$SortedArraySet;-><init>(Lcom/google/common/flogger/context/Tags$LightweightTagMap;I)V

    invoke-direct {v0, p1, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 741
    invoke-super {p0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->hashCode:Ljava/lang/Integer;

    .line 743
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 749
    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/context/Tags$LightweightTagMap;->toString:Ljava/lang/String;

    return-object v0
.end method
