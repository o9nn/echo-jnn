.class public final Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ImageGeneratorGraphOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageGeneratorGraphOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTROL_PLUGIN_GRAPHS_OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

.field public static final LORA_WEIGHTS_FILE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final STABLE_DIFFUSION_ITERATE_OPTIONS_FIELD_NUMBER:I = 0x4

.field public static final TEXT2IMAGE_MODEL_DIRECTORY_FIELD_NUMBER:I = 0x1


# instance fields
.field private controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;",
            ">;"
        }
    .end annotation
.end field

.field private loraWeightsFile_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

.field private stableDiffusionIterateOptions_:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

.field private text2ImageModelDirectory_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 821
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    const-class v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 825
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->text2ImageModelDirectory_:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->setText2ImageModelDirectory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Ljava/lang/Iterable;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->addAllControlPluginGraphsOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->clearControlPluginGraphsOptions()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->removeControlPluginGraphsOptions(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->setStableDiffusionIterateOptions(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->mergeStableDiffusionIterateOptions(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->clearStableDiffusionIterateOptions()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->clearText2ImageModelDirectory()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->setText2ImageModelDirectoryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->setLoraWeightsFile(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->mergeLoraWeightsFile(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->clearLoraWeightsFile()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->setControlPluginGraphsOptions(ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->addControlPluginGraphsOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->addControlPluginGraphsOptions(ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V

    return-void
.end method

.method private addAllControlPluginGraphsOptions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;",
            ">;)V"
        }
    .end annotation

    .line 307
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->ensureControlPluginGraphsOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 308
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addControlPluginGraphsOptions(ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 298
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->ensureControlPluginGraphsOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 300
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addControlPluginGraphsOptions(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->ensureControlPluginGraphsOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 291
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearControlPluginGraphsOptions()V
    .locals 1

    .line 315
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLoraWeightsFile()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->loraWeightsFile_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-void
.end method

.method private clearStableDiffusionIterateOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->stableDiffusionIterateOptions_:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    return-void
.end method

.method private clearText2ImageModelDirectory()V
    .locals 1

    .line 143
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getText2ImageModelDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->text2ImageModelDirectory_:Ljava/lang/String;

    return-void
.end method

.method private ensureControlPluginGraphsOptionsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 270
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object v0
.end method

.method private mergeLoraWeightsFile(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->loraWeightsFile_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->loraWeightsFile_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 213
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->loraWeightsFile_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->loraWeightsFile_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    :goto_0
    return-void
.end method

.method private mergeStableDiffusionIterateOptions(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->stableDiffusionIterateOptions_:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->stableDiffusionIterateOptions_:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    .line 358
    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->newBuilder(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->stableDiffusionIterateOptions_:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->stableDiffusionIterateOptions_:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 446
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 449
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 423
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 429
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 387
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 394
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 434
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 441
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 411
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 418
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 374
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 381
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 399
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 406
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 836
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeControlPluginGraphsOptions(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->ensureControlPluginGraphsOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 322
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setControlPluginGraphsOptions(ILcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 281
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->ensureControlPluginGraphsOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 283
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLoraWeightsFile(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->loraWeightsFile_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-void
.end method

.method private setStableDiffusionIterateOptions(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->stableDiffusionIterateOptions_:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    return-void
.end method

.method private setText2ImageModelDirectory(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->text2ImageModelDirectory_:Ljava/lang/String;

    return-void
.end method

.method private setText2ImageModelDirectoryBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 155
    invoke-static {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 156
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->text2ImageModelDirectory_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 768
    sget-object p2, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 814
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 808
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 795
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 798
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 803
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
    sget-object p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    return-object p1

    :pswitch_4
    const-string p1, "text2ImageModelDirectory_"

    const-string p2, "loraWeightsFile_"

    const-string p3, "controlPluginGraphsOptions_"

    .line 776
    const-class v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;

    const-string v1, "stableDiffusionIterateOptions_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\t\u0003\u001b\u0004\t"

    sget-object p3, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    .line 786
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 773
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$1;)V

    return-object p1

    .line 770
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;-><init>()V

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

.method public getControlPluginGraphsOptions(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 259
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;

    return-object p1
.end method

.method public getControlPluginGraphsOptionsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 252
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getControlPluginGraphsOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getControlPluginGraphsOptionsOrBuilder(I)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptionsOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 266
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptionsOrBuilder;

    return-object p1
.end method

.method public getControlPluginGraphsOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ControlPluginGraphOptionsProto$ControlPluginGraphOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->controlPluginGraphsOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLoraWeightsFile()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->loraWeightsFile_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStableDiffusionIterateOptions()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->stableDiffusionIterateOptions_:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getText2ImageModelDirectory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->text2ImageModelDirectory_:Ljava/lang/String;

    return-object v0
.end method

.method public getText2ImageModelDirectoryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->text2ImageModelDirectory_:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasLoraWeightsFile()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->loraWeightsFile_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStableDiffusionIterateOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->stableDiffusionIterateOptions_:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
