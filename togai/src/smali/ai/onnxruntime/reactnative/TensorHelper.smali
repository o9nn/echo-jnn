.class public Lai/onnxruntime/reactnative/TensorHelper;
.super Ljava/lang/Object;
.source "TensorHelper.java"


# static fields
.field public static final JsTensorTypeBool:Ljava/lang/String; = "bool"

.field public static final JsTensorTypeByte:Ljava/lang/String; = "int8"

.field public static final JsTensorTypeDouble:Ljava/lang/String; = "float64"

.field public static final JsTensorTypeFloat:Ljava/lang/String; = "float32"

.field public static final JsTensorTypeInt:Ljava/lang/String; = "int32"

.field public static final JsTensorTypeLong:Ljava/lang/String; = "int64"

.field public static final JsTensorTypeShort:Ljava/lang/String; = "int16"

.field public static final JsTensorTypeString:Ljava/lang/String; = "string"

.field private static final JsTensorTypeToOnnxTensorTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/TensorInfo$OnnxTensorType;",
            ">;"
        }
    .end annotation
.end field

.field public static final JsTensorTypeUnsignedByte:Ljava/lang/String; = "uint8"

.field private static final OnnxTensorTypeToJsTensorTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lai/onnxruntime/TensorInfo$OnnxTensorType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/16 v0, 0x9

    new-array v1, v0, [[Ljava/lang/Object;

    .line 244
    sget-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v3, "float32"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    sget-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v5, "int8"

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v1, v6

    sget-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string/jumbo v7, "uint8"

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v1, v8

    sget-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v9, "int16"

    filled-new-array {v9, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v10, 0x3

    aput-object v2, v1, v10

    sget-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v11, "int32"

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v12, 0x4

    aput-object v2, v1, v12

    sget-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v13, "int64"

    filled-new-array {v13, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v14, 0x5

    aput-object v2, v1, v14

    sget-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string/jumbo v15, "string"

    filled-new-array {v15, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v16, 0x6

    aput-object v2, v1, v16

    sget-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v14, "bool"

    filled-new-array {v14, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v17, 0x7

    aput-object v2, v1, v17

    sget-object v2, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v12, "float64"

    filled-new-array {v12, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v18, 0x8

    aput-object v2, v1, v18

    .line 246
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lai/onnxruntime/reactnative/TensorHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lai/onnxruntime/reactnative/TensorHelper$$ExternalSyntheticLambda0;-><init>()V

    new-instance v10, Lai/onnxruntime/reactnative/TensorHelper$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lai/onnxruntime/reactnative/TensorHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 257
    invoke-static {v2, v10}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sput-object v1, Lai/onnxruntime/reactnative/TensorHelper;->JsTensorTypeToOnnxTensorTypeMap:Ljava/util/Map;

    new-array v0, v0, [[Ljava/lang/Object;

    .line 267
    sget-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_FLOAT:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UINT8:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v8

    sget-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT16:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    filled-new-array {v1, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT32:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    filled-new-array {v1, v11}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_INT64:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    filled-new-array {v1, v13}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    filled-new-array {v1, v15}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v16

    sget-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_BOOL:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    filled-new-array {v1, v14}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v17

    sget-object v1, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_DOUBLE:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v18

    .line 269
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lai/onnxruntime/reactnative/TensorHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lai/onnxruntime/reactnative/TensorHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lai/onnxruntime/reactnative/TensorHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lai/onnxruntime/reactnative/TensorHelper$$ExternalSyntheticLambda3;-><init>()V

    .line 280
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lai/onnxruntime/reactnative/TensorHelper;->OnnxTensorTypeToJsTensorTypeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createInputTensor(Lai/onnxruntime/TensorInfo$OnnxTensorType;[JLjava/nio/ByteBuffer;Lai/onnxruntime/OrtEnvironment;)Lai/onnxruntime/OnnxTensor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    sget-object v0, Lai/onnxruntime/reactnative/TensorHelper$1;->$SwitchMap$ai$onnxruntime$TensorInfo$OnnxTensorType:[I

    invoke-virtual {p0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 188
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :pswitch_0
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->BOOL:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p3, p2, p1, p0}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    goto :goto_0

    .line 174
    :pswitch_1
    sget-object p0, Lai/onnxruntime/OnnxJavaType;->UINT8:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p3, p2, p1, p0}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[JLai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    .line 169
    invoke-static {p3, p0, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/DoubleBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    goto :goto_0

    .line 163
    :pswitch_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    .line 164
    invoke-static {p3, p0, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/LongBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    goto :goto_0

    .line 158
    :pswitch_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    .line 159
    invoke-static {p3, p0, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/IntBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    goto :goto_0

    .line 153
    :pswitch_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    .line 154
    invoke-static {p3, p0, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ShortBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    goto :goto_0

    .line 149
    :pswitch_6
    invoke-static {p3, p2, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/ByteBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    goto :goto_0

    .line 143
    :pswitch_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 144
    invoke-static {p3, p0, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createInputTensor(Lcom/facebook/react/modules/blob/BlobModule;Lcom/facebook/react/bridge/ReadableMap;Lai/onnxruntime/OrtEnvironment;)Lai/onnxruntime/OnnxTensor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "dims"

    .line 54
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    move v3, v2

    .line 56
    :goto_0
    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 57
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "type"

    .line 61
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lai/onnxruntime/reactnative/TensorHelper;->getOnnxTensorType(Ljava/lang/String;)Lai/onnxruntime/TensorInfo$OnnxTensorType;

    move-result-object v0

    .line 65
    sget-object v3, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v4, "data"

    if-ne v0, v3, :cond_2

    .line 66
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 68
    :goto_1
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 69
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_1
    invoke-static {p2, p1, v1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;[Ljava/lang/String;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    goto :goto_2

    .line 73
    :cond_2
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    const-string v2, "blobId"

    .line 74
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "offset"

    .line 75
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "size"

    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v2, v3, p1}, Lcom/facebook/react/modules/blob/BlobModule;->resolve(Ljava/lang/String;II)[B

    move-result-object p1

    .line 76
    invoke-virtual {p0, v2}, Lcom/facebook/react/modules/blob/BlobModule;->remove(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 78
    invoke-static {v0, v1, p0, p2}, Lai/onnxruntime/reactnative/TensorHelper;->createInputTensor(Lai/onnxruntime/TensorInfo$OnnxTensorType;[JLjava/nio/ByteBuffer;Lai/onnxruntime/OrtEnvironment;)Lai/onnxruntime/OnnxTensor;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static createOutputTensor(Lcom/facebook/react/modules/blob/BlobModule;Lai/onnxruntime/OrtSession$Result;)Lcom/facebook/react/bridge/WritableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lai/onnxruntime/OrtSession$Result;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 92
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/OnnxValue;

    .line 96
    invoke-interface {v1}, Lai/onnxruntime/OnnxValue;->getType()Lai/onnxruntime/OnnxValue$OnnxValueType;

    move-result-object v3

    sget-object v4, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_TENSOR:Lai/onnxruntime/OnnxValue$OnnxValueType;

    if-ne v3, v4, :cond_3

    .line 100
    check-cast v1, Lai/onnxruntime/OnnxTensor;

    .line 101
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 104
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 105
    invoke-virtual {v1}, Lai/onnxruntime/OnnxTensor;->getInfo()Lai/onnxruntime/TensorInfo;

    move-result-object v5

    invoke-virtual {v5}, Lai/onnxruntime/TensorInfo;->getShape()[J

    move-result-object v5

    .line 106
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v6, :cond_0

    aget-wide v9, v5, v8

    long-to-int v9, v9

    .line 107
    invoke-interface {v4, v9}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "dims"

    .line 109
    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 112
    invoke-virtual {v1}, Lai/onnxruntime/OnnxTensor;->getInfo()Lai/onnxruntime/TensorInfo;

    move-result-object v4

    iget-object v4, v4, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-static {v4}, Lai/onnxruntime/reactnative/TensorHelper;->getJsTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "type"

    invoke-interface {v3, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1}, Lai/onnxruntime/OnnxTensor;->getInfo()Lai/onnxruntime/TensorInfo;

    move-result-object v4

    iget-object v4, v4, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    sget-object v5, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    const-string v6, "data"

    if-ne v4, v5, :cond_2

    .line 116
    invoke-virtual {v1}, Lai/onnxruntime/OnnxTensor;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v4

    .line 118
    array-length v5, v1

    :goto_2
    if-ge v7, v5, :cond_1

    aget-object v8, v1, v7

    .line 119
    invoke-interface {v4, v8}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 121
    :cond_1
    invoke-interface {v3, v6, v4}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    goto :goto_3

    .line 124
    :cond_2
    invoke-static {v1}, Lai/onnxruntime/reactnative/TensorHelper;->createOutputTensor(Lai/onnxruntime/OnnxTensor;)[B

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v4

    const-string v5, "blobId"

    .line 126
    invoke-virtual {p0, v1}, Lcom/facebook/react/modules/blob/BlobModule;->store([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "offset"

    .line 127
    invoke-interface {v4, v5, v7}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "size"

    .line 128
    array-length v1, v1

    invoke-interface {v4, v5, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 129
    invoke-interface {v3, v6, v4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 132
    :goto_3
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_0

    .line 97
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Not supported type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lai/onnxruntime/OnnxValue;->getType()Lai/onnxruntime/OnnxValue$OnnxValueType;

    move-result-object v0

    invoke-virtual {v0}, Lai/onnxruntime/OnnxValue$OnnxValueType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method

.method private static createOutputTensor(Lai/onnxruntime/OnnxTensor;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->getInfo()Lai/onnxruntime/TensorInfo;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->getInfo()Lai/onnxruntime/TensorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->getShape()[J

    move-result-object v1

    invoke-static {v1}, Lai/onnxruntime/OrtUtil;->elementCount([J)J

    move-result-wide v1

    long-to-int v1, v1

    .line 200
    sget-object v2, Lai/onnxruntime/reactnative/TensorHelper$1;->$SwitchMap$ai$onnxruntime$TensorInfo$OnnxTensorType:[I

    iget-object v3, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-virtual {v3}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 238
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lai/onnxruntime/TensorInfo;->onnxType:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    invoke-virtual {v0}, Lai/onnxruntime/TensorInfo$OnnxTensorType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :pswitch_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    :pswitch_1
    mul-int/lit8 v1, v1, 0x8

    .line 223
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->getDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    goto/16 :goto_0

    :pswitch_2
    mul-int/lit8 v1, v1, 0x8

    .line 219
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->getLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v1, v1, 0x4

    .line 215
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->getIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_0

    :pswitch_4
    mul-int/lit8 v1, v1, 0x2

    .line 211
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->getShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    goto :goto_0

    .line 207
    :pswitch_5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_6
    mul-int/lit8 v1, v1, 0x4

    .line 202
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lai/onnxruntime/OnnxTensor;->getFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    .line 241
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static getJsTensorType(Lai/onnxruntime/TensorInfo$OnnxTensorType;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lai/onnxruntime/reactnative/TensorHelper;->OnnxTensorTypeToJsTensorTypeMap:Ljava/util/Map;

    .line 283
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method private static getOnnxTensorType(Ljava/lang/String;)Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .locals 2

    sget-object v0, Lai/onnxruntime/reactnative/TensorHelper;->JsTensorTypeToOnnxTensorTypeMap:Ljava/util/Map;

    .line 260
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0

    .line 263
    :cond_0
    sget-object p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;->ONNX_TENSOR_ELEMENT_DATA_TYPE_UNDEFINED:Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0
.end method

.method static synthetic lambda$static$0([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 257
    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$static$1([Ljava/lang/Object;)Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .locals 1

    const/4 v0, 0x1

    .line 257
    aget-object p0, p0, v0

    check-cast p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0
.end method

.method static synthetic lambda$static$2([Ljava/lang/Object;)Lai/onnxruntime/TensorInfo$OnnxTensorType;
    .locals 1

    const/4 v0, 0x0

    .line 280
    aget-object p0, p0, v0

    check-cast p0, Lai/onnxruntime/TensorInfo$OnnxTensorType;

    return-object p0
.end method

.method static synthetic lambda$static$3([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 280
    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
