.class public abstract Lorg/pytorch/executorch/Tensor;
.super Ljava/lang/Object;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/pytorch/executorch/Tensor$Tensor_uint8;,
        Lorg/pytorch/executorch/Tensor$Tensor_int8;,
        Lorg/pytorch/executorch/Tensor$Tensor_int32;,
        Lorg/pytorch/executorch/Tensor$Tensor_float32;,
        Lorg/pytorch/executorch/Tensor$Tensor_int64;,
        Lorg/pytorch/executorch/Tensor$Tensor_float64;
    }
.end annotation


# static fields
.field private static final DOUBLE_SIZE_BYTES:I = 0x8

.field private static final ERROR_MSG_DATA_ARRAY_NOT_NULL:Ljava/lang/String; = "Data array must be not null"

.field private static final ERROR_MSG_DATA_BUFFER_MUST_BE_DIRECT:Ljava/lang/String; = "Data buffer must be direct (java.nio.ByteBuffer#allocateDirect)"

.field private static final ERROR_MSG_DATA_BUFFER_MUST_HAVE_NATIVE_BYTE_ORDER:Ljava/lang/String; = "Data buffer must have native byte order (java.nio.ByteOrder#nativeOrder)"

.field private static final ERROR_MSG_DATA_BUFFER_NOT_NULL:Ljava/lang/String; = "Data buffer must be not null"

.field private static final ERROR_MSG_SHAPE_NON_NEGATIVE:Ljava/lang/String; = "Shape elements must be non negative"

.field private static final ERROR_MSG_SHAPE_NOT_NULL:Ljava/lang/String; = "Shape must be not null"

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final INT_SIZE_BYTES:I = 0x4

.field private static final LONG_SIZE_BYTES:I = 0x8


# instance fields
.field private mHybridData:Lcom/facebook/jni/HybridData;

.field final shape:[J


# direct methods
.method private constructor <init>([J)V
    .locals 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 342
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lorg/pytorch/executorch/Tensor;->shape:[J

    return-void
.end method

.method synthetic constructor <init>([JLorg/pytorch/executorch/Tensor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/pytorch/executorch/Tensor;-><init>([J)V

    return-void
.end method

.method public static allocateByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 65
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static allocateDoubleBuffer(I)Ljava/nio/DoubleBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x8

    .line 111
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 112
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static allocateFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 87
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 88
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static allocateIntBuffer(I)Ljava/nio/IntBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 75
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 76
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static allocateLongBuffer(I)Ljava/nio/LongBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x8

    .line 99
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 100
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 631
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkShape([J)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Shape must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 636
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 637
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 638
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    const-string v4, "Shape elements must be non negative"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static checkShapeAndDataCapacityConsistency(I[J)V
    .locals 4

    .line 643
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->numel([J)J

    move-result-wide v0

    int-to-long v2, p0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 647
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 648
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 649
    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Inconsistent data capacity:%d and shape number elements:%d shape:%s"

    .line 644
    invoke-static {v2, p1, p0}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static fromBlob(Ljava/nio/ByteBuffer;[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data buffer must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 247
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Shape must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 248
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 250
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 251
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    const-string v3, "Data buffer must be direct (java.nio.ByteBuffer#allocateDirect)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v2, "Data buffer must have native byte order (java.nio.ByteOrder#nativeOrder)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 252
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v0, Lorg/pytorch/executorch/Tensor$Tensor_int8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_int8;-><init>(Ljava/nio/ByteBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int8-IA;)V

    return-object v0
.end method

.method public static fromBlob(Ljava/nio/DoubleBuffer;[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data buffer must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 327
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Shape must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 328
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 329
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 330
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I

    move-result v2

    invoke-static {v2, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 331
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->isDirect()Z

    move-result v2

    const-string v3, "Data buffer must be direct (java.nio.ByteBuffer#allocateDirect)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v2, "Data buffer must have native byte order (java.nio.ByteOrder#nativeOrder)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 332
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 335
    new-instance v0, Lorg/pytorch/executorch/Tensor$Tensor_float64;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_float64;-><init>(Ljava/nio/DoubleBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_float64-IA;)V

    return-object v0
.end method

.method public static fromBlob(Ljava/nio/FloatBuffer;[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data buffer must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 287
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Shape must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 288
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 290
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    invoke-static {v2, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 291
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v2

    const-string v3, "Data buffer must be direct (java.nio.ByteBuffer#allocateDirect)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v2, "Data buffer must have native byte order (java.nio.ByteOrder#nativeOrder)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 292
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 295
    new-instance v0, Lorg/pytorch/executorch/Tensor$Tensor_float32;

    invoke-direct {v0, p0, p1}, Lorg/pytorch/executorch/Tensor$Tensor_float32;-><init>(Ljava/nio/FloatBuffer;[J)V

    return-object v0
.end method

.method public static fromBlob(Ljava/nio/IntBuffer;[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data buffer must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 267
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Shape must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 268
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 270
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v2

    invoke-static {v2, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 271
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v2

    const-string v3, "Data buffer must be direct (java.nio.ByteBuffer#allocateDirect)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v2, "Data buffer must have native byte order (java.nio.ByteOrder#nativeOrder)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 272
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 275
    new-instance v0, Lorg/pytorch/executorch/Tensor$Tensor_int32;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_int32;-><init>(Ljava/nio/IntBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int32-IA;)V

    return-object v0
.end method

.method public static fromBlob(Ljava/nio/LongBuffer;[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data buffer must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 307
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Shape must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 308
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 309
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 310
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->capacity()I

    move-result v2

    invoke-static {v2, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 311
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v2

    const-string v3, "Data buffer must be direct (java.nio.ByteBuffer#allocateDirect)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v2, "Data buffer must have native byte order (java.nio.ByteOrder#nativeOrder)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 312
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 315
    new-instance v0, Lorg/pytorch/executorch/Tensor$Tensor_int64;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_int64;-><init>(Ljava/nio/LongBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int64-IA;)V

    return-object v0
.end method

.method public static fromBlob([B[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data array must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 141
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "Shape must be not null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 142
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 144
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 145
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->numel([J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/pytorch/executorch/Tensor;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 147
    new-instance p0, Lorg/pytorch/executorch/Tensor$Tensor_int8;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_int8;-><init>(Ljava/nio/ByteBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int8-IA;)V

    return-object p0
.end method

.method public static fromBlob([D[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data array must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 209
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "Shape must be not null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 210
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 212
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 213
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->numel([J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/pytorch/executorch/Tensor;->allocateDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p0}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    .line 215
    new-instance p0, Lorg/pytorch/executorch/Tensor$Tensor_float64;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_float64;-><init>(Ljava/nio/DoubleBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_float64-IA;)V

    return-object p0
.end method

.method public static fromBlob([F[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data array must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 175
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "Shape must be not null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 176
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 178
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 179
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->numel([J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/pytorch/executorch/Tensor;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 181
    new-instance p0, Lorg/pytorch/executorch/Tensor$Tensor_float32;

    invoke-direct {p0, v0, p1}, Lorg/pytorch/executorch/Tensor$Tensor_float32;-><init>(Ljava/nio/FloatBuffer;[J)V

    return-object p0
.end method

.method public static fromBlob([I[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data array must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 158
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "Shape must be not null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 159
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 161
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 162
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->numel([J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/pytorch/executorch/Tensor;->allocateIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 164
    new-instance p0, Lorg/pytorch/executorch/Tensor$Tensor_int32;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_int32;-><init>(Ljava/nio/IntBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int32-IA;)V

    return-object p0
.end method

.method public static fromBlob([J[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data array must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 192
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "Shape must be not null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 193
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 195
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 196
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->numel([J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/pytorch/executorch/Tensor;->allocateLongBuffer(I)Ljava/nio/LongBuffer;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    .line 198
    new-instance p0, Lorg/pytorch/executorch/Tensor$Tensor_int64;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_int64;-><init>(Ljava/nio/LongBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int64-IA;)V

    return-object p0
.end method

.method public static fromBlobUnsigned(Ljava/nio/ByteBuffer;[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data buffer must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 227
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Shape must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 228
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 230
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 231
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    const-string v3, "Data buffer must be direct (java.nio.ByteBuffer#allocateDirect)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v2, "Data buffer must have native byte order (java.nio.ByteOrder#nativeOrder)"

    new-array v1, v1, [Ljava/lang/Object;

    .line 232
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    new-instance v0, Lorg/pytorch/executorch/Tensor$Tensor_uint8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_uint8;-><init>(Ljava/nio/ByteBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_uint8-IA;)V

    return-object v0
.end method

.method public static fromBlobUnsigned([B[J)Lorg/pytorch/executorch/Tensor;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Data array must be not null"

    new-array v4, v1, [Ljava/lang/Object;

    .line 124
    invoke-static {v2, v3, v4}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v2, "Shape must be not null"

    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    invoke-static {v0, v2, v1}, Lorg/pytorch/executorch/Tensor;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 127
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/pytorch/executorch/Tensor;->checkShapeAndDataCapacityConsistency(I[J)V

    .line 128
    invoke-static {p1}, Lorg/pytorch/executorch/Tensor;->numel([J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lorg/pytorch/executorch/Tensor;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 130
    new-instance p0, Lorg/pytorch/executorch/Tensor$Tensor_uint8;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_uint8;-><init>(Ljava/nio/ByteBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_uint8-IA;)V

    return-object p0
.end method

.method private static nativeNewTensor(Ljava/nio/ByteBuffer;[JILcom/facebook/jni/HybridData;)Lorg/pytorch/executorch/Tensor;
    .locals 2

    .line 660
    sget-object v0, Lorg/pytorch/executorch/DType;->FLOAT:Lorg/pytorch/executorch/DType;

    iget v0, v0, Lorg/pytorch/executorch/DType;->jniCode:I

    if-ne v0, p2, :cond_0

    .line 661
    new-instance p2, Lorg/pytorch/executorch/Tensor$Tensor_float32;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lorg/pytorch/executorch/Tensor$Tensor_float32;-><init>(Ljava/nio/FloatBuffer;[J)V

    goto :goto_0

    .line 662
    :cond_0
    sget-object v0, Lorg/pytorch/executorch/DType;->INT32:Lorg/pytorch/executorch/DType;

    iget v0, v0, Lorg/pytorch/executorch/DType;->jniCode:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_1

    .line 663
    new-instance p2, Lorg/pytorch/executorch/Tensor$Tensor_int32;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-direct {p2, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_int32;-><init>(Ljava/nio/IntBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int32-IA;)V

    goto :goto_0

    .line 664
    :cond_1
    sget-object v0, Lorg/pytorch/executorch/DType;->INT64:Lorg/pytorch/executorch/DType;

    iget v0, v0, Lorg/pytorch/executorch/DType;->jniCode:I

    if-ne v0, p2, :cond_2

    .line 665
    new-instance p2, Lorg/pytorch/executorch/Tensor$Tensor_int64;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-direct {p2, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_int64;-><init>(Ljava/nio/LongBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int64-IA;)V

    goto :goto_0

    .line 666
    :cond_2
    sget-object v0, Lorg/pytorch/executorch/DType;->DOUBLE:Lorg/pytorch/executorch/DType;

    iget v0, v0, Lorg/pytorch/executorch/DType;->jniCode:I

    if-ne v0, p2, :cond_3

    .line 667
    new-instance p2, Lorg/pytorch/executorch/Tensor$Tensor_float64;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    invoke-direct {p2, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_float64;-><init>(Ljava/nio/DoubleBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_float64-IA;)V

    goto :goto_0

    .line 668
    :cond_3
    sget-object v0, Lorg/pytorch/executorch/DType;->UINT8:Lorg/pytorch/executorch/DType;

    iget v0, v0, Lorg/pytorch/executorch/DType;->jniCode:I

    if-ne v0, p2, :cond_4

    .line 669
    new-instance p2, Lorg/pytorch/executorch/Tensor$Tensor_uint8;

    invoke-direct {p2, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_uint8;-><init>(Ljava/nio/ByteBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_uint8-IA;)V

    goto :goto_0

    .line 670
    :cond_4
    sget-object v0, Lorg/pytorch/executorch/DType;->INT8:Lorg/pytorch/executorch/DType;

    iget v0, v0, Lorg/pytorch/executorch/DType;->jniCode:I

    if-ne v0, p2, :cond_5

    .line 671
    new-instance p2, Lorg/pytorch/executorch/Tensor$Tensor_int8;

    invoke-direct {p2, p0, p1, v1}, Lorg/pytorch/executorch/Tensor$Tensor_int8;-><init>(Ljava/nio/ByteBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int8-IA;)V

    :goto_0
    iput-object p3, p2, Lorg/pytorch/executorch/Tensor;->mHybridData:Lcom/facebook/jni/HybridData;

    return-object p2

    .line 673
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown Tensor dtype"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static numel([J)J
    .locals 7

    .line 352
    invoke-static {p0}, Lorg/pytorch/executorch/Tensor;->checkShape([J)V

    .line 354
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    int-to-long v5, v1

    mul-long/2addr v5, v3

    long-to-int v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    return-wide v0
.end method


# virtual methods
.method public abstract dtype()Lorg/pytorch/executorch/DType;
.end method

.method dtypeJniCode()I
    .locals 1

    .line 373
    invoke-virtual {p0}, Lorg/pytorch/executorch/Tensor;->dtype()Lorg/pytorch/executorch/DType;

    move-result-object v0

    iget v0, v0, Lorg/pytorch/executorch/DType;->jniCode:I

    return v0
.end method

.method public getDataAsByteArray()[B
    .locals 4

    .line 381
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 382
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tensor of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot return data as byte array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataAsDoubleArray()[D
    .locals 4

    .line 426
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tensor of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot return data as double array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataAsFloatArray()[F
    .locals 4

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 409
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tensor of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot return data as float array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataAsIntArray()[I
    .locals 4

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 400
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tensor of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot return data as int array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataAsLongArray()[J
    .locals 4

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tensor of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot return data as long array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataAsUnsignedByteArray()[B
    .locals 4

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tensor of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot return data as byte array."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getRawDataBuffer()Ljava/nio/Buffer;
    .locals 4

    .line 432
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 433
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tensor of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot return raw data buffer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public numel()J
    .locals 2

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor;->shape:[J

    .line 347
    invoke-static {v0}, Lorg/pytorch/executorch/Tensor;->numel([J)J

    move-result-wide v0

    return-wide v0
.end method

.method public shape()[J
    .locals 2

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor;->shape:[J

    .line 362
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
