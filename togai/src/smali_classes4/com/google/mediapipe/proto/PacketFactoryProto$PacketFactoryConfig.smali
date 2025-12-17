.class public final Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PacketFactoryProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/PacketFactoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PacketFactoryConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

.field public static final EXTERNAL_OUTPUT_FIELD_NUMBER:I = 0x3ea

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_SIDE_PACKET_FIELD_NUMBER:I = 0x2

.field public static final PACKET_FACTORY_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private externalOutput_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

.field private outputSidePacket_:Ljava/lang/String;

.field private packetFactory_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1106
    new-instance v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    const-class v1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 1110
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 325
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->clearExternalOutput()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setExternalOutputBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->mergeOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->clearOptions()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Ljava/lang/String;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setPacketFactory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->clearPacketFactory()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setPacketFactoryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Ljava/lang/String;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setOutputSidePacket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .locals 0

    .line 320
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->clearOutputSidePacket()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;Ljava/lang/String;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->setExternalOutput(Ljava/lang/String;)V

    return-void
.end method

.method private clearExternalOutput()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    .line 549
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getExternalOutput()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method private clearOutputSidePacket()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    .line 471
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getOutputSidePacket()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    return-void
.end method

.method private clearPacketFactory()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    .line 393
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getPacketFactory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object v0
.end method

.method private mergeOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 610
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    if-eqz v0, :cond_0

    .line 612
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    .line 614
    invoke-static {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;->newBuilder(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 706
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 709
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 683
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 689
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 647
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 654
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 694
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 701
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 671
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 678
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 634
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 641
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 659
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 666
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 1121
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExternalOutput(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 536
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    return-void
.end method

.method private setExternalOutputBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 561
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method private setOptions(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 597
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method private setOutputSidePacket(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 458
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    return-void
.end method

.method private setOutputSidePacketBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 483
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    return-void
.end method

.method private setPacketFactory(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    return-void
.end method

.method private setPacketFactoryBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 405
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

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

    .line 1052
    sget-object p3, Lcom/google/mediapipe/proto/PacketFactoryProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1099
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

    iput-byte p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->memoizedIsInitialized:B

    .line 1092
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 1079
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1082
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 1087
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
    sget-object p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "packetFactory_"

    const-string p3, "outputSidePacket_"

    const-string v0, "options_"

    const-string v1, "externalOutput_"

    .line 1060
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u03ea\u0004\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1409\u0003\u03ea\u1008\u0002"

    sget-object p3, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    .line 1070
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1057
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig$Builder;-><init>(Lcom/google/mediapipe/proto/PacketFactoryProto$1;)V

    return-object p1

    .line 1054
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;-><init>()V

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

    .line 320
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getExternalOutput()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalOutputBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->externalOutput_:Ljava/lang/String;

    .line 524
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->options_:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    if-nez v0, :cond_0

    .line 587
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutputSidePacket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputSidePacketBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->outputSidePacket_:Ljava/lang/String;

    .line 446
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPacketFactory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    return-object v0
.end method

.method public getPacketFactoryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->packetFactory_:Ljava/lang/String;

    .line 368
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasExternalOutput()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutputSidePacket()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPacketFactory()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;->bitField0_:I

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

    .line 320
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 320
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
