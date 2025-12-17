.class Lorg/pytorch/executorch/Tensor$Tensor_int32;
.super Lorg/pytorch/executorch/Tensor;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pytorch/executorch/Tensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tensor_int32"
.end annotation


# instance fields
.field private final data:Ljava/nio/IntBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/IntBuffer;[J)V
    .locals 1

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, p2, v0}, Lorg/pytorch/executorch/Tensor;-><init>([JLorg/pytorch/executorch/Tensor-IA;)V

    iput-object p1, p0, Lorg/pytorch/executorch/Tensor$Tensor_int32;->data:Ljava/nio/IntBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/IntBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_int32-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/pytorch/executorch/Tensor$Tensor_int32;-><init>(Ljava/nio/IntBuffer;[J)V

    return-void
.end method


# virtual methods
.method public dtype()Lorg/pytorch/executorch/DType;
    .locals 1

    .line 510
    sget-object v0, Lorg/pytorch/executorch/DType;->INT32:Lorg/pytorch/executorch/DType;

    return-object v0
.end method

.method public getDataAsIntArray()[I
    .locals 2

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_int32;->data:Ljava/nio/IntBuffer;

    .line 520
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/IntBuffer;

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_int32;->data:Ljava/nio/IntBuffer;

    .line 521
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/pytorch/executorch/Tensor$Tensor_int32;->data:Ljava/nio/IntBuffer;

    .line 522
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0
.end method

.method getRawDataBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_int32;->data:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 528
    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_int32;->shape:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tensor(%s, dtype=torch.int32)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
