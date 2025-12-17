.class public final Lai/onnxruntime/OnnxSparseTensor$CSRCTensor;
.super Lai/onnxruntime/OnnxSparseTensor$SparseTensor;
.source "OnnxSparseTensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CSRCTensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lai/onnxruntime/OnnxSparseTensor$SparseTensor<",
        "Ljava/nio/LongBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private final innerIndices:Ljava/nio/LongBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/LongBuffer;Ljava/nio/LongBuffer;Ljava/nio/Buffer;[JLai/onnxruntime/OnnxJavaType;J)V
    .locals 12

    move-wide/from16 v9, p6

    const/4 v0, 0x1

    new-array v2, v0, [J

    .line 829
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    int-to-long v3, v1

    const/4 v11, 0x0

    aput-wide v3, v2, v11

    new-array v4, v0, [J

    aput-wide v9, v4, v11

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    .line 827
    invoke-direct/range {v0 .. v8}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;-><init>(Ljava/nio/Buffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V

    move-object v1, p2

    iput-object v1, v0, Lai/onnxruntime/OnnxSparseTensor$CSRCTensor;->innerIndices:Ljava/nio/LongBuffer;

    .line 836
    aget-wide v2, p4, v11

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 837
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v2

    const-string v5, ", expected "

    if-nez v4, :cond_1

    .line 844
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v9

    if-nez v2, :cond_0

    return-void

    .line 845
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inner indices should be equal to the number of non-zero elements, found "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 847
    invoke-virtual {p2}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 838
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Outer indices should be equal to the number of rows + 1 in the dense shape, found "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getIndicesType()Lai/onnxruntime/OnnxJavaType;
    .locals 1

    .line 873
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->INT64:Lai/onnxruntime/OnnxJavaType;

    return-object v0
.end method

.method public getInnerIndices()Ljava/nio/LongBuffer;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$CSRCTensor;->innerIndices:Ljava/nio/LongBuffer;

    return-object v0
.end method

.method public getInnerIndicesShape()[J
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    iget-object v1, p0, Lai/onnxruntime/OnnxSparseTensor$CSRCTensor;->innerIndices:Ljava/nio/LongBuffer;

    .line 859
    invoke-virtual {v1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public getSparsityType()Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .locals 1

    .line 878
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->CSRC:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    return-object v0
.end method
