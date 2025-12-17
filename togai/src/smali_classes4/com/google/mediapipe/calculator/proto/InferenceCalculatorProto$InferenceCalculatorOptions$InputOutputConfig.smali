.class public final Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InferenceCalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputOutputConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$Builder;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$OutputTensorMapCase;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$InputTensorMapCase;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLinkOrBuilder;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMapOrBuilder;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;,
        Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMapOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfigOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

.field public static final FEEDBACK_TENSOR_LINKS_FIELD_NUMBER:I = 0x5

.field public static final INPUT_TENSOR_INDICES_MAP_FIELD_NUMBER:I = 0x1

.field public static final INPUT_TENSOR_NAMES_MAP_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_TENSOR_INDICES_MAP_FIELD_NUMBER:I = 0x2

.field public static final OUTPUT_TENSOR_NAMES_MAP_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;",
            ">;"
        }
    .end annotation
.end field

.field private inputTensorMapCase_:I

.field private inputTensorMap_:Ljava/lang/Object;

.field private outputTensorMapCase_:I

.field private outputTensorMap_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7632
    new-instance v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;-><init>()V

    sput-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    const-class v1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7636
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4535
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    .line 4536
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$7600()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;)V
    .locals 0

    .line 4530
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->clearInputTensorMap()V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;)V
    .locals 0

    .line 4530
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->clearOutputTensorMap()V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->setInputTensorIndicesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->mergeInputTensorIndicesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;)V
    .locals 0

    .line 4530
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->clearInputTensorIndicesMap()V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->setInputTensorNamesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->mergeInputTensorNamesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;)V
    .locals 0

    .line 4530
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->clearInputTensorNamesMap()V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->setOutputTensorIndicesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->mergeOutputTensorIndicesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;)V
    .locals 0

    .line 4530
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->clearOutputTensorIndicesMap()V

    return-void
.end method

.method static synthetic access$8800(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->setOutputTensorNamesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->mergeOutputTensorNamesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;)V
    .locals 0

    .line 4530
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->clearOutputTensorNamesMap()V

    return-void
.end method

.method static synthetic access$9100(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;ILcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->setFeedbackTensorLinks(ILcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->addFeedbackTensorLinks(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;ILcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->addFeedbackTensorLinks(ILcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;Ljava/lang/Iterable;)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->addAllFeedbackTensorLinks(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;)V
    .locals 0

    .line 4530
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->clearFeedbackTensorLinks()V

    return-void
.end method

.method static synthetic access$9600(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;I)V
    .locals 0

    .line 4530
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->removeFeedbackTensorLinks(I)V

    return-void
.end method

.method private addAllFeedbackTensorLinks(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;",
            ">;)V"
        }
    .end annotation

    .line 7035
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->ensureFeedbackTensorLinksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7036
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addFeedbackTensorLinks(ILcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;)V
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

    .line 7021
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7022
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->ensureFeedbackTensorLinksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7023
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addFeedbackTensorLinks(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7008
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->ensureFeedbackTensorLinksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7009
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearFeedbackTensorLinks()V
    .locals 1

    .line 7048
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearInputTensorIndicesMap()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearInputTensorMap()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    return-void
.end method

.method private clearInputTensorNamesMap()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOutputTensorIndicesMap()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOutputTensorMap()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    return-void
.end method

.method private clearOutputTensorNamesMap()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureFeedbackTensorLinksIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6978
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6980
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object v0
.end method

.method private mergeInputTensorIndicesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6744
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    .line 6746
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    .line 6747
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;

    move-result-object v0

    .line 6748
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    return-void
.end method

.method private mergeInputTensorNamesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6794
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    .line 6796
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    .line 6797
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;->newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap$Builder;

    move-result-object v0

    .line 6798
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    return-void
.end method

.method private mergeOutputTensorIndicesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6844
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    .line 6846
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    .line 6847
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;

    move-result-object v0

    .line 6848
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    return-void
.end method

.method private mergeOutputTensorNamesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    .line 6896
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    .line 6897
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;->newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap$Builder;

    move-result-object v0

    .line 6898
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7138
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7141
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7115
    invoke-static {v0, p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7121
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7079
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7086
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7126
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7133
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7103
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7110
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7066
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7073
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7091
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7098
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7647
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFeedbackTensorLinks(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7059
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->ensureFeedbackTensorLinksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7060
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setFeedbackTensorLinks(ILcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;)V
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

    .line 6994
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6995
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->ensureFeedbackTensorLinksIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6996
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInputTensorIndicesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6736
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    return-void
.end method

.method private setInputTensorNamesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6786
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    return-void
.end method

.method private setOutputTensorIndicesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    return-void
.end method

.method private setOutputTensorNamesMap(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6886
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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

    .line 7573
    sget-object p2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7625
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 7619
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7606
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7609
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 7614
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
    sget-object p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    return-object p1

    :pswitch_4
    const-string v0, "inputTensorMap_"

    const-string v1, "inputTensorMapCase_"

    const-string v2, "outputTensorMap_"

    const-string v3, "outputTensorMapCase_"

    const-string v4, "bitField0_"

    .line 7581
    const-class v5, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    const-class v6, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    const-class v7, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    const-class v8, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    const-string v9, "feedbackTensorLinks_"

    const-class v10, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0005\u0002\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u103c\u0000\u0002\u103c\u0001\u0003\u103c\u0000\u0004\u103c\u0001\u0005\u001b"

    sget-object p3, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    .line 7597
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7578
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$Builder;-><init>(Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$1;)V

    return-object p1

    .line 7575
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;

    invoke-direct {p1}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;-><init>()V

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

    .line 4530
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFeedbackTensorLinks(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6962
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;

    return-object p1
.end method

.method public getFeedbackTensorLinksCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6950
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFeedbackTensorLinksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFeedbackTensorLinksOrBuilder(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLinkOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6974
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLinkOrBuilder;

    return-object p1
.end method

.method public getFeedbackTensorLinksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$FeedbackTensorLinkOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->feedbackTensorLinks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInputTensorIndicesMap()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    .line 6728
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object v0

    .line 6730
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    move-result-object v0

    return-object v0
.end method

.method public getInputTensorMapCase()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$InputTensorMapCase;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    .line 6662
    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$InputTensorMapCase;->forNumber(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$InputTensorMapCase;

    move-result-object v0

    return-object v0
.end method

.method public getInputTensorNamesMap()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMap_:Ljava/lang/Object;

    .line 6778
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    return-object v0

    .line 6780
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorIndicesMap()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    .line 6828
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    return-object v0

    .line 6830
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorIndicesMap;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorMapCase()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$OutputTensorMapCase;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    .line 6705
    invoke-static {v0}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$OutputTensorMapCase;->forNumber(I)Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$OutputTensorMapCase;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorNamesMap()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMap_:Ljava/lang/Object;

    .line 6878
    check-cast v0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    return-object v0

    .line 6880
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig$TensorNamesMap;

    move-result-object v0

    return-object v0
.end method

.method public hasInputTensorIndicesMap()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasInputTensorNamesMap()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->inputTensorMapCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutputTensorIndicesMap()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutputTensorNamesMap()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/InferenceCalculatorProto$InferenceCalculatorOptions$InputOutputConfig;->outputTensorMapCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4530
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4530
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
