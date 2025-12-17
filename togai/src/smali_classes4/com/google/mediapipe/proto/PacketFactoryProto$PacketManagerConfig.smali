.class public final Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PacketFactoryProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/PacketFactoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PacketManagerConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfigOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

.field public static final PACKET_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedIsInitialized:B

.field private packet_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1511
    new-instance v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    const-class v1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1515
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1155
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->memoizedIsInitialized:B

    .line 1156
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1600()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->setPacket(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->addPacket(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->addPacket(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;Ljava/lang/Iterable;)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->addAllPacket(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;)V
    .locals 0

    .line 1150
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->clearPacket()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;I)V
    .locals 0

    .line 1150
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->removePacket(I)V

    return-void
.end method

.method private addAllPacket(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;)V"
        }
    .end annotation

    .line 1234
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1235
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPacket(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
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

    .line 1225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1226
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1227
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPacket(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1217
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1218
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearPacket()V
    .locals 1

    .line 1242
    invoke-static {}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensurePacketIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1197
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1199
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1327
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1330
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1304
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1310
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1268
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1275
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1315
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1322
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1292
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1299
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1255
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1262
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1280
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1287
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1526
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePacket(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1248
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1249
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setPacket(ILcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;)V
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

    .line 1208
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1209
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->ensurePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1210
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 1461
    sget-object p3, Lcom/google/mediapipe/proto/PacketFactoryProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1504
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

    iput-byte p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->memoizedIsInitialized:B

    .line 1497
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1484
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1487
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 1492
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
    sget-object p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    return-object p1

    :pswitch_4
    const-string p1, "packet_"

    .line 1469
    const-class p2, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u041b"

    sget-object p3, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    .line 1475
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1466
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig$Builder;-><init>(Lcom/google/mediapipe/proto/PacketFactoryProto$1;)V

    return-object p1

    .line 1463
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;-><init>()V

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

    .line 1150
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getPacket(I)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1186
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;

    return-object p1
.end method

.method public getPacketCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1179
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPacketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPacketOrBuilder(I)Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1193
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;

    return-object p1
.end method

.method public getPacketOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/proto/PacketFactoryProto$PacketFactoryConfigOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/PacketFactoryProto$PacketManagerConfig;->packet_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1150
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1150
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
