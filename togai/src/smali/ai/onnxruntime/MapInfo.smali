.class public Lai/onnxruntime/MapInfo;
.super Ljava/lang/Object;
.source "MapInfo.java"

# interfaces
.implements Lai/onnxruntime/ValueInfo;


# instance fields
.field public final keyType:Lai/onnxruntime/OnnxJavaType;

.field public final size:I

.field public final valueType:Lai/onnxruntime/OnnxJavaType;


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lai/onnxruntime/MapInfo;->size:I

    .line 58
    invoke-static {p2}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromInt(I)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object p1

    invoke-static {p1}, Lai/onnxruntime/OnnxJavaType;->mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;

    move-result-object p1

    iput-object p1, p0, Lai/onnxruntime/MapInfo;->keyType:Lai/onnxruntime/OnnxJavaType;

    .line 59
    invoke-static {p3}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->mapFromInt(I)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object p1

    invoke-static {p1}, Lai/onnxruntime/OnnxJavaType;->mapFromOnnxTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Lai/onnxruntime/OnnxJavaType;

    move-result-object p1

    iput-object p1, p0, Lai/onnxruntime/MapInfo;->valueType:Lai/onnxruntime/OnnxJavaType;

    return-void
.end method

.method constructor <init>(ILai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OnnxJavaType;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lai/onnxruntime/MapInfo;->size:I

    iput-object p2, p0, Lai/onnxruntime/MapInfo;->keyType:Lai/onnxruntime/OnnxJavaType;

    iput-object p3, p0, Lai/onnxruntime/MapInfo;->valueType:Lai/onnxruntime/OnnxJavaType;

    return-void
.end method

.method constructor <init>(Lai/onnxruntime/OnnxJavaType;Lai/onnxruntime/OnnxJavaType;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lai/onnxruntime/MapInfo;->size:I

    iput-object p1, p0, Lai/onnxruntime/MapInfo;->keyType:Lai/onnxruntime/OnnxJavaType;

    iput-object p2, p0, Lai/onnxruntime/MapInfo;->valueType:Lai/onnxruntime/OnnxJavaType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lai/onnxruntime/MapInfo;->size:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "MapInfo(size=UNKNOWN"

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MapInfo(size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lai/onnxruntime/MapInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",keyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lai/onnxruntime/MapInfo;->keyType:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",valueType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lai/onnxruntime/MapInfo;->valueType:Lai/onnxruntime/OnnxJavaType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxJavaType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
