.class public final Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InferenceCalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMapOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TensorIndicesMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;",
        ">;",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMapOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

.field public static final MODEL_TENSOR_INDICES_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private modelTensorIndicesMemoizedSerializedSize:I

.field private modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5174
    new-instance v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    invoke-direct {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;-><init>()V

    sput-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    const-class v1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 5178
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4625
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndicesMemoizedSerializedSize:I

    .line 4626
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$5500()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;II)V
    .locals 0

    .line 4620
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->setModelTensorIndices(II)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;I)V
    .locals 0

    .line 4620
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->addModelTensorIndices(I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;Ljava/lang/Iterable;)V
    .locals 0

    .line 4620
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->addAllModelTensorIndices(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V
    .locals 0

    .line 4620
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->clearModelTensorIndices()V

    return-void
.end method

.method private addAllModelTensorIndices(Ljava/lang/Iterable;)V
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4796
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->ensureModelTensorIndicesIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    .line 4797
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addModelTensorIndices(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4769
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->ensureModelTensorIndicesIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    .line 4770
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearModelTensorIndices()V
    .locals 1

    .line 4822
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private ensureModelTensorIndicesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    .line 4713
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4715
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4900
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4903
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4877
    invoke-static {v0, p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4883
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4841
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4848
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4888
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4895
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4865
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4872
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4828
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4835
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4853
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 4860
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 5189
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setModelTensorIndices(II)V
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

    .line 4743
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->ensureModelTensorIndicesIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    .line 4744
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 5126
    sget-object p2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5167
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 5161
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 5148
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5151
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->PARSER:Lcom/google/protobuf/Parser;

    .line 5156
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
    sget-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object p1

    :pswitch_4
    const-string p1, "modelTensorIndices_"

    .line 5134
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\'"

    sget-object p3, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    .line 5139
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5131
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;-><init>(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$1;)V

    return-object p1

    .line 5128
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    invoke-direct {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;-><init>()V

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4620
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getModelTensorIndices(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    .line 4708
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getModelTensorIndicesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    .line 4681
    invoke-interface {v0}, Lcom/google/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getModelTensorIndicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->modelTensorIndices_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4620
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4620
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
