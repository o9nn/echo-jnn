.class final Lcom/google/common/flogger/LogContext$MutableMetadata;
.super Lcom/google/common/flogger/backend/Metadata;
.source "LogContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/flogger/LogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MutableMetadata"
.end annotation


# static fields
.field private static final INITIAL_KEY_VALUE_CAPACITY:I = 0x4


# instance fields
.field private keyValueCount:I

.field private keyValuePairs:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Lcom/google/common/flogger/backend/Metadata;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    return-void
.end method

.method private indexOf(Lcom/google/common/flogger/MetadataKey;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 v2, v0, 0x2

    .line 225
    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method addValue(Lcom/google/common/flogger/MetadataKey;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/flogger/MetadataKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Lcom/google/common/flogger/MetadataKey;->canRepeat()Z

    move-result v0

    const-string v1, "metadata value"

    if-nez v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->indexOf(Lcom/google/common/flogger/MetadataKey;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object p1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 248
    invoke-static {p2, v1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    .line 253
    array-length v3, v2

    if-le v0, v3, :cond_1

    .line 257
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    mul-int/lit8 v2, v2, 0x2

    const-string v3, "metadata key"

    .line 259
    invoke-static {p1, v3}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 260
    invoke-static {p2, v1}, Lcom/google/common/flogger/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v0

    iget p1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    return-void
.end method

.method public findValue(Lcom/google/common/flogger/MetadataKey;)Ljava/lang/Object;
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

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 235
    invoke-direct {p0, p1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->indexOf(Lcom/google/common/flogger/MetadataKey;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 236
    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/common/flogger/MetadataKey;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getKey(I)Lcom/google/common/flogger/MetadataKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    .line 212
    aget-object p1, v0, p1

    check-cast p1, Lcom/google/common/flogger/MetadataKey;

    return-object p1

    .line 210
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 220
    aget-object p1, v0, p1

    return-object p1

    .line 218
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method removeAllValues(Lcom/google/common/flogger/MetadataKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/flogger/MetadataKey<",
            "*>;)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->indexOf(Lcom/google/common/flogger/MetadataKey;)I

    move-result v0

    if-ltz v0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x2

    :goto_0
    iget v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    mul-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    .line 271
    aget-object v2, v2, v1

    .line 272
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    .line 273
    aput-object v2, v3, v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 274
    aget-object v4, v3, v4

    aput-object v4, v3, v2

    add-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    sub-int p1, v1, v0

    shr-int/lit8 p1, p1, 0x1

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object p1, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValuePairs:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    .line 282
    aput-object v3, p1, v0

    move v0, v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/flogger/LogContext$MutableMetadata;->keyValueCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 291
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/flogger/LogContext$MutableMetadata;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, " \'"

    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->getKey(I)Lcom/google/common/flogger/MetadataKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/common/flogger/LogContext$MutableMetadata;->getValue(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, " }"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
