.class public Lai/onnxruntime/OnnxTensor;
.super Lai/onnxruntime/OnnxTensorLike;
.source "OnnxTensor.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final buffer:Ljava/nio/Buffer;

.field private final ownsBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lai/onnxruntime/OnnxTensor;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxTensor;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(JJLai/onnxruntime/TensorInfo;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 39
    invoke-direct/range {v0 .. v7}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V

    return-void
.end method

.method constructor <init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p5}, Lai/onnxruntime/OnnxTensorLike;-><init>(JJLai/onnxruntime/TensorInfo;)V

    iput-object p6, p0, Lai/onnxruntime/OnnxTensor;->buffer:Ljava/nio/Buffer;

    iput-boolean p7, p0, Lai/onnxruntime/OnnxTensor;->ownsBuffer:Z

    return-void
.end method

.method private native close(JJ)V
.end method

.method private static native createString(JJLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private static native createStringTensor(JJ[Ljava/lang/Object;[J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private static native createTensor(JJLjava/lang/Object;[JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private static createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 754
    invoke-static {v2, p0}, Lai/onnxruntime/OrtUtil;->prepareBuffer(Ljava/nio/Buffer;Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OrtUtil$BufferTuple;

    move-result-object v2

    .line 755
    iget-object v3, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    move-object/from16 v12, p3

    invoke-static {v3, v12, p0}, Lai/onnxruntime/TensorInfo;->constructFromBuffer(Ljava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/TensorInfo;

    move-result-object v0

    .line 756
    new-instance v3, Lai/onnxruntime/OnnxTensor;

    sget-wide v4, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v6, v1, Lai/onnxruntime/OrtAllocator;->handle:J

    iget-object v8, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    iget v9, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->pos:I

    iget-wide v10, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->byteSize:J

    iget-object v13, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v13, v13, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    .line 757
    invoke-static/range {v4 .. v13}, Lai/onnxruntime/OnnxTensor;->createTensorFromBuffer(JJLjava/nio/Buffer;IJ[JI)J

    move-result-wide v5

    iget-wide v7, v1, Lai/onnxruntime/OrtAllocator;->handle:J

    iget-object v10, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    iget-boolean v11, v2, Lai/onnxruntime/OrtUtil$BufferTuple;->isCopy:Z

    move-object v4, v3

    move-object v9, v0

    invoke-direct/range {v4 .. v11}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;Ljava/nio/Buffer;Z)V

    return-object v3
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 371
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_4

    .line 372
    invoke-static {p2}, Lai/onnxruntime/TensorInfo;->constructFromJavaArray(Ljava/lang/Object;)Lai/onnxruntime/TensorInfo;

    move-result-object v5

    .line 373
    iget-object p0, v5, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-ne p0, v0, :cond_1

    .line 374
    iget-object p0, v5, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length p0, p0

    if-nez p0, :cond_0

    .line 375
    new-instance p0, Lai/onnxruntime/OnnxTensor;

    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    check-cast p2, Ljava/lang/String;

    .line 376
    invoke-static {v0, v1, v2, v3, p2}, Lai/onnxruntime/OnnxTensor;->createString(JJLjava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object p0

    .line 380
    :cond_0
    new-instance p0, Lai/onnxruntime/OnnxTensor;

    sget-wide v6, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v8, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    .line 384
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->flattenString(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, v5, Lai/onnxruntime/TensorInfo;->shape:[J

    .line 381
    invoke-static/range {v6 .. v11}, Lai/onnxruntime/OnnxTensor;->createStringTensor(JJ[Ljava/lang/Object;[J)J

    move-result-wide v1

    iget-wide v3, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object p0

    .line 390
    :cond_1
    iget-object p0, v5, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length p0, p0

    if-nez p0, :cond_3

    .line 391
    iget-object p0, v5, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p0, p2}, Lai/onnxruntime/OrtUtil;->convertBoxedPrimitiveToArray(Lai/onnxruntime/OnnxJavaType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 393
    :cond_2
    new-instance p0, Lai/onnxruntime/OrtException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to convert a boxed primitive to an array, this is an error with the ORT Java API, please report this message & stack trace. JavaType = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", object = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    move-object v10, p2

    .line 400
    new-instance p0, Lai/onnxruntime/OnnxTensor;

    sget-wide v6, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v8, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    iget-object v11, v5, Lai/onnxruntime/TensorInfo;->shape:[J

    iget-object p2, v5, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v12, p2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    .line 401
    invoke-static/range {v6 .. v12}, Lai/onnxruntime/OnnxTensor;->createTensor(JJLjava/lang/Object;[JI)J

    move-result-wide v1

    iget-wide v3, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object p0

    .line 407
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor with a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 571
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->INT8:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p0, p1, p2, p3, v0}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 609
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 610
    invoke-static {p4, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 612
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 530
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 531
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    .line 532
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 534
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 489
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 490
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    .line 491
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 493
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 690
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 691
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    .line 692
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 694
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 731
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 732
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    .line 733
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 735
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ShortBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 649
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 650
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    .line 651
    invoke-static {p0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OrtAllocator;Ljava/nio/Buffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0

    .line 653
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 441
    invoke-virtual {p1}, Lai/onnxruntime/OrtAllocator;->isClosed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 442
    new-instance v5, Lai/onnxruntime/TensorInfo;

    sget-object p0, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    sget-object v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-direct {v5, p3, p0, v0}, Lai/onnxruntime/TensorInfo;-><init>([JLai/onnxruntime/OnnxJavaType;Lai/onnxruntime/TensorInfo$OnnxTensorType;)V

    .line 447
    new-instance p0, Lai/onnxruntime/OnnxTensor;

    sget-wide v6, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v8, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v10, p2

    move-object v11, p3

    .line 448
    invoke-static/range {v6 .. v11}, Lai/onnxruntime/OnnxTensor;->createStringTensor(JJ[Ljava/lang/Object;[J)J

    move-result-wide v1

    iget-wide v3, p1, Lai/onnxruntime/OrtAllocator;->handle:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OnnxTensor;-><init>(JJLai/onnxruntime/TensorInfo;)V

    return-object p0

    .line 452
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to create an OnnxTensor on a closed OrtAllocator."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2, p3}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ShortBuffer;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;Ljava/nio/ShortBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method public static createTensor(Lai/onnxruntime/OrtEnvironment;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lai/onnxruntime/OrtEnvironment;->defaultAllocator:Lai/onnxruntime/OrtAllocator;

    invoke-static {p0, v0, p1, p2}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Lai/onnxruntime/OrtAllocator;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    return-object p0
.end method

.method private static native createTensorFromBuffer(JJLjava/nio/Buffer;IJ[JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getArray(JJLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getBool(JJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private getBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    .line 304
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private native getBuffer(JJ)Ljava/nio/ByteBuffer;
.end method

.method private native getByte(JJI)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getDouble(JJ)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getFloat(JJI)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getInt(JJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getLong(JJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getShort(JJI)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getString(JJ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OnnxTensor;->closed:Z

    if-nez v0, :cond_0

    .line 160
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->close(JJ)V

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lai/onnxruntime/OnnxTensor;->closed:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lai/onnxruntime/OnnxTensor;->logger:Ljava/util/logging/Logger;

    const-string v1, "Closing an already closed tensor."

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBufferRef()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/Buffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->buffer:Ljava/nio/Buffer;

    .line 80
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 4

    .line 176
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->checkClosed()V

    .line 177
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-eq v0, v1, :cond_0

    .line 178
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getBuffer(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 180
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 2

    .line 225
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->checkClosed()V

    .line 226
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->DOUBLE:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/DoubleBuffer;->allocate(I)Ljava/nio/DoubleBuffer;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v0}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    .line 230
    invoke-virtual {v1}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    .line 195
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->checkClosed()V

    .line 196
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->FLOAT:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    .line 198
    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 200
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 201
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    .line 203
    :cond_0
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_1

    .line 205
    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->convertFp16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0

    .line 208
    :cond_1
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_2

    .line 210
    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->convertBf16BufferToFloatBuffer(Ljava/nio/ShortBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntBuffer()Ljava/nio/IntBuffer;
    .locals 2

    .line 265
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->checkClosed()V

    .line 266
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    .line 267
    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    .line 270
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongBuffer()Ljava/nio/LongBuffer;
    .locals 2

    .line 284
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->checkClosed()V

    .line 285
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    .line 286
    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/nio/LongBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/LongBuffer;->allocate(I)Ljava/nio/LongBuffer;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    .line 289
    invoke-virtual {v1}, Ljava/nio/LongBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortBuffer()Ljava/nio/ShortBuffer;
    .locals 2

    .line 244
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->checkClosed()V

    .line 245
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->INT16:Lai/onnxruntime/OnnxJavaType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->FLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v1, Lai/onnxruntime/OnnxJavaType;->BFLOAT16:Lai/onnxruntime/OnnxJavaType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_1
    :goto_0
    invoke-direct {p0}, Lai/onnxruntime/OnnxTensor;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 250
    invoke-virtual {v1, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 251
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method

.method public getType()Lai/onnxruntime/OnnxValue$OnnxValueType;
    .locals 1

    .line 85
    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->checkClosed()V

    .line 103
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v0}, Lai/onnxruntime/TensorInfo;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lai/onnxruntime/OnnxTensor$1;->$SwitchMap$ai$onnxruntime$OnnxJavaType:[I

    iget-object v1, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v1, v1, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    new-instance v0, Lai/onnxruntime/OrtException;

    const-string v1, "Extracting the value of an invalid Tensor."

    invoke-direct {v0, v1}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_0
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    .line 127
    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getShort(JJI)S

    move-result v0

    .line 126
    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->bf16ToFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_1
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    .line 124
    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getShort(JJI)S

    move-result v0

    .line 123
    invoke-static {v0}, Lai/onnxruntime/platform/Fp16Conversions;->fp16ToFloat(S)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 121
    :pswitch_2
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getString(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_3
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getBool(JJ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 117
    :pswitch_4
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getLong(JJI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 115
    :pswitch_5
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getInt(JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 113
    :pswitch_6
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getShort(JJI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 111
    :pswitch_7
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getByte(JJI)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_8
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxTensor;->getDouble(JJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_9
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    iget v6, v0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->value:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getFloat(JJI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v0}, Lai/onnxruntime/TensorInfo;->makeCarrier()Ljava/lang/Object;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->getNumElements()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 136
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxTensor;->nativeHandle:J

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OnnxTensor;->getArray(JJLjava/lang/Object;)V

    .line 138
    :cond_1
    iget-object v1, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v1, v1, Lai/onnxruntime/TensorInfo;->type:Lai/onnxruntime/OnnxJavaType;

    sget-object v2, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v1, v1, Lai/onnxruntime/TensorInfo;->shape:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 141
    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    iget-object v1, v1, Lai/onnxruntime/TensorInfo;->shape:[J

    invoke-static {v0, v1}, Lai/onnxruntime/OrtUtil;->reshape([Ljava/lang/String;[J)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ownsBuffer()Z
    .locals 1

    iget-boolean v0, p0, Lai/onnxruntime/OnnxTensor;->ownsBuffer:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnnxTensor(info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lai/onnxruntime/OnnxTensor;->info:Lai/onnxruntime/TensorInfo;

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lai/onnxruntime/OnnxTensor;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
