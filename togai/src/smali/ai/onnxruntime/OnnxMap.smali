.class public Lai/onnxruntime/OnnxMap;
.super Ljava/lang/Object;
.source "OnnxMap.java"

# interfaces
.implements Lai/onnxruntime/OnnxValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OnnxMap$OnnxMapValueType;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field final allocatorHandle:J

.field private closed:Z

.field private final info:Lai/onnxruntime/MapInfo;

.field final nativeHandle:J

.field private final stringKeys:Z

.field private final valueType:Lai/onnxruntime/OnnxMap$OnnxMapValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lai/onnxruntime/OnnxMap;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/OnnxMap;->logger:Ljava/util/logging/Logger;

    .line 24
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(JJLai/onnxruntime/MapInfo;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lai/onnxruntime/OnnxMap;->nativeHandle:J

    iput-wide p3, p0, Lai/onnxruntime/OnnxMap;->allocatorHandle:J

    iput-object p5, p0, Lai/onnxruntime/OnnxMap;->info:Lai/onnxruntime/MapInfo;

    .line 127
    iget-object p1, p5, Lai/onnxruntime/MapInfo;->keyType:Lai/onnxruntime/OnnxJavaType;

    sget-object p2, Lai/onnxruntime/OnnxJavaType;->STRING:Lai/onnxruntime/OnnxJavaType;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lai/onnxruntime/OnnxMap;->stringKeys:Z

    .line 128
    iget-object p1, p5, Lai/onnxruntime/MapInfo;->valueType:Lai/onnxruntime/OnnxJavaType;

    invoke-static {p1}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->mapFromOnnxJavaType(Lai/onnxruntime/OnnxJavaType;)Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    move-result-object p1

    iput-object p1, p0, Lai/onnxruntime/OnnxMap;->valueType:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    iput-boolean p3, p0, Lai/onnxruntime/OnnxMap;->closed:Z

    return-void
.end method

.method private native close(JJ)V
.end method

.method private native getDoubleValues(JJJ)[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getFloatValues(JJJ)[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getLongKeys(JJJ)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getLongValues(JJJ)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private getMapKeys()[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    iget-boolean v0, p0, Lai/onnxruntime/OnnxMap;->stringKeys:Z

    if-eqz v0, :cond_0

    .line 172
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxMap;->nativeHandle:J

    iget-wide v6, p0, Lai/onnxruntime/OnnxMap;->allocatorHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OnnxMap;->getStringKeys(JJJ)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxMap;->nativeHandle:J

    iget-wide v6, p0, Lai/onnxruntime/OnnxMap;->allocatorHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OnnxMap;->getLongKeys(JJJ)[J

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/stream/LongStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getMapValues()[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 187
    sget-object v0, Lai/onnxruntime/OnnxMap$1;->$SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType:[I

    iget-object v1, p0, Lai/onnxruntime/OnnxMap;->valueType:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    invoke-virtual {v1}, Lai/onnxruntime/OnnxMap$OnnxMapValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 211
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OnnxMap;->nativeHandle:J

    iget-wide v7, p0, Lai/onnxruntime/OnnxMap;->allocatorHandle:J

    move-object v2, p0

    .line 212
    invoke-direct/range {v2 .. v8}, Lai/onnxruntime/OnnxMap;->getDoubleValues(JJJ)[D

    move-result-object v0

    .line 211
    invoke-static {v0}, Ljava/util/Arrays;->stream([D)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid or unknown valueType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lai/onnxruntime/OnnxMap;->valueType:Lai/onnxruntime/OnnxMap$OnnxMapValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    sget-wide v3, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v5, p0, Lai/onnxruntime/OnnxMap;->nativeHandle:J

    iget-wide v7, p0, Lai/onnxruntime/OnnxMap;->allocatorHandle:J

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lai/onnxruntime/OnnxMap;->getFloatValues(JJJ)[F

    move-result-object v0

    .line 202
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    .line 203
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 205
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 194
    :cond_3
    sget-wide v4, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v6, p0, Lai/onnxruntime/OnnxMap;->nativeHandle:J

    iget-wide v8, p0, Lai/onnxruntime/OnnxMap;->allocatorHandle:J

    move-object v3, p0

    .line 195
    invoke-direct/range {v3 .. v9}, Lai/onnxruntime/OnnxMap;->getLongValues(JJJ)[J

    move-result-object v0

    .line 194
    invoke-static {v0}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/stream/LongStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 190
    :cond_4
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OnnxMap;->nativeHandle:J

    iget-wide v6, p0, Lai/onnxruntime/OnnxMap;->allocatorHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OnnxMap;->getStringValues(JJJ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native getStringKeys(JJJ)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native getStringValues(JJJ)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method


# virtual methods
.method protected checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OnnxMap;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed OnnxValue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OnnxMap;->closed:Z

    if-nez v0, :cond_0

    .line 240
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OnnxMap;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OnnxMap;->close(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OnnxMap;->closed:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lai/onnxruntime/OnnxMap;->logger:Ljava/util/logging/Logger;

    const-string v1, "Closing an already closed map."

    .line 243
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInfo()Lai/onnxruntime/MapInfo;
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxMap;->info:Lai/onnxruntime/MapInfo;

    return-object v0
.end method

.method public bridge synthetic getInfo()Lai/onnxruntime/ValueInfo;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lai/onnxruntime/OnnxMap;->getInfo()Lai/onnxruntime/MapInfo;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lai/onnxruntime/OnnxValue$OnnxValueType;
    .locals 1

    .line 143
    sget-object v0, Lai/onnxruntime/OnnxValue$OnnxValueType;->ONNX_TYPE_MAP:Lai/onnxruntime/OnnxValue$OnnxValueType;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lai/onnxruntime/OnnxMap;->getValue()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lai/onnxruntime/OnnxMap;->checkClosed()V

    .line 155
    invoke-direct {p0}, Lai/onnxruntime/OnnxMap;->getMapKeys()[Ljava/lang/Object;

    move-result-object v0

    .line 156
    invoke-direct {p0}, Lai/onnxruntime/OnnxMap;->getMapValues()[Ljava/lang/Object;

    move-result-object v1

    .line 157
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v0

    invoke-static {v3}, Lai/onnxruntime/OrtUtil;->capacityFromSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v3, 0x0

    .line 158
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 159
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lai/onnxruntime/OnnxMap;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lai/onnxruntime/OnnxMap;->info:Lai/onnxruntime/MapInfo;

    .line 138
    iget v0, v0, Lai/onnxruntime/MapInfo;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ONNXMap(size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lai/onnxruntime/OnnxMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lai/onnxruntime/OnnxMap;->info:Lai/onnxruntime/MapInfo;

    invoke-virtual {v1}, Lai/onnxruntime/MapInfo;->toString()Ljava/lang/String;

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
