.class public final Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$NodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;",
        "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$NodeOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE_HINT_FIELD_NUMBER:I = 0xa

.field public static final CALCULATOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

.field public static final EXECUTOR_FIELD_NUMBER:I = 0xe

.field public static final EXTERNAL_INPUT_FIELD_NUMBER:I = 0x3ed

.field public static final INPUT_SIDE_PACKET_FIELD_NUMBER:I = 0x5

.field public static final INPUT_STREAM_FIELD_NUMBER:I = 0x3

.field public static final INPUT_STREAM_HANDLER_FIELD_NUMBER:I = 0xb

.field public static final INPUT_STREAM_INFO_FIELD_NUMBER:I = 0xd

.field public static final MAX_IN_FLIGHT_FIELD_NUMBER:I = 0x10

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NODE_OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final OPTIONS_FIELD_NUMBER:I = 0x7

.field public static final OPTION_VALUE_FIELD_NUMBER:I = 0x11

.field public static final OUTPUT_SIDE_PACKET_FIELD_NUMBER:I = 0x6

.field public static final OUTPUT_STREAM_FIELD_NUMBER:I = 0x4

.field public static final OUTPUT_STREAM_HANDLER_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILER_CONFIG_FIELD_NUMBER:I = 0xf

.field public static final SOURCE_LAYER_FIELD_NUMBER:I = 0x9


# instance fields
.field private bufferSizeHint_:I

.field private calculator_:Ljava/lang/String;

.field private executor_:Ljava/lang/String;

.field private externalInput_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

.field private inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private inputStream_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxInFlight_:I

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private optionValue_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

.field private outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private outputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

.field private outputStream_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private profilerConfig_:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

.field private sourceLayer_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11225
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    const-class v1, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 11229
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 7263
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->name_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->calculator_:Ljava/lang/String;

    .line 7266
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7267
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7268
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7269
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7270
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7271
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->executor_:Ljava/lang/String;

    .line 7273
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7274
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$10000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearCalculator()V

    return-void
.end method

.method static synthetic access$10100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setCalculatorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setInputStream(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addInputStream(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addAllInputStream(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$10500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearInputStream()V

    return-void
.end method

.method static synthetic access$10600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addInputStreamBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setOutputStream(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addOutputStream(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addAllOutputStream(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearOutputStream()V

    return-void
.end method

.method static synthetic access$11100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addOutputStreamBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setInputSidePacket(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addInputSidePacket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addAllInputSidePacket(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearInputSidePacket()V

    return-void
.end method

.method static synthetic access$11600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addInputSidePacketBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setOutputSidePacket(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addOutputSidePacket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addAllOutputSidePacket(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearOutputSidePacket()V

    return-void
.end method

.method static synthetic access$12100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setOptions(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->mergeOptions(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearOptions()V

    return-void
.end method

.method static synthetic access$12500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setNodeOptions(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$12600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/Any;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addNodeOptions(Lcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$12700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/protobuf/Any;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addNodeOptions(ILcom/google/protobuf/Any;)V

    return-void
.end method

.method static synthetic access$12800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addAllNodeOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearNodeOptions()V

    return-void
.end method

.method static synthetic access$13000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->removeNodeOptions(I)V

    return-void
.end method

.method static synthetic access$13100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setSourceLayer(I)V

    return-void
.end method

.method static synthetic access$13200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearSourceLayer()V

    return-void
.end method

.method static synthetic access$13300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setBufferSizeHint(I)V

    return-void
.end method

.method static synthetic access$13400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearBufferSizeHint()V

    return-void
.end method

.method static synthetic access$13500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->mergeInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearInputStreamHandler()V

    return-void
.end method

.method static synthetic access$13800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->mergeOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V

    return-void
.end method

.method static synthetic access$14000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearOutputStreamHandler()V

    return-void
.end method

.method static synthetic access$14100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setInputStreamInfo(ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-void
.end method

.method static synthetic access$14200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addInputStreamInfo(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-void
.end method

.method static synthetic access$14300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addInputStreamInfo(ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V

    return-void
.end method

.method static synthetic access$14400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addAllInputStreamInfo(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$14500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearInputStreamInfo()V

    return-void
.end method

.method static synthetic access$14600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->removeInputStreamInfo(I)V

    return-void
.end method

.method static synthetic access$14700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setExecutor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearExecutor()V

    return-void
.end method

.method static synthetic access$14900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setExecutorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-void
.end method

.method static synthetic access$15100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->mergeProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V

    return-void
.end method

.method static synthetic access$15200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearProfilerConfig()V

    return-void
.end method

.method static synthetic access$15300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;I)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setMaxInFlight(I)V

    return-void
.end method

.method static synthetic access$15400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearMaxInFlight()V

    return-void
.end method

.method static synthetic access$15500(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setOptionValue(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$15600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addOptionValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addAllOptionValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearOptionValue()V

    return-void
.end method

.method static synthetic access$15900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addOptionValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16000(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;ILjava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setExternalInput(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addExternalInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/Iterable;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addAllExternalInput(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$16300(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearExternalInput()V

    return-void
.end method

.method static synthetic access$16400(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->addExternalInputBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9500()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)V
    .locals 0

    .line 7258
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->clearName()V

    return-void
.end method

.method static synthetic access$9800(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;Ljava/lang/String;)V
    .locals 0

    .line 7258
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->setCalculator(Ljava/lang/String;)V

    return-void
.end method

.method private addAllExternalInput(Ljava/lang/Iterable;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 9098
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9099
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllInputSidePacket(Ljava/lang/Iterable;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7821
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7822
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllInputStream(Ljava/lang/Iterable;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7534
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputStreamIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7535
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllInputStreamInfo(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 8641
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputStreamInfoIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8642
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllNodeOptions(Ljava/lang/Iterable;)V
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
            "Lcom/google/protobuf/Any;",
            ">;)V"
        }
    .end annotation

    .line 8204
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureNodeOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8205
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOptionValue(Ljava/lang/Iterable;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8948
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOptionValueIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8949
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOutputSidePacket(Ljava/lang/Iterable;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7966
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOutputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7967
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOutputStream(Ljava/lang/Iterable;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7681
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOutputStreamIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7682
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addExternalInput(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9081
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9082
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9083
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addExternalInputBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9128
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9129
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9130
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInputSidePacket(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7807
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7808
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInputSidePacketBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7847
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7848
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7849
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInputStream(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7518
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputStreamIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7520
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInputStreamBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7562
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7563
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputStreamIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7564
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInputStreamInfo(ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V
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

    .line 8627
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8628
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputStreamInfoIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8629
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInputStreamInfo(Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8613
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8614
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputStreamInfoIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8615
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNodeOptions(ILcom/google/protobuf/Any;)V
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

    .line 8188
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8189
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureNodeOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8190
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addNodeOptions(Lcom/google/protobuf/Any;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8173
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureNodeOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8174
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOptionValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8934
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8935
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOptionValueIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8936
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOptionValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8972
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8973
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOptionValueIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8974
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputSidePacket(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7950
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7951
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOutputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7952
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7994
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7995
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOutputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7996
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputStream(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7665
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7666
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOutputStreamIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7667
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputStreamBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7709
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7710
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOutputStreamIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7711
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBufferSizeHint()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->bufferSizeHint_:I

    return-void
.end method

.method private clearCalculator()V
    .locals 1

    .line 7402
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getCalculator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->calculator_:Ljava/lang/String;

    return-void
.end method

.method private clearExecutor()V
    .locals 1

    .line 8719
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getExecutor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->executor_:Ljava/lang/String;

    return-void
.end method

.method private clearExternalInput()V
    .locals 1

    .line 9113
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearInputSidePacket()V
    .locals 1

    .line 7834
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearInputStream()V
    .locals 1

    .line 7548
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearInputStreamHandler()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-void
.end method

.method private clearInputStreamInfo()V
    .locals 1

    .line 8654
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearMaxInFlight()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->maxInFlight_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 7330
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearNodeOptions()V
    .locals 1

    .line 8219
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOptionValue()V
    .locals 1

    .line 8960
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->options_:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-void
.end method

.method private clearOutputSidePacket()V
    .locals 1

    .line 7980
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOutputStream()V
    .locals 1

    .line 7695
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOutputStreamHandler()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    return-void
.end method

.method private clearProfilerConfig()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->profilerConfig_:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-void
.end method

.method private clearSourceLayer()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->sourceLayer_:I

    return-void
.end method

.method private ensureExternalInputIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9045
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9047
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureInputSidePacketIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7774
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7776
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureInputStreamInfoIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8584
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8586
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureInputStreamIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7484
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7486
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureNodeOptionsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8139
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8141
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOptionValueIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8904
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8906
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputSidePacketIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7916
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7918
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputStreamIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7631
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7633
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object v0
.end method

.method private mergeInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    if-eqz v0, :cond_0

    .line 8429
    invoke-static {}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 8431
    invoke-static {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->newBuilder(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    :goto_0
    return-void
.end method

.method private mergeOptions(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8044
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->options_:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    if-eqz v0, :cond_0

    .line 8046
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->options_:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    .line 8048
    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->newBuilder(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->options_:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->options_:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    :goto_0
    return-void
.end method

.method private mergeOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    if-eqz v0, :cond_0

    .line 8500
    invoke-static {}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    .line 8502
    invoke-static {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->newBuilder(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    :goto_0
    return-void
.end method

.method private mergeProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->profilerConfig_:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    if-eqz v0, :cond_0

    .line 8787
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->profilerConfig_:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    .line 8789
    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->newBuilder(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->profilerConfig_:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->profilerConfig_:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9208
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9211
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9185
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9191
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9149
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9156
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9196
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9203
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9173
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9180
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9136
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9143
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9161
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 9168
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 11240
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeInputStreamInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8665
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputStreamInfoIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8666
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeNodeOptions(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8232
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureNodeOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8233
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBufferSizeHint(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->bufferSizeHint_:I

    return-void
.end method

.method private setCalculator(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7388
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->calculator_:Ljava/lang/String;

    return-void
.end method

.method private setCalculatorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7415
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7416
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->calculator_:Ljava/lang/String;

    return-void
.end method

.method private setExecutor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8706
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->executor_:Ljava/lang/String;

    return-void
.end method

.method private setExecutorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8731
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8732
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->executor_:Ljava/lang/String;

    return-void
.end method

.method private setExternalInput(ILjava/lang/String;)V
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

    .line 9064
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9065
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9066
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInputSidePacket(ILjava/lang/String;)V
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

    .line 7791
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7792
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7793
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInputStream(ILjava/lang/String;)V
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

    .line 7502
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7503
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputStreamIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7504
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-void
.end method

.method private setInputStreamInfo(ILcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;)V
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

    .line 8600
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8601
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureInputStreamInfoIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8602
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMaxInFlight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->maxInFlight_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7343
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7344
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNodeOptions(ILcom/google/protobuf/Any;)V
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

    .line 8157
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8158
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureNodeOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8159
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOptionValue(ILjava/lang/String;)V
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

    .line 8920
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8921
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOptionValueIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8922
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOptions(Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8031
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->options_:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    return-void
.end method

.method private setOutputSidePacket(ILjava/lang/String;)V
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

    .line 7934
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7935
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOutputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7936
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOutputStream(ILjava/lang/String;)V
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

    .line 7649
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7650
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->ensureOutputStreamIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7651
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOutputStreamHandler(Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    return-void
.end method

.method private setProfilerConfig(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8771
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->profilerConfig_:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-void
.end method

.method private setSourceLayer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->sourceLayer_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
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

    move-object/from16 v1, p0

    .line 11154
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 11218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->memoizedIsInitialized:B

    return-object v2

    :pswitch_1
    iget-byte v0, v1, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->memoizedIsInitialized:B

    .line 11211
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_2

    const-class v2, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 11198
    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    .line 11201
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-direct {v0, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->PARSER:Lcom/google/protobuf/Parser;

    .line 11206
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-object v0

    :pswitch_3
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    return-object v0

    :pswitch_4
    const-string v2, "name_"

    const-string v3, "calculator_"

    const-string v4, "inputStream_"

    const-string v5, "outputStream_"

    const-string v6, "inputSidePacket_"

    const-string v7, "outputSidePacket_"

    const-string v8, "options_"

    const-string v9, "nodeOptions_"

    .line 11162
    const-class v10, Lcom/google/protobuf/Any;

    const-string v11, "sourceLayer_"

    const-string v12, "bufferSizeHint_"

    const-string v13, "inputStreamHandler_"

    const-string v14, "outputStreamHandler_"

    const-string v15, "inputStreamInfo_"

    const-class v16, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    const-string v17, "executor_"

    const-string v18, "profilerConfig_"

    const-string v19, "maxInFlight_"

    const-string v20, "optionValue_"

    const-string v21, "externalInput_"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\u0000\u0012\u0000\u0000\u0001\u03ed\u0012\u0000\u0008\u0003\u0001\u0208\u0002\u0208\u0003\u021a\u0004\u021a\u0005\u021a\u0006\u021a\u0007\u0409\u0008\u001b\t\u0004\n\u0004\u000b\u0409\u000c\u0409\r\u001b\u000e\u0208\u000f\t\u0010\u0004\u0011\u021a\u03ed\u021a"

    sget-object v3, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    .line 11189
    invoke-static {v3, v2, v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 11159
    :pswitch_5
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;

    invoke-direct {v0, v2}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node$Builder;-><init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V

    return-object v0

    .line 11156
    :pswitch_6
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;-><init>()V

    return-object v0

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

.method public getBufferSizeHint()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->bufferSizeHint_:I

    return v0
.end method

.method public getCalculator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->calculator_:Ljava/lang/String;

    return-object v0
.end method

.method public getCalculatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->calculator_:Ljava/lang/String;

    .line 7375
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7258
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->executor_:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->executor_:Ljava/lang/String;

    .line 8694
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExternalInput(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9023
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getExternalInputBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9041
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9040
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9007
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getExternalInputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInputSidePacket(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7754
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInputSidePacketBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7770
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7769
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7740
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getInputSidePacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInputStream(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7463
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInputStreamBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7480
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7479
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputStreamCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7448
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getInputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    if-nez v0, :cond_0

    .line 8402
    invoke-static {}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInputStreamInfo(I)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8568
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;

    return-object p1
.end method

.method public getInputStreamInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8556
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getInputStreamInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInputStreamInfoOrBuilder(I)Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfoOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8580
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfoOrBuilder;

    return-object p1
.end method

.method public getInputStreamInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputStreamInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamInfo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInputStreamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMaxInFlight()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->maxInFlight_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->name_:Ljava/lang/String;

    .line 7303
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNodeOptions(I)Lcom/google/protobuf/Any;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8121
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    return-object p1
.end method

.method public getNodeOptionsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8107
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getNodeOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNodeOptionsOrBuilder(I)Lcom/google/protobuf/AnyOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8135
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public getNodeOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->nodeOptions_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptionValue(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8885
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOptionValueBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8900
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8899
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOptionValueCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8872
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOptionValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->optionValue_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->options_:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    if-nez v0, :cond_0

    .line 8021
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutputSidePacket(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7895
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOutputSidePacketBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7912
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7911
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOutputSidePacketCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7880
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOutputSidePacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputStream(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7610
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOutputStreamBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7627
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7626
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOutputStreamCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7595
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOutputStreamHandler()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    if-nez v0, :cond_0

    .line 8473
    invoke-static {}, Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutputStreamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStream_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProfilerConfig()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->profilerConfig_:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    if-nez v0, :cond_0

    .line 8760
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceLayer()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->sourceLayer_:I

    return v0
.end method

.method public hasInputStreamHandler()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->inputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->options_:Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutputStreamHandler()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->outputStreamHandler_:Lcom/google/mediapipe/proto/StreamHandlerProto$OutputStreamHandlerConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProfilerConfig()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$CalculatorGraphConfig$Node;->profilerConfig_:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

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

    .line 7258
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7258
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
