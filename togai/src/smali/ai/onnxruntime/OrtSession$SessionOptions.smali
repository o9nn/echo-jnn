.class public Lai/onnxruntime/OrtSession$SessionOptions;
.super Ljava/lang/Object;
.source "OrtSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/onnxruntime/OrtSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;,
        Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final configEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final customLibraryHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 669
    :try_start_0
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 671
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load onnx-runtime library"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->closed:Z

    .line 685
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    invoke-direct {p0, v0, v1}, Lai/onnxruntime/OrtSession$SessionOptions;->createOptions(J)J

    move-result-wide v0

    iput-wide v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 687
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->configEntries:Ljava/util/Map;

    return-void
.end method

.method private native addACL(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addArmNN(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addCPU(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addCUDA(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addCUDAV2(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addConfigEntry(JJLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addCoreML(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addDirectML(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addDnnl(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addExecutionProvider(JJLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addExternalInitializers(JJ[Ljava/lang/String;[J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addFreeDimensionOverrideByName(JJLjava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addInitializer(JJLjava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addNnapi(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addOpenVINO(JJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addROCM(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addTensorrt(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addTensorrtV2(JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native addTvm(JJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to use a closed SessionOptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native closeCustomLibraries([J)V
.end method

.method private native closeOptions(JJ)V
.end method

.method private native createOptions(J)J
.end method

.method private native disablePerSessionThreads(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native disableProfiling(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native enableProfiling(JJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native registerCustomOpLibrary(JJLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native registerCustomOpsUsingFunction(JJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setCPUArenaAllocator(JJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setExecutionMode(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setInterOpNumThreads(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setIntraOpNumThreads(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setLoggerId(JJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setMemoryPatternOptimization(JJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setOptimizationLevel(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setOptimizationModelFilePath(JJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setSessionLogLevel(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method

.method private native setSessionLogVerbosityLevel(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation
.end method


# virtual methods
.method public addACL(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1184
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1185
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addACL(JJI)V

    return-void
.end method

.method public addArmNN(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1195
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1196
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addArmNN(JJI)V

    return-void
.end method

.method public addCPU(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1067
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1068
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addCPU(JJI)V

    return-void
.end method

.method public addCUDA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 997
    invoke-virtual {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addCUDA(I)V

    return-void
.end method

.method public addCUDA(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1007
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1008
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractCUDA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addCUDA(JJI)V

    return-void

    .line 1011
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v1, "Failed to find CUDA shared provider"

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public addCUDA(Lai/onnxruntime/providers/OrtCUDAProviderOptions;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1023
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1024
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractCUDA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    iget-wide v6, p1, Lai/onnxruntime/providers/OrtCUDAProviderOptions;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession$SessionOptions;->addCUDAV2(JJJ)V

    return-void

    .line 1027
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v1, "Failed to find CUDA shared provider"

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public addConfigEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 928
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 929
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addConfigEntry(JJLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->configEntries:Ljava/util/Map;

    .line 930
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addCoreML()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1205
    const-class v0, Lai/onnxruntime/providers/CoreMLFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addCoreML(Ljava/util/EnumSet;)V

    return-void
.end method

.method public addCoreML(Ljava/util/EnumSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/providers/CoreMLFlags;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1215
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1216
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    invoke-static {p1}, Lai/onnxruntime/providers/OrtFlags;->aggregateToInt(Ljava/util/EnumSet;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addCoreML(JJI)V

    return-void
.end method

.method public addDirectML(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1173
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1174
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addDirectML(JJI)V

    return-void
.end method

.method public addDnnl(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1078
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1079
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractDNNL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addDnnl(JJI)V

    return-void

    .line 1082
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v1, "Failed to find DNNL shared provider"

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public addExternalInitializers(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OnnxTensorLike;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 957
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 958
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 961
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 962
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v7, v0, [J

    .line 964
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 965
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v0

    .line 966
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/OnnxTensorLike;

    iget-wide v1, v1, Lai/onnxruntime/OnnxTensorLike;->nativeHandle:J

    aput-wide v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    :cond_1
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession$SessionOptions;->addExternalInitializers(JJ[Ljava/lang/String;[J)V

    return-void
.end method

.method public addInitializer(Ljava/lang/String;Lai/onnxruntime/OnnxTensorLike;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 984
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 985
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    invoke-virtual {p2}, Lai/onnxruntime/OnnxTensorLike;->getNativeHandle()J

    move-result-wide v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lai/onnxruntime/OrtSession$SessionOptions;->addInitializer(JJLjava/lang/String;J)V

    return-void

    .line 986
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initializer name was blank"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addNnapi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1141
    const-class v0, Lai/onnxruntime/providers/NNAPIFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addNnapi(Ljava/util/EnumSet;)V

    return-void
.end method

.method public addNnapi(Ljava/util/EnumSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lai/onnxruntime/providers/NNAPIFlags;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1151
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1152
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    invoke-static {p1}, Lai/onnxruntime/providers/OrtFlags;->aggregateToInt(Ljava/util/EnumSet;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addNnapi(JJI)V

    return-void
.end method

.method public addOpenVINO(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1094
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1095
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractOpenVINO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addOpenVINO(JJLjava/lang/String;)V

    return-void

    .line 1098
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v1, "Failed to find OpenVINO shared provider"

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public addROCM()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1038
    invoke-virtual {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->addROCM(I)V

    return-void
.end method

.method public addROCM(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1048
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1049
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractROCM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addROCM(JJI)V

    return-void

    .line 1052
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v1, "Failed to find ROCM shared provider"

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public addTensorrt(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1110
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1111
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractTensorRT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->addTensorrt(JJI)V

    return-void

    .line 1114
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v1, "Failed to find TensorRT shared provider"

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public addTensorrt(Lai/onnxruntime/providers/OrtTensorRTProviderOptions;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1126
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1127
    invoke-static {}, Lai/onnxruntime/OnnxRuntime;->extractTensorRT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    iget-wide v6, p1, Lai/onnxruntime/providers/OrtTensorRTProviderOptions;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lai/onnxruntime/OrtSession$SessionOptions;->addTensorrtV2(JJJ)V

    return-void

    .line 1130
    :cond_0
    new-instance p1, Lai/onnxruntime/OrtException;

    sget-object v0, Lai/onnxruntime/OrtException$OrtErrorCode;->ORT_EP_FAIL:Lai/onnxruntime/OrtException$OrtErrorCode;

    const-string v1, "Failed to find TensorRT shared provider"

    invoke-direct {p1, v0, v1}, Lai/onnxruntime/OrtException;-><init>(Lai/onnxruntime/OrtException$OrtErrorCode;Ljava/lang/String;)V

    throw p1
.end method

.method public addTvm(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1162
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1163
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->addTvm(JJLjava/lang/String;)V

    return-void
.end method

.method public addXnnpack(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 1230
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 1231
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 1232
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    .line 1234
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1235
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v7, v0

    .line 1236
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1239
    :cond_0
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    const-string v6, "XNNPACK"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lai/onnxruntime/OrtSession$SessionOptions;->addExecutionProvider(JJLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 4

    iget-boolean v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->closed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 694
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 695
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 696
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 697
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    :cond_0
    invoke-direct {p0, v0}, Lai/onnxruntime/OrtSession$SessionOptions;->closeCustomLibraries([J)V

    .line 701
    :cond_1
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->closeOptions(JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->closed:Z

    return-void

    .line 704
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to close a closed SessionOptions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disablePerSessionThreads()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 916
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 917
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->disablePerSessionThreads(JJ)V

    return-void
.end method

.method public disableProfiling()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 809
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 810
    sget-wide v0, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v2, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->disableProfiling(JJ)V

    return-void
.end method

.method public enableProfiling(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 799
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 800
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->enableProfiling(JJLjava/lang/String;)V

    return-void
.end method

.method public getConfigEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 939
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    iget-object v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->configEntries:Ljava/util/Map;

    .line 940
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    return-wide v0
.end method

.method public registerCustomOpLibrary(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 866
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    const-string v0, "path must not be null"

    .line 867
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 868
    sget-wide v2, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v4, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lai/onnxruntime/OrtSession$SessionOptions;->registerCustomOpLibrary(JJLjava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lai/onnxruntime/OrtSession$SessionOptions;->customLibraryHandles:Ljava/util/List;

    .line 869
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerCustomOpsUsingFunction(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 890
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 891
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->registerCustomOpsUsingFunction(JJLjava/lang/String;)V

    return-void
.end method

.method public setCPUArenaAllocator(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 833
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 834
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setCPUArenaAllocator(JJZ)V

    return-void
.end method

.method public setExecutionMode(Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 731
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 732
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    invoke-virtual {p1}, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->getID()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setExecutionMode(JJI)V

    return-void
.end method

.method public setInterOpNumThreads(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 754
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 755
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setInterOpNumThreads(JJI)V

    return-void
.end method

.method public setIntraOpNumThreads(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 766
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 767
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setIntraOpNumThreads(JJI)V

    return-void
.end method

.method public setLoggerId(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 788
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 789
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setLoggerId(JJLjava/lang/String;)V

    return-void
.end method

.method public setMemoryPatternOptimization(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 821
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 822
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setMemoryPatternOptimization(JJZ)V

    return-void
.end method

.method public setOptimizationLevel(Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 742
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 743
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    invoke-virtual {p1}, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->getID()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setOptimizationLevel(JJI)V

    return-void
.end method

.method public setOptimizedModelFilePath(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 777
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 778
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setOptimizationModelFilePath(JJLjava/lang/String;)V

    return-void
.end method

.method public setSessionLogLevel(Lai/onnxruntime/OrtLoggingLevel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 844
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 845
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    invoke-virtual {p1}, Lai/onnxruntime/OrtLoggingLevel;->getValue()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setSessionLogLevel(JJI)V

    return-void
.end method

.method public setSessionLogVerbosityLevel(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 855
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 856
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lai/onnxruntime/OrtSession$SessionOptions;->setSessionLogVerbosityLevel(JJI)V

    return-void
.end method

.method public setSymbolicDimensionValue(Ljava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 904
    invoke-direct {p0}, Lai/onnxruntime/OrtSession$SessionOptions;->checkClosed()V

    .line 905
    sget-wide v1, Lai/onnxruntime/OnnxRuntime;->ortApiHandle:J

    iget-wide v3, p0, Lai/onnxruntime/OrtSession$SessionOptions;->nativeHandle:J

    move-object v0, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lai/onnxruntime/OrtSession$SessionOptions;->addFreeDimensionOverrideByName(JJLjava/lang/String;J)V

    return-void
.end method
