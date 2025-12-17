.class Lorg/pytorch/executorch/Tensor$Tensor_int64;
.super Lorg/pytorch/executorch/Tensor;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pytorch/executorch/Tensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tensor_int64"
.end annotation


# instance fields
.field private final data:Ljava/nio/LongBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/LongBuffer;[J)V
    .locals 1

    const/4 v0, 0x0

    .line 568
    invoke-direct {p0, p2, v0}, Lorg/pytorch/executorch/Tensor;-><init>([JLorg/pytorch/executorch/Tensor-IA;)V

    iput-object p1, p0, Lorg/pytorch/executorch/Tensor$Tensor_int64;->data:Ljava/nio/LongBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/LongBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int64-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/pytorch/executorch/Tensor$Tensor_int64;-><init>(Ljava/nio/LongBuffer;[J)V

    return-void
.end method


# virtual methods
.method public dtype()Lorg/pytorch/executorch/DType;
    .locals 1

    .line 574
    sget-object v0, Lorg/pytorch/executorch/DType;->INT64:Lorg/pytorch/executorch/DType;

    return-object v0
.end method

.method public getDataAsLongArray()[J
    .locals 2

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_int64;->data:Ljava/nio/LongBuffer;

    .line 584
    invoke-virtual {v0}, Ljava/nio/LongBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/LongBuffer;

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_int64;->data:Ljava/nio/LongBuffer;

    .line 585
    invoke-virtual {v0}, Ljava/nio/LongBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [J

    iget-object v1, p0, Lorg/pytorch/executorch/Tensor$Tensor_int64;->data:Ljava/nio/LongBuffer;

    .line 586
    invoke-virtual {v1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    return-object v0
.end method

.method getRawDataBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_int64;->data:Ljava/nio/LongBuffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 592
    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_int64;->shape:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tensor(%s, dtype=torch.int64)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
