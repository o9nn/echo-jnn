.class final Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;
.super Lcom/google/common/flogger/backend/MetadataProcessor;
.source "MetadataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/backend/MetadataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LightweightProcessor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;
    }
.end annotation


# static fields
.field private static final MAX_LIGHTWEIGHT_ELEMENTS:I = 0x1c


# instance fields
.field private final keyCount:I

.field private final keyMap:[I

.field private final logged:Lcom/google/common/flogger/backend/Metadata;

.field private final scope:Lcom/google/common/flogger/backend/Metadata;


# direct methods
.method private constructor <init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)V
    .locals 1

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, v0}, Lcom/google/common/flogger/backend/MetadataProcessor;-><init>(Lcom/google/common/flogger/backend/MetadataProcessor$1;)V

    const-string v0, "scope metadata"

    .line 193
    invoke-static {p1, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/Metadata;

    iput-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    const-string v0, "logged metadata"

    .line 194
    invoke-static {p2, v0}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/flogger/backend/Metadata;

    iput-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->logged:Lcom/google/common/flogger/backend/Metadata;

    .line 199
    invoke-virtual {p1}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x1c

    if-gt p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "metadata size too large"

    .line 201
    invoke-static {p2, v0}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    .line 202
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    .line 203
    invoke-direct {p0, p1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->prepareKeyMap([I)I

    move-result p1

    iput p1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/MetadataProcessor$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;-><init>(Lcom/google/common/flogger/backend/Metadata;Lcom/google/common/flogger/backend/Metadata;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)I
    .locals 0

    .line 182
    iget p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)[I
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;I)Lcom/google/common/flogger/MetadataKey;
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;I)Ljava/lang/Object;
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private dispatch(Lcom/google/common/flogger/MetadataKey;ILcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;I",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, p2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getValue(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/common/flogger/MetadataKey;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p2, p4}, Lcom/google/common/flogger/backend/MetadataHandler;->handle(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    :cond_0
    new-instance v0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$ValueIterator;-><init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;Lcom/google/common/flogger/MetadataKey;ILcom/google/common/flogger/backend/MetadataProcessor$1;)V

    invoke-virtual {p3, p1, v0, p4}, Lcom/google/common/flogger/backend/MetadataHandler;->handleRepeated(Lcom/google/common/flogger/MetadataKey;Ljava/util/Iterator;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private getKey(I)Lcom/google/common/flogger/MetadataKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    .line 367
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->logged:Lcom/google/common/flogger/backend/Metadata;

    sub-int/2addr p1, v0

    .line 368
    invoke-virtual {v1, p1}, Lcom/google/common/flogger/backend/Metadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    invoke-virtual {v0, p1}, Lcom/google/common/flogger/backend/Metadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getValue(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    .line 372
    invoke-virtual {v0}, Lcom/google/common/flogger/backend/Metadata;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->logged:Lcom/google/common/flogger/backend/Metadata;

    sub-int/2addr p1, v0

    .line 373
    invoke-virtual {v1, p1}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->scope:Lcom/google/common/flogger/backend/Metadata;

    invoke-virtual {v0, p1}, Lcom/google/common/flogger/backend/Metadata;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private indexOf(Lcom/google/common/flogger/MetadataKey;[II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;[II)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 359
    aget v1, p2, v0

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/common/flogger/MetadataKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private prepareKeyMap([I)I
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 319
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 320
    invoke-direct {p0, v2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v4

    .line 325
    invoke-virtual {v4}, Lcom/google/common/flogger/MetadataKey;->getBloomFilterMask()J

    move-result-wide v5

    or-long/2addr v5, v0

    cmp-long v0, v5, v0

    if-nez v0, :cond_1

    .line 335
    invoke-direct {p0, v4, p1, v3}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->indexOf(Lcom/google/common/flogger/MetadataKey;[II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 345
    invoke-virtual {v4}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, p1, v0

    add-int/lit8 v4, v2, 0x4

    const/4 v7, 0x1

    shl-int v4, v7, v4

    or-int/2addr v1, v4

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    aput v1, p1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    .line 350
    aput v2, p1, v3

    move v3, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method public getSingleValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "key must be single valued"

    invoke-static {v0, v1}, Lcom/google/common/flogger/util/Checks;->checkArgument(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    iget v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    .line 225
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->indexOf(Lcom/google/common/flogger/MetadataKey;[II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    .line 227
    aget v0, v1, v0

    invoke-direct {p0, v0}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/flogger/MetadataKey;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public handle(Lcom/google/common/flogger/MetadataKey;Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    iget v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    .line 216
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->indexOf(Lcom/google/common/flogger/MetadataKey;[II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    .line 218
    aget v0, v1, v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->dispatch(Lcom/google/common/flogger/MetadataKey;ILcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public keyCount()I
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;>;"
        }
    .end annotation

    .line 239
    new-instance v0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;

    invoke-direct {v0, p0}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor$1;-><init>(Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;)V

    return-object v0
.end method

.method public process(Lcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/backend/MetadataHandler<",
            "TC;>;TC;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->keyMap:[I

    .line 209
    aget v1, v1, v0

    and-int/lit8 v2, v1, 0x1f

    .line 210
    invoke-direct {p0, v2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v2

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/google/common/flogger/backend/MetadataProcessor$LightweightProcessor;->dispatch(Lcom/google/common/flogger/MetadataKey;ILcom/google/common/flogger/backend/MetadataHandler;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
