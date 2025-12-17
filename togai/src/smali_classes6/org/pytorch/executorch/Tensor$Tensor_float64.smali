.class Lorg/pytorch/executorch/Tensor$Tensor_float64;
.super Lorg/pytorch/executorch/Tensor;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pytorch/executorch/Tensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tensor_float64"
.end annotation


# instance fields
.field private final data:Ljava/nio/DoubleBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/DoubleBuffer;[J)V
    .locals 1

    const/4 v0, 0x0

    .line 600
    invoke-direct {p0, p2, v0}, Lorg/pytorch/executorch/Tensor;-><init>([JLorg/pytorch/executorch/Tensor-IA;)V

    iput-object p1, p0, Lorg/pytorch/executorch/Tensor$Tensor_float64;->data:Ljava/nio/DoubleBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/DoubleBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_float64-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/pytorch/executorch/Tensor$Tensor_float64;-><init>(Ljava/nio/DoubleBuffer;[J)V

    return-void
.end method


# virtual methods
.method public dtype()Lorg/pytorch/executorch/DType;
    .locals 1

    .line 606
    sget-object v0, Lorg/pytorch/executorch/DType;->DOUBLE:Lorg/pytorch/executorch/DType;

    return-object v0
.end method

.method public getDataAsDoubleArray()[D
    .locals 2

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_float64;->data:Ljava/nio/DoubleBuffer;

    .line 616
    invoke-virtual {v0}, Ljava/nio/DoubleBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/DoubleBuffer;

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_float64;->data:Ljava/nio/DoubleBuffer;

    .line 617
    invoke-virtual {v0}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [D

    iget-object v1, p0, Lorg/pytorch/executorch/Tensor$Tensor_float64;->data:Ljava/nio/DoubleBuffer;

    .line 618
    invoke-virtual {v1, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method getRawDataBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_float64;->data:Ljava/nio/DoubleBuffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 624
    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_float64;->shape:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tensor(%s, dtype=torch.float64)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
