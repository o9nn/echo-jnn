.class public Lai/onnxruntime/reactnative/OnnxruntimeModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "OnnxruntimeModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# static fields
.field private static final executionModeTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final graphOptimizationLevelTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static nextSessionId:Ljava/math/BigInteger;

.field private static ortEnvironment:Lai/onnxruntime/OrtEnvironment;

.field private static reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private static sessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OrtSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blobModule:Lcom/facebook/react/modules/blob/BlobModule;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    invoke-static {}, Lai/onnxruntime/OrtEnvironment;->getEnvironment()Lai/onnxruntime/OrtEnvironment;

    move-result-object v0

    sput-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->ortEnvironment:Lai/onnxruntime/OrtEnvironment;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->sessionMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->nextSessionId:Ljava/math/BigInteger;

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/Object;

    const-string v1, "disabled"

    .line 318
    sget-object v2, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->NO_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "basic"

    sget-object v3, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->BASIC_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "extended"

    sget-object v4, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->EXTENDED_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "all"

    sget-object v5, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 320
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lai/onnxruntime/reactnative/OnnxruntimeModule$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lai/onnxruntime/reactnative/OnnxruntimeModule$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lai/onnxruntime/reactnative/OnnxruntimeModule$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lai/onnxruntime/reactnative/OnnxruntimeModule$$ExternalSyntheticLambda1;-><init>()V

    .line 326
    invoke-static {v1, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->graphOptimizationLevelTable:Ljava/util/Map;

    new-array v0, v4, [[Ljava/lang/Object;

    const-string v1, "sequential"

    .line 328
    sget-object v4, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->SEQUENTIAL:Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "parallel"

    sget-object v2, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;->PARALLEL:Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    .line 330
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lai/onnxruntime/reactnative/OnnxruntimeModule$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lai/onnxruntime/reactnative/OnnxruntimeModule$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Lai/onnxruntime/reactnative/OnnxruntimeModule$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lai/onnxruntime/reactnative/OnnxruntimeModule$$ExternalSyntheticLambda3;-><init>()V

    .line 332
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->executionModeTable:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    sput-object p1, Lai/onnxruntime/reactnative/OnnxruntimeModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private static getNextSessionKey()Ljava/lang/String;
    .locals 4

    sget-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->nextSessionId:Ljava/math/BigInteger;

    .line 57
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lai/onnxruntime/reactnative/OnnxruntimeModule;->nextSessionId:Ljava/math/BigInteger;

    const-wide/16 v2, 0x1

    .line 58
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lai/onnxruntime/reactnative/OnnxruntimeModule;->nextSessionId:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic lambda$static$0([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 326
    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$static$1([Ljava/lang/Object;)Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;
    .locals 1

    const/4 v0, 0x1

    .line 326
    aget-object p0, p0, v0

    check-cast p0, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    return-object p0
.end method

.method static synthetic lambda$static$2([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 332
    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$static$3([Ljava/lang/Object;)Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;
    .locals 1

    const/4 v0, 0x1

    .line 332
    aget-object p0, p0, v0

    check-cast p0, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    return-object p0
.end method

.method private loadModelImpl(Ljava/lang/String;[BLcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-direct {p0, p3}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->parseSessionOptions(Lcom/facebook/react/bridge/ReadableMap;)Lai/onnxruntime/OrtSession$SessionOptions;

    move-result-object p3

    .line 196
    new-instance v0, Lai/onnxruntime/reactnative/OnnxruntimeExtensions;

    invoke-direct {v0}, Lai/onnxruntime/reactnative/OnnxruntimeExtensions;-><init>()V

    .line 197
    invoke-virtual {v0, p3}, Lai/onnxruntime/reactnative/OnnxruntimeExtensions;->registerOrtExtensionsIfEnabled(Lai/onnxruntime/OrtSession$SessionOptions;)V

    if-eqz p2, :cond_0

    .line 199
    array-length v0, p2

    if-lez v0, :cond_0

    sget-object p1, Lai/onnxruntime/reactnative/OnnxruntimeModule;->ortEnvironment:Lai/onnxruntime/OrtEnvironment;

    .line 201
    invoke-virtual {p1, p2, p3}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p2, Lai/onnxruntime/reactnative/OnnxruntimeModule;->ortEnvironment:Lai/onnxruntime/OrtEnvironment;

    .line 212
    invoke-virtual {p2, p1, p3}, Lai/onnxruntime/OrtEnvironment;->createSession(Ljava/lang/String;Lai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object p1

    .line 215
    :goto_0
    invoke-static {}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->getNextSessionKey()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lai/onnxruntime/reactnative/OnnxruntimeModule;->sessionMap:Ljava/util/Map;

    .line 216
    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p3

    const-string v0, "key"

    .line 219
    invoke-interface {p3, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 221
    invoke-virtual {p1}, Lai/onnxruntime/OrtSession;->getInputNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "inputNames"

    .line 224
    invoke-interface {p3, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 225
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 226
    invoke-virtual {p1}, Lai/onnxruntime/OrtSession;->getOutputNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "outputNames"

    .line 229
    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object p3
.end method

.method private parseRunOptions(Lcom/facebook/react/bridge/ReadableMap;)Lai/onnxruntime/OrtSession$RunOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 427
    new-instance v0, Lai/onnxruntime/OrtSession$RunOptions;

    invoke-direct {v0}, Lai/onnxruntime/OrtSession$RunOptions;-><init>()V

    const-string v1, "logSeverityLevel"

    .line 429
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 431
    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$RunOptions;->setLogVerbosityLevel(I)V

    :cond_0
    const-string/jumbo v1, "tag"

    .line 434
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {v0, p1}, Lai/onnxruntime/OrtSession$RunOptions;->setRunTag(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private parseSessionOptions(Lcom/facebook/react/bridge/ReadableMap;)Lai/onnxruntime/OrtSession$SessionOptions;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    .line 335
    new-instance v0, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v0}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    const-string v1, "intraOpNumThreads"

    .line 337
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7fffffff

    if-eqz v2, :cond_0

    .line 338
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    if-ge v1, v3, :cond_0

    .line 340
    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$SessionOptions;->setIntraOpNumThreads(I)V

    :cond_0
    const-string v1, "interOpNumThreads"

    .line 344
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    if-ge v1, v3, :cond_1

    .line 347
    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$SessionOptions;->setIntraOpNumThreads(I)V

    :cond_1
    const-string v1, "graphOptimizationLevel"

    .line 351
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lai/onnxruntime/reactnative/OnnxruntimeModule;->graphOptimizationLevelTable:Ljava/util/Map;

    .line 353
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$SessionOptions;->setOptimizationLevel(Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;)V

    :cond_2
    const-string v1, "enableCpuMemArena"

    .line 358
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 360
    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$SessionOptions;->setCPUArenaAllocator(Z)V

    :cond_3
    const-string v1, "enableMemPattern"

    .line 363
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 364
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 365
    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$SessionOptions;->setMemoryPatternOptimization(Z)V

    :cond_4
    const-string v1, "executionMode"

    .line 368
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 369
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lai/onnxruntime/reactnative/OnnxruntimeModule;->executionModeTable:Ljava/util/Map;

    .line 370
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 371
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;

    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$SessionOptions;->setExecutionMode(Lai/onnxruntime/OrtSession$SessionOptions$ExecutionMode;)V

    :cond_5
    const-string v1, "executionProviders"

    .line 375
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 376
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 377
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 380
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getType(I)Lcom/facebook/react/bridge/ReadableType;

    move-result-object v3

    sget-object v4, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v3, v4, :cond_6

    .line 381
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    goto :goto_1

    .line 383
    :cond_6
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v4

    const-string v3, "name"

    .line 384
    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v5, "nnapi"

    .line 386
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 387
    const-class v3, Lai/onnxruntime/providers/NNAPIFlags;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    if-eqz v4, :cond_a

    const-string/jumbo v5, "useFP16"

    .line 389
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 390
    sget-object v5, Lai/onnxruntime/providers/NNAPIFlags;->USE_FP16:Lai/onnxruntime/providers/NNAPIFlags;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo v5, "useNCHW"

    .line 392
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 393
    sget-object v5, Lai/onnxruntime/providers/NNAPIFlags;->USE_NCHW:Lai/onnxruntime/providers/NNAPIFlags;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v5, "cpuDisabled"

    .line 395
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 396
    sget-object v5, Lai/onnxruntime/providers/NNAPIFlags;->CPU_DISABLED:Lai/onnxruntime/providers/NNAPIFlags;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v5, "cpuOnly"

    .line 398
    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 399
    sget-object v4, Lai/onnxruntime/providers/NNAPIFlags;->CPU_ONLY:Lai/onnxruntime/providers/NNAPIFlags;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_a
    invoke-virtual {v0, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->addNnapi(Ljava/util/EnumSet;)V

    goto :goto_2

    :cond_b
    const-string/jumbo v4, "xnnpack"

    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v3}, Lai/onnxruntime/OrtSession$SessionOptions;->addXnnpack(Ljava/util/Map;)V

    goto :goto_2

    :cond_c
    const-string v4, "cpu"

    .line 405
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 408
    :cond_d
    new-instance p1, Lai/onnxruntime/OrtException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported execution provider: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lai/onnxruntime/OrtException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    const-string v1, "logId"

    .line 413
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 414
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {v0, v1}, Lai/onnxruntime/OrtSession$SessionOptions;->setLoggerId(Ljava/lang/String;)V

    :cond_f
    const-string v1, "logSeverityLevel"

    .line 418
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 419
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 420
    invoke-virtual {v0, p1}, Lai/onnxruntime/OrtSession$SessionOptions;->setSessionLogVerbosityLevel(I)V

    :cond_10
    return-object v0
.end method


# virtual methods
.method public checkBlobModule()V
    .locals 2

    iget-object v0, p0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/blob/BlobModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/blob/BlobModule;

    iput-object v0, p0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BlobModule is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lai/onnxruntime/OrtException;
        }
    .end annotation

    sget-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->sessionMap:Ljava/util/Map;

    .line 240
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lai/onnxruntime/OrtSession;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lai/onnxruntime/OrtSession;->close()V

    sget-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->sessionMap:Ljava/util/Map;

    .line 243
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dispose(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 135
    :try_start_0
    invoke-virtual {p0, p1}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->dispose(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 136
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lai/onnxruntime/OrtException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to dispose session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lai/onnxruntime/OrtException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Onnxruntime"

    return-object v0
.end method

.method public loadModel(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, p1, v0, p2}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->loadModelImpl(Ljava/lang/String;[BLcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method public loadModel([BLcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    .line 180
    invoke-direct {p0, v0, p1, p2}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->loadModelImpl(Ljava/lang/String;[BLcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1
.end method

.method public loadModel(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 96
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->loadModel(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    .line 97
    invoke-interface {p3, p2}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load model \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public loadModelFromBlob(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->checkBlobModule()V

    const-string v0, "blobId"

    .line 116
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    const-string v2, "offset"

    .line 117
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "size"

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v0, v2, p1}, Lcom/facebook/react/modules/blob/BlobModule;->resolve(Ljava/lang/String;II)[B

    move-result-object p1

    iget-object v1, p0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    .line 118
    invoke-virtual {v1, v0}, Lcom/facebook/react/modules/blob/BlobModule;->remove(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1, p2}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->loadModel([BLcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 120
    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to load model from buffer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 5

    sget-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->sessionMap:Ljava/util/Map;

    .line 450
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 452
    :try_start_0
    invoke-virtual {p0, v1}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->dispose(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to dispose session: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onHostDestroy"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->sessionMap:Ljava/util/Map;

    .line 457
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onHostPause()V
    .locals 0

    return-void
.end method

.method public onHostResume()V
    .locals 0

    return-void
.end method

.method public run(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Duration"

    sget-object v1, Lai/onnxruntime/reactnative/OnnxruntimeModule;->sessionMap:Ljava/util/Map;

    .line 257
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lai/onnxruntime/OrtSession;

    if-eqz p1, :cond_7

    .line 262
    invoke-direct {p0, p4}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->parseRunOptions(Lcom/facebook/react/bridge/ReadableMap;)Lai/onnxruntime/OrtSession$RunOptions;

    move-result-object p4

    .line 264
    invoke-virtual {p0}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->checkBlobModule()V

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 267
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 268
    invoke-virtual {p1}, Lai/onnxruntime/OrtSession;->getInputNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    .line 271
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 272
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 274
    invoke-interface {p2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    sget-object v9, Lai/onnxruntime/reactnative/OnnxruntimeModule;->ortEnvironment:Lai/onnxruntime/OrtEnvironment;

    .line 279
    invoke-static {v8, v7, v9}, Lai/onnxruntime/reactnative/TensorHelper;->createInputTensor(Lcom/facebook/react/modules/blob/BlobModule;Lcom/facebook/react/bridge/ReadableMap;Lai/onnxruntime/OrtEnvironment;)Lai/onnxruntime/OnnxTensor;

    move-result-object v7

    .line 280
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t find input: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_1
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 285
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 286
    :goto_1
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 287
    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object p2, v5

    .line 291
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    .line 292
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInputTensor: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p2, :cond_4

    .line 296
    invoke-virtual {p1, v3, p2, p4}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;Ljava/util/Set;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    goto :goto_2

    .line 298
    :cond_4
    invoke-virtual {p1, v3, p4}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;Lai/onnxruntime/OrtSession$RunOptions;)Lai/onnxruntime/OrtSession$Result;

    move-result-object p1

    :goto_2
    move-object v5, p1

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    .line 301
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "inference: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object p3, p0, Lai/onnxruntime/reactnative/OnnxruntimeModule;->blobModule:Lcom/facebook/react/modules/blob/BlobModule;

    .line 304
    invoke-static {p3, v5}, Lai/onnxruntime/reactnative/TensorHelper;->createOutputTensor(Lcom/facebook/react/modules/blob/BlobModule;Lai/onnxruntime/OrtSession$Result;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p3

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 306
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createOutputTensor: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-static {v3}, Lai/onnxruntime/OnnxValue;->close(Ljava/util/Map;)V

    if-eqz v5, :cond_5

    .line 313
    invoke-virtual {v5}, Lai/onnxruntime/OrtSession$Result;->close()V

    :cond_5
    return-object p3

    :catchall_0
    move-exception p1

    .line 311
    invoke-static {v3}, Lai/onnxruntime/OnnxValue;->close(Ljava/util/Map;)V

    if-eqz v5, :cond_6

    .line 313
    invoke-virtual {v5}, Lai/onnxruntime/OrtSession$Result;->close()V

    .line 315
    :cond_6
    throw p1

    .line 259
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Model is not loaded."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 154
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lai/onnxruntime/reactnative/OnnxruntimeModule;->run(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 155
    invoke-interface {p5, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fail to inference: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p5, p2, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
