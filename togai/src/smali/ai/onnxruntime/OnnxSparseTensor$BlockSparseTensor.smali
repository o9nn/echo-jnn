.class public final Lai/onnxruntime/OnnxSparseTensor$BlockSparseTensor;
.super Lai/onnxruntime/OnnxSparseTensor$SparseTensor;
.source "OnnxSparseTensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockSparseTensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lai/onnxruntime/OnnxSparseTensor$SparseTensor<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/IntBuffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V
    .locals 2

    .line 903
    invoke-direct/range {p0 .. p8}, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;-><init>(Ljava/nio/Buffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V

    .line 904
    invoke-static {p4}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide p5

    cmp-long p5, p5, p7

    const-string p6, "Expected "

    if-nez p5, :cond_4

    .line 911
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p5

    int-to-long v0, p5

    cmp-long p5, p7, v0

    if-nez p5, :cond_3

    .line 915
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide p7

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result p3

    int-to-long v0, p3

    cmp-long p3, p7, v0

    if-nez p3, :cond_2

    .line 922
    array-length p1, p4

    const/4 p3, 0x3

    if-lt p1, p3, :cond_1

    .line 927
    array-length p1, p2

    const/4 p3, 0x2

    if-lt p1, p3, :cond_0

    return-void

    .line 928
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Expected [numBlocks, co-ordinates] or larger, but indices shape was "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 930
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 923
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Expected [numBlocks, blockSize, blockSize] or larger, but data shape was "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-static {p4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 916
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 918
    invoke-static {p2}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide p5

    invoke-virtual {p4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " elements in the indices buffer, found "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 920
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 912
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " elements in the data buffer, found "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 913
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 905
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " entries in the data shape, found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 909
    invoke-static {p4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getIndicesType()Lai/onnxruntime/OnnxJavaType;
    .locals 1

    .line 936
    sget-object v0, Lai/onnxruntime/OnnxJavaType;->INT32:Lai/onnxruntime/OnnxJavaType;

    return-object v0
.end method

.method public getSparsityType()Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
    .locals 1

    .line 941
    sget-object v0, Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;->BLOCK_SPARSE:Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;

    return-object v0
.end method
