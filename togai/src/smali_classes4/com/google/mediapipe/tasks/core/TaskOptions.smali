.class public abstract Lcom/google/mediapipe/tasks/core/TaskOptions;
.super Ljava/lang/Object;
.source "TaskOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$convertBaseOptionsToProto$0(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;Ljava/lang/Integer;)V
    .locals 1

    .line 57
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->newBuilder()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->setFd(I)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->setFileDescriptorMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    return-void
.end method

.method static synthetic lambda$convertBaseOptionsToProto$1(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 63
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->setFileContent(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    return-void
.end method

.method private setDelegateOptions(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accelerationBuilder",
            "options"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;

    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->setTflite(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    return-void
.end method

.method private setDelegateOptions(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accelerationBuilder",
            "options"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->newBuilder()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;->setUseAdvancedGpuApi(Z)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;->cachedKernelPath()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda0;-><init>(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 115
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;->serializedModelDir()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda1;-><init>(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 116
    invoke-virtual {p2}, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;->modelToken()Ljava/util/Optional;

    move-result-object p2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda2;-><init>(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 117
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    invoke-virtual {p1, p2}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->setGpu(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    return-void
.end method


# virtual methods
.method protected convertBaseOptionsToProto(Lcom/google/mediapipe/tasks/core/BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->newBuilder()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetPath()Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda3;-><init>(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 53
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetFileDescriptor()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda4;-><init>(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;)V

    .line 54
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 59
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->modelAssetBuffer()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda5;-><init>(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;)V

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 66
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->newBuilder()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    move-result-object v1

    .line 67
    sget-object v2, Lcom/google/mediapipe/tasks/core/TaskOptions$1;->$SwitchMap$com$google$mediapipe$tasks$core$Delegate:[I

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegate()Lcom/google/mediapipe/tasks/core/Delegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/mediapipe/tasks/core/Delegate;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;->newBuilder()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v3}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;->setUseAdvancedGpuApi(Z)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;

    .line 81
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->setGpu(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$Gpu;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    .line 86
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegateOptions()Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1}, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda7;-><init>(Lcom/google/mediapipe/tasks/core/TaskOptions;Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;)V

    .line 87
    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;

    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->setTflite(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$Delegate$TfLite;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    .line 73
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/BaseOptions;->delegateOptions()Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1}, Lcom/google/mediapipe/tasks/core/TaskOptions$$ExternalSyntheticLambda6;-><init>(Lcom/google/mediapipe/tasks/core/TaskOptions;Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;)V

    .line 74
    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 95
    :goto_0
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newBuilder()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-virtual {p1, v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->setModelAsset(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {v1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    invoke-virtual {p1, v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->setAcceleration(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p1
.end method

.method public convertToAnyProto()Lcom/google/protobuf/Any;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public convertToCalculatorOptionsProto()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$convertBaseOptionsToProto$2$com-google-mediapipe-tasks-core-TaskOptions(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;)V
    .locals 0

    .line 76
    check-cast p2, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/core/TaskOptions;->setDelegateOptions(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$CpuOptions;)V

    return-void
.end method

.method synthetic lambda$convertBaseOptionsToProto$3$com-google-mediapipe-tasks-core-TaskOptions(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions;)V
    .locals 0

    .line 89
    check-cast p2, Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/core/TaskOptions;->setDelegateOptions(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;Lcom/google/mediapipe/tasks/core/BaseOptions$DelegateOptions$GpuOptions;)V

    return-void
.end method
