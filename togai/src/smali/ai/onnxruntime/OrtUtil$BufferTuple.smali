.class final Lai/onnxruntime/OrtUtil$BufferTuple;
.super Ljava/lang/Object;
.source "OrtUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferTuple"
.end annotation


# instance fields
.field final byteSize:J

.field final data:Ljava/nio/Buffer;

.field final isCopy:Z

.field final pos:I

.field final size:J


# direct methods
.method constructor <init>(Ljava/nio/Buffer;IJJZ)V
    .locals 0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->data:Ljava/nio/Buffer;

    iput p2, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->pos:I

    iput-wide p3, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->byteSize:J

    iput-wide p5, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->size:J

    iput-boolean p7, p0, Lai/onnxruntime/OrtUtil$BufferTuple;->isCopy:Z

    return-void
.end method
