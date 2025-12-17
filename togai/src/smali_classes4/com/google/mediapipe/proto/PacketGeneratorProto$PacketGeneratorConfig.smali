.class public final Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PacketGeneratorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/PacketGeneratorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PacketGeneratorConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;",
        "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfigOrBuilder;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

.field public static final EXTERNAL_INPUT_FIELD_NUMBER:I = 0x3ea

.field public static final EXTERNAL_OUTPUT_FIELD_NUMBER:I = 0x3eb

.field public static final INPUT_SIDE_PACKET_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field public static final OUTPUT_SIDE_PACKET_FIELD_NUMBER:I = 0x3

.field public static final PACKET_GENERATOR_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private externalInput_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;
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

.field private memoizedIsInitialized:B

.field private options_:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

.field private outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packetGenerator_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2125
    new-instance v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    const-class v1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 2129
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 580
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->packetGenerator_:Ljava/lang/String;

    .line 582
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 583
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 584
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 585
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/Iterable;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addAllInputSidePacket(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->clearInputSidePacket()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addInputSidePacketBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;ILjava/lang/String;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->setExternalInput(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addExternalInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/Iterable;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addAllExternalInput(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->clearExternalInput()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addExternalInputBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;ILjava/lang/String;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->setOutputSidePacket(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addOutputSidePacket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/Iterable;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addAllOutputSidePacket(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->clearOutputSidePacket()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;ILjava/lang/String;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->setExternalOutput(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addExternalOutput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/Iterable;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addAllExternalOutput(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->clearExternalOutput()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addExternalOutputBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->setOptions(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->mergeOptions(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->clearOptions()V

    return-void
.end method

.method static synthetic access$400()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->setPacketGenerator(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->clearPacketGenerator()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->setPacketGeneratorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;ILjava/lang/String;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->setInputSidePacket(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;Ljava/lang/String;)V
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->addInputSidePacket(Ljava/lang/String;)V

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

    .line 903
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 904
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllExternalOutput(Ljava/lang/Iterable;)V
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

    .line 1177
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureExternalOutputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1178
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

    .line 773
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 774
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

    .line 1045
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureOutputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1046
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

    .line 889
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 891
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

    .line 927
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 928
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addExternalOutput(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1164
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureExternalOutputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1165
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addExternalOutputBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1201
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureExternalOutputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1202
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

    .line 758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 760
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

    .line 799
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 800
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

    .line 1029
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureOutputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1031
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

    .line 1073
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureOutputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1074
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearExternalInput()V
    .locals 1

    .line 915
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearExternalOutput()V
    .locals 1

    .line 1189
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearInputSidePacket()V
    .locals 1

    .line 786
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->options_:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    iget v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    return-void
.end method

.method private clearOutputSidePacket()V
    .locals 1

    .line 1059
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPacketGenerator()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    .line 650
    invoke-static {}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getPacketGenerator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->packetGenerator_:Ljava/lang/String;

    return-void
.end method

.method private ensureExternalInputIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 859
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 861
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureExternalOutputIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1133
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1135
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureInputSidePacketIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 726
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputSidePacketIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 995
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 997
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object v0
.end method

.method private mergeOptions(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->options_:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    if-eqz v0, :cond_0

    .line 1252
    invoke-static {}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->options_:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 1254
    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->newBuilder(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->options_:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->options_:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1346
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1349
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1323
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1329
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1287
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1294
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1334
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1341
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1311
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1318
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1274
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1281
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1299
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 1306
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 2140
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 875
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 876
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 877
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setExternalOutput(ILjava/lang/String;)V
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

    .line 1149
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1150
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureExternalOutputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1151
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

    .line 743
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 744
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 745
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOptions(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->options_:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    iget p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

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

    .line 1013
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->ensureOutputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1015
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPacketGenerator(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 637
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->packetGenerator_:Ljava/lang/String;

    return-void
.end method

.method private setPacketGeneratorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 662
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->packetGenerator_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    .line 2069
    sget-object p3, Lcom/google/mediapipe/proto/PacketGeneratorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2118
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->memoizedIsInitialized:B

    .line 2111
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 2098
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2101
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 2106
    :cond_1
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "packetGenerator_"

    const-string v2, "inputSidePacket_"

    const-string v3, "outputSidePacket_"

    const-string v4, "options_"

    const-string v5, "externalInput_"

    const-string v6, "externalOutput_"

    .line 2077
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u03eb\u0006\u0000\u0004\u0001\u0001\u1008\u0000\u0002\u001a\u0003\u001a\u0004\u1409\u0001\u03ea\u001a\u03eb\u001a"

    sget-object p3, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    .line 2089
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2074
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig$Builder;-><init>(Lcom/google/mediapipe/proto/PacketGeneratorProto$1;)V

    return-object p1

    .line 2071
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;-><init>()V

    return-object p1

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

    .line 575
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

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

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 840
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 855
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 854
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 827
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getExternalOutput(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1114
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getExternalOutputBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1129
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1128
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalOutputCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1101
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getExternalOutputList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->externalOutput_:Lcom/google/protobuf/Internal$ProtobufList;

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

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 706
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 722
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 721
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 692
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->options_:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    if-nez v0, :cond_0

    .line 1227
    invoke-static {}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

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

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 974
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 991
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 990
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getOutputSidePacketCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 959
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->outputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPacketGenerator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->packetGenerator_:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketGeneratorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->packetGenerator_:Ljava/lang/String;

    .line 625
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPacketGenerator()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorConfig;->bitField0_:I

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

    .line 575
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 575
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
