.class public abstract Lai/onnxruntime/OnnxSparseTensor$SparseTensor;
.super Ljava/lang/Object;
.source "OnnxSparseTensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OnnxSparseTensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SparseTensor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/nio/Buffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final denseShape:[J

.field final indices:Ljava/nio/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final indicesShape:[J

.field private final numNonZero:J

.field private final type:Lai/onnxruntime/OnnxJavaType;

.field final values:Ljava/nio/Buffer;

.field private final valuesShape:[J


# direct methods
.method constructor <init>(Ljava/nio/Buffer;[JLjava/nio/Buffer;[J[JLai/onnxruntime/OnnxJavaType;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[J",
            "Ljava/nio/Buffer;",
            "[J[J",
            "Lai/onnxruntime/OnnxJavaType;",
            "J)V"
        }
    .end annotation

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->indices:Ljava/nio/Buffer;

    iput-object p2, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->indicesShape:[J

    iput-object p3, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->values:Ljava/nio/Buffer;

    iput-object p4, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->valuesShape:[J

    iput-object p5, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->denseShape:[J

    iput-object p6, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->type:Lai/onnxruntime/OnnxJavaType;

    iput-wide p7, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->numNonZero:J

    .line 658
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    int-to-long p1, p1

    cmp-long p1, p1, p7

    if-nez p1, :cond_1

    .line 666
    sget-object p1, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    if-eq p6, p1, :cond_0

    return-void

    .line 667
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "String SparseTensors are not supported."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 659
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Expected numNonZero and data.remaining to be equal, found "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " and "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 663
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " respectively"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDenseShape()[J
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->denseShape:[J

    return-object v0
.end method

.method public getIndices()Ljava/nio/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->indices:Ljava/nio/Buffer;

    return-object v0
.end method

.method public getIndicesShape()[J
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->indicesShape:[J

    return-object v0
.end method

.method public abstract getIndicesType()Lai/onnxruntime/OnnxJavaType;
.end method

.method public getNumNonZeroElements()J
    .locals 2

    iget-wide v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->numNonZero:J

    return-wide v0
.end method

.method public abstract getSparsityType()Lai/onnxruntime/OnnxSparseTensor$SparseTensorType;
.end method

.method public getType()Lai/onnxruntime/OnnxJavaType;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->type:Lai/onnxruntime/OnnxJavaType;

    return-object v0
.end method

.method public getValues()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->values:Ljava/nio/Buffer;

    return-object v0
.end method

.method public getValuesShape()[J
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxSparseTensor$SparseTensor;->valuesShape:[J

    return-object v0
.end method
