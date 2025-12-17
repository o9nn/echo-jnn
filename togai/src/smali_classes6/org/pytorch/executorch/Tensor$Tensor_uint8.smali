.class Lorg/pytorch/executorch/Tensor$Tensor_uint8;
.super Lorg/pytorch/executorch/Tensor;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pytorch/executorch/Tensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tensor_uint8"
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;[J)V
    .locals 1

    const/4 v0, 0x0

    .line 440
    invoke-direct {p0, p2, v0}, Lorg/pytorch/executorch/Tensor;-><init>([JLorg/pytorch/executorch/Tensor-IA;)V

    iput-object p1, p0, Lorg/pytorch/executorch/Tensor$Tensor_uint8;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;[JLorg/pytorch/executorch/Tensor$Tensor_uint8-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/pytorch/executorch/Tensor$Tensor_uint8;-><init>(Ljava/nio/ByteBuffer;[J)V

    return-void
.end method


# virtual methods
.method public dtype()Lorg/pytorch/executorch/DType;
    .locals 1

    .line 446
    sget-object v0, Lorg/pytorch/executorch/DType;->UINT8:Lorg/pytorch/executorch/DType;

    return-object v0
.end method

.method public getDataAsUnsignedByteArray()[B
    .locals 2

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_uint8;->data:Ljava/nio/ByteBuffer;

    .line 456
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_uint8;->data:Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/pytorch/executorch/Tensor$Tensor_uint8;->data:Ljava/nio/ByteBuffer;

    .line 458
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method getRawDataBuffer()Ljava/nio/Buffer;
    .locals 1

    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_uint8;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 464
    iget-object v0, p0, Lorg/pytorch/executorch/Tensor$Tensor_uint8;->shape:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Tensor(%s, dtype=torch.uint8)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
