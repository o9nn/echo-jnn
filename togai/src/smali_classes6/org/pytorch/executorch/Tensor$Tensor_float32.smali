.class Lorg/pytorch/executorch/Tensor$Tensor_float32;
.super Lorg/pytorch/executorch/Tensor;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pytorch/executorch/Tensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tensor_float32"
.end annotation


# instance fields
.field private final data:Ljava/nio/FloatBuffer;


# direct methods
.method constructor <init>(Ljava/nio/FloatBuffer;[J)V
    .locals 1

    const/4 v0, 0x0

    .line 536
    invoke-direct {p0, p2, v0}, Lorg/pytorch/executorch/Tensor;-><init>([JLorg/pytorch/executorch/Tensor-IA;)V

    iput-object p1, p0, Lorg/pytorch/executorch/Tensor$Tensor_float32;->data:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public dtype()Lorg/pytorch/executorch/DType;
    .locals 1

    .line 550
    sget-object v0, Lorg/pytorch/executorch/DType;->FLOAT:Lorg/pytorch/executorch/DType;

    return-object v0
.end method

.method public getDataAsFloatArray()[F
    .locals 2

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_float32;->data:Ljava/nio/FloatBuffer;

    .line 542
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_float32;->data:Ljava/nio/FloatBuffer;

    .line 543
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/pytorch/executorch/Tensor$Tensor_float32;->data:Ljava/nio/FloatBuffer;

    .line 544
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method getRawDataBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_float32;->data:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 560
    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_float32;->shape:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tensor(%s, dtype=torch.float32)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
