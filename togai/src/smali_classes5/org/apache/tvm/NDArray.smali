.class public Lorg/apache/tvm/NDArray;
.super Lorg/apache/tvm/NDArrayBase;
.source "NDArray.java"


# instance fields
.field private final device:Lorg/apache/tvm/Device;

.field private final dtype:Lorg/apache/tvm/TVMType;


# direct methods
.method constructor <init>(JZLorg/apache/tvm/TVMType;Lorg/apache/tvm/Device;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tvm/NDArrayBase;-><init>(JZ)V

    iput-object p4, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iput-object p5, p0, Lorg/apache/tvm/NDArray;->device:Lorg/apache/tvm/Device;

    return-void
.end method

.method private checkCopySize(I)V
    .locals 4

    .line 171
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->size()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Array shape size not match: %d v.s. %d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static empty([J)Lorg/apache/tvm/NDArray;
    .locals 3

    .line 404
    new-instance v0, Lorg/apache/tvm/TVMType;

    const-string v1, "float32"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tvm/TVMType;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/tvm/Device;->cpu(I)Lorg/apache/tvm/Device;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;Lorg/apache/tvm/Device;)Lorg/apache/tvm/NDArray;

    move-result-object p0

    return-object p0
.end method

.method public static empty([JLorg/apache/tvm/Device;)Lorg/apache/tvm/NDArray;
    .locals 3

    .line 414
    new-instance v0, Lorg/apache/tvm/TVMType;

    const-string v1, "float32"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tvm/TVMType;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v0, p1}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;Lorg/apache/tvm/Device;)Lorg/apache/tvm/NDArray;

    move-result-object p0

    return-object p0
.end method

.method public static empty([JLorg/apache/tvm/TVMType;)Lorg/apache/tvm/NDArray;
    .locals 1

    const/4 v0, 0x0

    .line 395
    invoke-static {v0}, Lorg/apache/tvm/Device;->cpu(I)Lorg/apache/tvm/Device;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;Lorg/apache/tvm/Device;)Lorg/apache/tvm/NDArray;

    move-result-object p0

    return-object p0
.end method

.method public static empty([JLorg/apache/tvm/TVMType;Lorg/apache/tvm/Device;)Lorg/apache/tvm/NDArray;
    .locals 9

    .line 382
    new-instance v8, Lorg/apache/tvm/Base$RefLong;

    invoke-direct {v8}, Lorg/apache/tvm/Base$RefLong;-><init>()V

    .line 383
    sget-object v0, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget v2, p1, Lorg/apache/tvm/TVMType;->typeCode:I

    iget v3, p1, Lorg/apache/tvm/TVMType;->bits:I

    iget v4, p1, Lorg/apache/tvm/TVMType;->lanes:I

    iget v5, p2, Lorg/apache/tvm/Device;->deviceType:I

    iget v6, p2, Lorg/apache/tvm/Device;->deviceId:I

    move-object v1, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lorg/apache/tvm/LibInfo;->tvmArrayAlloc([JIIIIILorg/apache/tvm/Base$RefLong;)I

    move-result p0

    invoke-static {p0}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 385
    new-instance p0, Lorg/apache/tvm/NDArray;

    iget-wide v1, v8, Lorg/apache/tvm/Base$RefLong;->value:J

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tvm/NDArray;-><init>(JZLorg/apache/tvm/TVMType;Lorg/apache/tvm/Device;)V

    return-object p0
.end method

.method private groupInternalBytes()[[B
    .locals 8

    .line 351
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->internal()[B

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 352
    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    .line 353
    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    rem-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 358
    array-length v2, v0

    div-int/2addr v2, v1

    filled-new-array {v2, v1}, [I

    move-result-object v3

    .line 359
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    mul-int v6, v5, v1

    .line 361
    aget-object v7, v3, v5

    invoke-static {v0, v6, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    .line 354
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    iget-object v3, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 355
    invoke-virtual {v3}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s size %d cannot divide byte array size %d"

    .line 354
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static wrapBytes([B)Ljava/nio/ByteBuffer;
    .locals 1

    .line 418
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 419
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private static wrapBytes([BII)Ljava/nio/ByteBuffer;
    .locals 0

    .line 424
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 425
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method public asByteArray()[B
    .locals 4

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 329
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 333
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->internal()[B

    move-result-object v0

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 331
    invoke-virtual {v1}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set convert to byte[] for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asCharArray()[C
    .locals 4

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 311
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 315
    invoke-direct {p0}, Lorg/apache/tvm/NDArray;->groupInternalBytes()[[B

    move-result-object v0

    .line 316
    array-length v1, v0

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 317
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 318
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/tvm/NDArray;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 312
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 313
    invoke-virtual {v1}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set convert to char[] for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asDoubleArray()[D
    .locals 5

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 221
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 225
    invoke-direct {p0}, Lorg/apache/tvm/NDArray;->groupInternalBytes()[[B

    move-result-object v0

    .line 226
    array-length v1, v0

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 227
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 228
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/tvm/NDArray;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 223
    invoke-virtual {v1}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set convert to double[] for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asFloatArray()[F
    .locals 4

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 239
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 243
    invoke-direct {p0}, Lorg/apache/tvm/NDArray;->groupInternalBytes()[[B

    move-result-object v0

    .line 244
    array-length v1, v0

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 245
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 246
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/tvm/NDArray;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 241
    invoke-virtual {v1}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set convert to float[] for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asIntArray()[I
    .locals 4

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 275
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 279
    invoke-direct {p0}, Lorg/apache/tvm/NDArray;->groupInternalBytes()[[B

    move-result-object v0

    .line 280
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 281
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 282
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/tvm/NDArray;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 276
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 277
    invoke-virtual {v1}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set convert to int[] for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asLongArray()[J
    .locals 5

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 257
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 261
    invoke-direct {p0}, Lorg/apache/tvm/NDArray;->groupInternalBytes()[[B

    move-result-object v0

    .line 262
    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 263
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 264
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/tvm/NDArray;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 258
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 259
    invoke-virtual {v1}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set convert to long[] for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asShortArray()[S
    .locals 4

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 293
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 297
    invoke-direct {p0}, Lorg/apache/tvm/NDArray;->groupInternalBytes()[[B

    move-result-object v0

    .line 298
    array-length v1, v0

    new-array v1, v1, [S

    const/4 v2, 0x0

    .line 299
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 300
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/apache/tvm/NDArray;->wrapBytes([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 295
    invoke-virtual {v1}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot set convert to short[] for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyFrom([B)V
    .locals 3

    .line 144
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/tvm/NDArray;->checkCopySize(I)V

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 145
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lorg/apache/tvm/NDArray;->copyFromRaw([B)V

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set byte[] for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFrom([C)V
    .locals 7

    .line 157
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/tvm/NDArray;->checkCopySize(I)V

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 158
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 161
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v0, 0x0

    .line 162
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 163
    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v1, v0

    iget-object v3, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v3, v3, Lorg/apache/tvm/TVMType;->numOfBytes:I

    invoke-static {v2, v1, v3}, Lorg/apache/tvm/NDArray;->wrapBytes([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-char v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-static {p1, v0}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;)Lorg/apache/tvm/NDArray;

    move-result-object p1

    .line 166
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v3, p1, Lorg/apache/tvm/NDArray;->handle:J

    iget-wide v5, p0, Lorg/apache/tvm/NDArray;->handle:J

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tvm/LibInfo;->tvmArrayCopyFromJArray([BJJ)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 167
    invoke-virtual {p1}, Lorg/apache/tvm/NDArray;->release()V

    return-void

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set char[] for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFrom([D)V
    .locals 7

    .line 49
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/tvm/NDArray;->checkCopySize(I)V

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 50
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 53
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v0, 0x0

    .line 54
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 55
    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v1, v0

    iget-object v3, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v3, v3, Lorg/apache/tvm/TVMType;->numOfBytes:I

    invoke-static {v2, v1, v3}, Lorg/apache/tvm/NDArray;->wrapBytes([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-wide v3, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-static {p1, v0}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;)Lorg/apache/tvm/NDArray;

    move-result-object p1

    .line 58
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v3, p1, Lorg/apache/tvm/NDArray;->handle:J

    iget-wide v5, p0, Lorg/apache/tvm/NDArray;->handle:J

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tvm/LibInfo;->tvmArrayCopyFromJArray([BJJ)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 59
    invoke-virtual {p1}, Lorg/apache/tvm/NDArray;->release()V

    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set double[] for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFrom([F)V
    .locals 7

    .line 68
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/tvm/NDArray;->checkCopySize(I)V

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 69
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 72
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v0, 0x0

    .line 73
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 74
    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v1, v0

    iget-object v3, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v3, v3, Lorg/apache/tvm/TVMType;->numOfBytes:I

    invoke-static {v2, v1, v3}, Lorg/apache/tvm/NDArray;->wrapBytes([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    aget v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-static {p1, v0}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;)Lorg/apache/tvm/NDArray;

    move-result-object p1

    .line 77
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v3, p1, Lorg/apache/tvm/NDArray;->handle:J

    iget-wide v5, p0, Lorg/apache/tvm/NDArray;->handle:J

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tvm/LibInfo;->tvmArrayCopyFromJArray([BJJ)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 78
    invoke-virtual {p1}, Lorg/apache/tvm/NDArray;->release()V

    return-void

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set float[] for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFrom([I)V
    .locals 7

    .line 106
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/tvm/NDArray;->checkCopySize(I)V

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 107
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 110
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v0, 0x0

    .line 111
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 112
    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v1, v0

    iget-object v3, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v3, v3, Lorg/apache/tvm/TVMType;->numOfBytes:I

    invoke-static {v2, v1, v3}, Lorg/apache/tvm/NDArray;->wrapBytes([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    aget v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-static {p1, v0}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;)Lorg/apache/tvm/NDArray;

    move-result-object p1

    .line 115
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v3, p1, Lorg/apache/tvm/NDArray;->handle:J

    iget-wide v5, p0, Lorg/apache/tvm/NDArray;->handle:J

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tvm/LibInfo;->tvmArrayCopyFromJArray([BJJ)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 116
    invoke-virtual {p1}, Lorg/apache/tvm/NDArray;->release()V

    return-void

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set int[] for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFrom([J)V
    .locals 7

    .line 87
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/tvm/NDArray;->checkCopySize(I)V

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 88
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 91
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v0, 0x0

    .line 92
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 93
    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v1, v0

    iget-object v3, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v3, v3, Lorg/apache/tvm/TVMType;->numOfBytes:I

    invoke-static {v2, v1, v3}, Lorg/apache/tvm/NDArray;->wrapBytes([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-wide v3, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-static {p1, v0}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;)Lorg/apache/tvm/NDArray;

    move-result-object p1

    .line 96
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v3, p1, Lorg/apache/tvm/NDArray;->handle:J

    iget-wide v5, p0, Lorg/apache/tvm/NDArray;->handle:J

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tvm/LibInfo;->tvmArrayCopyFromJArray([BJJ)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 97
    invoke-virtual {p1}, Lorg/apache/tvm/NDArray;->release()V

    return-void

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set long[] for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFrom([S)V
    .locals 7

    .line 125
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/apache/tvm/NDArray;->checkCopySize(I)V

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 126
    iget v0, v0, Lorg/apache/tvm/TVMType;->typeCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v0, v0, Lorg/apache/tvm/TVMType;->bits:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 129
    array-length v0, p1

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v0, v1

    new-array v2, v0, [B

    const/4 v0, 0x0

    .line 130
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 131
    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    mul-int/2addr v1, v0

    iget-object v3, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    iget v3, v3, Lorg/apache/tvm/TVMType;->numOfBytes:I

    invoke-static {v2, v1, v3}, Lorg/apache/tvm/NDArray;->wrapBytes([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    aget-short v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-static {p1, v0}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;)Lorg/apache/tvm/NDArray;

    move-result-object p1

    .line 134
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v3, p1, Lorg/apache/tvm/NDArray;->handle:J

    iget-wide v5, p0, Lorg/apache/tvm/NDArray;->handle:J

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tvm/LibInfo;->tvmArrayCopyFromJArray([BJJ)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 135
    invoke-virtual {p1}, Lorg/apache/tvm/NDArray;->release()V

    return-void

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-virtual {v0}, Lorg/apache/tvm/TVMType;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set short[] for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyFromRaw([B)V
    .locals 7

    .line 183
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-static {v0, v1}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;)Lorg/apache/tvm/NDArray;

    move-result-object v0

    .line 184
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v3, v0, Lorg/apache/tvm/NDArray;->handle:J

    iget-wide v5, p0, Lorg/apache/tvm/NDArray;->handle:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tvm/LibInfo;->tvmArrayCopyFromJArray([BJJ)I

    move-result p1

    invoke-static {p1}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 185
    invoke-virtual {v0}, Lorg/apache/tvm/NDArray;->release()V

    return-void
.end method

.method public device()Lorg/apache/tvm/Device;
    .locals 1

    iget-object v0, p0, Lorg/apache/tvm/NDArray;->device:Lorg/apache/tvm/Device;

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    invoke-super {p0}, Lorg/apache/tvm/NDArrayBase;->finalize()V

    return-void
.end method

.method public internal()[B
    .locals 5

    .line 341
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    invoke-static {v0, v1}, Lorg/apache/tvm/NDArray;->empty([JLorg/apache/tvm/TVMType;)Lorg/apache/tvm/NDArray;

    move-result-object v0

    .line 342
    invoke-virtual {p0, v0}, Lorg/apache/tvm/NDArray;->copyTo(Lorg/apache/tvm/NDArrayBase;)Lorg/apache/tvm/NDArrayBase;

    iget-object v1, p0, Lorg/apache/tvm/NDArray;->dtype:Lorg/apache/tvm/TVMType;

    .line 344
    iget v1, v1, Lorg/apache/tvm/TVMType;->numOfBytes:I

    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->size()J

    move-result-wide v2

    long-to-int v2, v2

    mul-int/2addr v1, v2

    .line 345
    new-array v1, v1, [B

    .line 346
    sget-object v2, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v3, v0, Lorg/apache/tvm/NDArray;->handle:J

    invoke-virtual {v2, v3, v4, v1}, Lorg/apache/tvm/LibInfo;->tvmArrayCopyToJArray(J[B)I

    move-result v0

    invoke-static {v0}, Lorg/apache/tvm/Base;->checkCall(I)V

    return-object v1
.end method

.method public shape()[J
    .locals 6

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    sget-object v1, Lorg/apache/tvm/Base;->_LIB:Lorg/apache/tvm/LibInfo;

    iget-wide v2, p0, Lorg/apache/tvm/NDArray;->handle:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/tvm/LibInfo;->tvmArrayGetShape(JLjava/util/List;)I

    move-result v1

    invoke-static {v1}, Lorg/apache/tvm/Base;->checkCall(I)V

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 197
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public size()J
    .locals 6

    .line 208
    invoke-virtual {p0}, Lorg/apache/tvm/NDArray;->shape()[J

    move-result-object v0

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    .line 209
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 210
    aget-wide v4, v0, v3

    mul-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
