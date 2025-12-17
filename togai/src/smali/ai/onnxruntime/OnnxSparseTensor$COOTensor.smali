.class public final Lai/onnxruntime/OnnxSparseTensor$COOTensor;
.super Lai/onnxruntime/OnnxSparseTensor$SparseTensor;
.source "OnnxSparseTensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "COOTensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lai/onnxruntime/OnnxSparseTensor$SparseTensor<",
        "Ljava/nio/LongBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/LongBuffer;[JLjava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;J)V
    .locals 13

    move-object v9, p2

    move-wide/from16 v10, p6

    const/4 v0, 0x1

    new-array v4, v0, [J

    const/4 v12, 0x0

    aput-wide v10, v4, v12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    .line 770
    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;-><init>(Ljava/nio/Buffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V

    .line 771
    array-length v0, v9

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    array-length v0, v9

    if-eqz v0, :cond_2

    aget-wide v0, v9, v12

    cmp-long v0, v0, v10

    if-nez v0, :cond_2

    .line 778
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide v0

    .line 779
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 786
    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    return-void

    .line 787
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected data.remaining() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p3 .. p3}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to equal numNonZero - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected number of indices found in buffer, expected "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 784
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 774
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid indices shape, expected [numNonZero, dimension] or [numNonZero] found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIndicesType()Lai/onnxruntime/OnnxJavaType;
    .locals 1

    .line 797
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    return-object v0
.end method

.method public getSparsityType()Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .locals 1

    .line 802
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->COO:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    return-object v0
.end method
