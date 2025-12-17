.class public final Lai/onnxruntime/OrtUtil;
.super Ljava/lang/Object;
.source "OrtUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtUtil$BufferTuple;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lai/onnxruntime/OrtUtil;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OrtUtil;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static capacityFromSize(I)I
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method static convertBoxedPrimitiveToArray(Lai/onnxruntime/OnnxJavaType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 426
    sget-object v0, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    invoke-virtual {p0}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-array p0, v1, [Z

    .line 454
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput-boolean p1, p0, v0

    return-object p0

    :pswitch_1
    new-array p0, v1, [J

    .line 450
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, p0, v0

    return-object p0

    .line 446
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    :pswitch_3
    new-array p0, v1, [S

    .line 442
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    aput-short p1, p0, v0

    return-object p0

    :pswitch_4
    new-array p0, v1, [B

    .line 438
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    aput-byte p1, p0, v0

    return-object p0

    :pswitch_5
    new-array p0, v1, [D

    .line 433
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    aput-wide v1, p0, v0

    return-object p0

    :pswitch_6
    new-array p0, v1, [F

    .line 429
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, p0, v0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static elementCount([J)J
    .locals 7

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    .line 346
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 347
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    mul-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received negative value in shape "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " ."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-wide v0
.end method

.method private static flattenString([Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 399
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    .line 400
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 401
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2, p1}, Lai/onnxruntime/OrtUtil;->flattenString([Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 404
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 405
    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Found a non-String, non-array element type, "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 410
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Found an element type where there should have been an array. Class = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public static flattenString(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1

    .line 381
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 382
    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 384
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lai/onnxruntime/OrtUtil;->flattenString([Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 388
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static newBooleanArray([J)Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    .line 96
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newByteArray([J)Ljava/lang/Object;
    .locals 1

    .line 106
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    .line 107
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newDoubleArray([J)Ljava/lang/Object;
    .locals 1

    .line 161
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    .line 162
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newFloatArray([J)Ljava/lang/Object;
    .locals 1

    .line 150
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    .line 151
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newIntArray([J)Ljava/lang/Object;
    .locals 1

    .line 128
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    .line 129
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newLongArray([J)Ljava/lang/Object;
    .locals 1

    .line 139
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    .line 140
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newShortArray([J)Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    .line 118
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newStringArray([J)Ljava/lang/Object;
    .locals 1

    .line 172
    invoke-static {p0}, Lai/onnxruntime/OrtUtil;->transformShape([J)[I

    move-result-object p0

    .line 173
    const-class v0, Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static prepareBuffer(Ljava/nio/Buffer;Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OrtUtil$BufferTuple;
    .locals 11

    .line 483
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->UNKNOWN:Lai/onnxruntime/OnnxJavaType;

    if-eq p1, v0, :cond_3

    .line 487
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    iget v2, p1, Lai/onnxruntime/OnnxJavaType;->size:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 488
    iget v2, p1, Lai/onnxruntime/OnnxJavaType;->size:I

    mul-int/lit8 v2, v2, 0x8

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    int-to-long v2, v3

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 499
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p1, Lai/onnxruntime/OnnxJavaType;->size:I

    mul-int/2addr v0, v1

    .line 501
    invoke-virtual {p0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget p1, p1, Lai/onnxruntime/OnnxJavaType;->size:I

    mul-int/2addr v1, p1

    move-object v4, p0

    move v5, v1

    goto/16 :goto_1

    .line 506
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 507
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 508
    sget-object v4, Lai/onnxruntime/OrtUtil$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    invoke-virtual {p1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 533
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Impossible to reach here, managed to cast a buffer as an incorrect type, found "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 530
    :pswitch_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/LongBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    move-result-object p1

    goto :goto_0

    .line 527
    :pswitch_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object p1

    goto :goto_0

    .line 524
    :pswitch_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    move-result-object p1

    goto :goto_0

    .line 519
    :pswitch_4
    move-object p1, p0

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    .line 513
    :pswitch_5
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/DoubleBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    move-result-object p1

    goto :goto_0

    .line 510
    :pswitch_6
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    move-object v3, p0

    check-cast v3, Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 537
    :goto_0
    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 538
    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-object v4, p1

    move v5, v2

    .line 542
    :goto_1
    new-instance p1, Lai/onnxruntime/OrtUtil$BufferTuple;

    int-to-long v6, v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v8, v0

    if-eq v4, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v10, v2

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lai/onnxruntime/OrtUtil$BufferTuple;-><init>(Ljava/nio/Buffer;IJJZ)V

    return-object p1

    .line 492
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot allocate a direct buffer of the requested size and type, size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", type = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot create a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " tensor from a buffer"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static reshape(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 7

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v1, "Found element type when expecting an array. Class "

    if-eqz v0, :cond_4

    .line 307
    check-cast p1, [Ljava/lang/Object;

    .line 308
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 309
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 310
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 311
    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 312
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_1

    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 317
    :cond_0
    invoke-static {p0, v4, p2}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p2

    goto :goto_2

    .line 313
    :cond_1
    :goto_1
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 314
    invoke-static {p0, p2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return p2

    .line 325
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reshape([B[J)Ljava/lang/Object;
    .locals 1

    .line 201
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newByteArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 202
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([D[J)Ljava/lang/Object;
    .locals 1

    .line 276
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newDoubleArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 277
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([F[J)Ljava/lang/Object;
    .locals 1

    .line 261
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newFloatArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 262
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([I[J)Ljava/lang/Object;
    .locals 1

    .line 231
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newIntArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 232
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([J[J)Ljava/lang/Object;
    .locals 1

    .line 246
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newLongArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 247
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([Ljava/lang/String;[J)Ljava/lang/Object;
    .locals 1

    .line 291
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newStringArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 292
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([S[J)Ljava/lang/Object;
    .locals 1

    .line 216
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newShortArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 217
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static reshape([Z[J)Ljava/lang/Object;
    .locals 1

    .line 186
    invoke-static {p1}, Lai/onnxruntime/OrtUtil;->newBooleanArray([J)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 187
    invoke-static {p0, p1, v0}, Lai/onnxruntime/OrtUtil;->reshape(Ljava/lang/Object;Ljava/lang/Object;I)I

    return-object p1
.end method

.method public static transformShape([J)[I
    .locals 6

    .line 38
    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 44
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 45
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 46
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    long-to-int v2, v2

    .line 52
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid shape for a Java array, expected non-negative entries smaller than Integer.MAX_VALUE. Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arrays with less than 1 and greater than 8 dimensions are not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static transformShape([I)[J
    .locals 6

    .line 68
    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 74
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 75
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 76
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 82
    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid shape for a Java array, expected positive entries smaller than Integer.MAX_VALUE. Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arrays with less than 1 and greater than 8 dimensions are not supported."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateShape([J)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    .line 366
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 367
    aget-wide v4, p0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    move v6, v0

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    and-int/2addr v3, v6

    long-to-int v6, v4

    int-to-long v6, v6

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 370
    array-length p0, p0

    const/16 v2, 0x8

    if-gt p0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0
.end method
