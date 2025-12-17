.class public final Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InferenceCalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$GpuOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gpu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;",
        ">;",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$GpuOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOW_PRECISION_LOSS_FIELD_NUMBER:I = 0x3

.field public static final API_FIELD_NUMBER:I = 0x4

.field public static final CACHED_KERNEL_PATH_FIELD_NUMBER:I = 0x2

.field public static final CACHE_WRITING_BEHAVIOR_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

.field public static final MODEL_TOKEN_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERIALIZED_MODEL_DIR_FIELD_NUMBER:I = 0x7

.field public static final USAGE_FIELD_NUMBER:I = 0x5

.field public static final USE_ADVANCED_GPU_API_FIELD_NUMBER:I = 0x1


# instance fields
.field private allowPrecisionLoss_:Z

.field private api_:I

.field private bitField0_:I

.field private cacheWritingBehavior_:I

.field private cachedKernelPath_:Ljava/lang/String;

.field private modelToken_:Ljava/lang/String;

.field private serializedModelDir_:Ljava/lang/String;

.field private usage_:I

.field private useAdvancedGpuApi_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2446
    new-instance v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    invoke-direct {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;-><init>()V

    sput-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    const-class v1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 2450
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 731
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->allowPrecisionLoss_:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cachedKernelPath_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->serializedModelDir_:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cacheWritingBehavior_:I

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->modelToken_:Ljava/lang/String;

    iput v1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->usage_:I

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->clearCachedKernelPath()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setCachedKernelPathBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Ljava/lang/String;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setSerializedModelDir(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->clearSerializedModelDir()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setSerializedModelDirBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setCacheWritingBehavior(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->clearCacheWritingBehavior()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Ljava/lang/String;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setModelToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->clearModelToken()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setModelTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setUsage(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->clearUsage()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Z)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setUseAdvancedGpuApi(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->clearUseAdvancedGpuApi()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setApi(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->clearApi()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Z)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setAllowPrecisionLoss(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)V
    .locals 0

    .line 726
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->clearAllowPrecisionLoss()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;Ljava/lang/String;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->setCachedKernelPath(Ljava/lang/String;)V

    return-void
.end method

.method private clearAllowPrecisionLoss()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->allowPrecisionLoss_:Z

    return-void
.end method

.method private clearApi()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->api_:I

    return-void
.end method

.method private clearCacheWritingBehavior()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cacheWritingBehavior_:I

    return-void
.end method

.method private clearCachedKernelPath()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    .line 1344
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->getCachedKernelPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cachedKernelPath_:Ljava/lang/String;

    return-void
.end method

.method private clearModelToken()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    .line 1614
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->getModelToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->modelToken_:Ljava/lang/String;

    return-void
.end method

.method private clearSerializedModelDir()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    .line 1468
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->getSerializedModelDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->serializedModelDir_:Ljava/lang/String;

    return-void
.end method

.method private clearUsage()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->usage_:I

    return-void
.end method

.method private clearUseAdvancedGpuApi()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->useAdvancedGpuApi_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1742
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1745
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1719
    invoke-static {v0, p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1725
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1683
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1690
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1730
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1737
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1707
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1714
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1670
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1677
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1695
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 1702
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 2461
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowPrecisionLoss(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->allowPrecisionLoss_:Z

    return-void
.end method

.method private setApi(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1158
    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->api_:I

    iget p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    return-void
.end method

.method private setCacheWritingBehavior(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1527
    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cacheWritingBehavior_:I

    iget p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    return-void
.end method

.method private setCachedKernelPath(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cachedKernelPath_:Ljava/lang/String;

    return-void
.end method

.method private setCachedKernelPathBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1367
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cachedKernelPath_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    return-void
.end method

.method private setModelToken(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->modelToken_:Ljava/lang/String;

    return-void
.end method

.method private setModelTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1628
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->modelToken_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    return-void
.end method

.method private setSerializedModelDir(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1448
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->serializedModelDir_:Ljava/lang/String;

    return-void
.end method

.method private setSerializedModelDirBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1487
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->serializedModelDir_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    return-void
.end method

.method private setUsage(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1656
    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->usage_:I

    iget p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    return-void
.end method

.method private setUseAdvancedGpuApi(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->useAdvancedGpuApi_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 2385
    sget-object p2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2439
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2433
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 2420
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2423
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->PARSER:Lcom/google/protobuf/Parser;

    .line 2428
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "useAdvancedGpuApi_"

    const-string v2, "cachedKernelPath_"

    const-string v3, "allowPrecisionLoss_"

    const-string v4, "api_"

    .line 2399
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    const-string v6, "usage_"

    .line 2401
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v7

    const-string v8, "serializedModelDir_"

    const-string v9, "modelToken_"

    const-string v10, "cacheWritingBehavior_"

    .line 2405
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\n\u0008\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1008\u0003\u0003\u1007\u0002\u0004\u100c\u0001\u0005\u100c\u0007\u0007\u1008\u0004\u0008\u1008\u0006\n\u100c\u0005"

    sget-object p3, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 2411
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2390
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;-><init>(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$1;)V

    return-object p1

    .line 2387
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    invoke-direct {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;-><init>()V

    return-object p1

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
    .end packed-switch
.end method

.method public getAllowPrecisionLoss()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->allowPrecisionLoss_:Z

    return v0
.end method

.method public getApi()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->api_:I

    .line 1150
    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;->forNumber(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1151
    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;->ANY:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Api;

    :cond_0
    return-object v0
.end method

.method public getCacheWritingBehavior()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cacheWritingBehavior_:I

    .line 1515
    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->forNumber(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1516
    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;->WRITE_OR_ERROR:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$CacheWritingBehavior;

    :cond_0
    return-object v0
.end method

.method public getCachedKernelPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cachedKernelPath_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedKernelPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->cachedKernelPath_:Ljava/lang/String;

    .line 1297
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 726
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getModelToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->modelToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getModelTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->modelToken_:Ljava/lang/String;

    .line 1585
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedModelDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->serializedModelDir_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedModelDirBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->serializedModelDir_:Ljava/lang/String;

    .line 1429
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->usage_:I

    .line 1648
    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;->forNumber(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1649
    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;->SUSTAINED_SPEED:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$InferenceUsage;

    :cond_0
    return-object v0
.end method

.method public getUseAdvancedGpuApi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->useAdvancedGpuApi_:Z

    return v0
.end method

.method public hasAllowPrecisionLoss()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasApi()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCacheWritingBehavior()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCachedKernelPath()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasModelToken()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSerializedModelDir()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUsage()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUseAdvancedGpuApi()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 726
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 726
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
