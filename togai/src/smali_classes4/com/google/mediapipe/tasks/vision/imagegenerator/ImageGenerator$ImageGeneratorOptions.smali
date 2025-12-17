.class public abstract Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;
.super Lcom/google/mediapipe/tasks/core/TaskOptions;
.source "ImageGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImageGeneratorOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;,
        Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;
    }
.end annotation


# instance fields
.field private conditionOptions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 535
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/TaskOptions;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->conditionOptions:Ljava/util/Optional;

    return-object p1
.end method

.method public static builder()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;
    .locals 2

    .line 588
    new-instance v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;-><init>()V

    const-string v1, ""

    .line 589
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/AutoValue_ImageGenerator_ImageGeneratorOptions$Builder;->setImageGeneratorModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;->SD_1:Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    .line 590
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;->setModelType(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;)Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private convertModelTypeToProto(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ModelType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modelType"
        }
    .end annotation

    .line 579
    sget-object v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$3;->$SwitchMap$com$google$mediapipe$tasks$vision$imagegenerator$ImageGenerator$ImageGeneratorOptions$ModelType:[I

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 581
    sget-object p1, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ModelType;->SD_1:Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ModelType;

    return-object p1

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported model type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public convertToAnyProto()Lcom/google/protobuf/Any;
    .locals 4

    .line 598
    invoke-static {}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->newBuilder()Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->conditionOptions:Ljava/util/Optional;

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->conditionOptions:Ljava/util/Optional;

    .line 601
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;

    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ConditionOptions;->convertToAnyProto()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Any;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error converting ConditionOptions to proto. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageGenerator"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    .line 607
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->imageGeneratorModelDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->setText2ImageModelDirectory(Ljava/lang/String;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    .line 608
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->loraWeightsFilePath()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->newBuilder()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    move-result-object v1

    .line 611
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->loraWeightsFilePath()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->setFileName(Ljava/lang/String;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    .line 612
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->setLoraWeightsFile(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    .line 616
    :cond_1
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;->newBuilder()Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 617
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->setBaseSeed(I)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    move-result-object v1

    .line 618
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->imageGeneratorModelDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->setFileFolder(Ljava/lang/String;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    move-result-object v1

    .line 619
    invoke-virtual {p0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->modelType()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions;->convertModelTypeToProto(Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ModelType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->setModelType(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$ModelType;)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    move-result-object v1

    const/16 v2, 0x200

    .line 620
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->setOutputImageWidth(I)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    move-result-object v1

    .line 621
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->setOutputImageHeight(I)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 622
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->setEmitEmptyPacket(Z)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    move-result-object v1

    const/16 v2, 0x64

    .line 623
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->setShowEveryNIteration(I)Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;

    move-result-object v1

    .line 624
    invoke-virtual {v1}, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;

    .line 614
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->setStableDiffusionIterateOptions(Lcom/google/mediapipe/calculator/proto/StableDiffusionIterateCalculatorOptionsProto$StableDiffusionIterateCalculatorOptions;)Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;

    .line 625
    invoke-static {}, Lcom/google/protobuf/Any;->newBuilder()Lcom/google/protobuf/Any$Builder;

    move-result-object v1

    const-string v2, "type.googleapis.com/mediapipe.tasks.vision.image_generator.proto.ImageGeneratorGraphOptions"

    .line 626
    invoke-virtual {v1, v2}, Lcom/google/protobuf/Any$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Any$Builder;

    move-result-object v1

    .line 628
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/vision/imagegenerator/proto/ImageGeneratorGraphOptionsProto$ImageGeneratorGraphOptions;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/Any$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Any$Builder;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Any;

    return-object v0
.end method

.method abstract errorListener()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/mediapipe/tasks/core/ErrorListener;",
            ">;"
        }
    .end annotation
.end method

.method abstract imageGeneratorModelDirectory()Ljava/lang/String;
.end method

.method abstract loraWeightsFilePath()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract modelType()Lcom/google/mediapipe/tasks/vision/imagegenerator/ImageGenerator$ImageGeneratorOptions$ModelType;
.end method
