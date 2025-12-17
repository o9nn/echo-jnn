.class public final Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;,
        Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$InputCollectionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

.field public static final EXTERNAL_INPUT_NAME_FIELD_NUMBER:I = 0x3ea

.field public static final FILE_NAME_FIELD_NUMBER:I = 0x4

.field public static final INPUT_TYPE_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIDE_PACKET_NAME_FIELD_NUMBER:I = 0x2


# instance fields
.field private externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fileName_:Ljava/lang/String;

.field private inputType_:I

.field private name_:Ljava/lang/String;

.field private sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2366
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    const-class v1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 2370
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1051
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->name_:Ljava/lang/String;

    .line 1053
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1054
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->fileName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1100()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/String;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->clearName()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;ILjava/lang/String;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->setSidePacketName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/String;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->addSidePacketName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/Iterable;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->addAllSidePacketName(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->clearSidePacketName()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->addSidePacketNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;ILjava/lang/String;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->setExternalInputName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/String;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->addExternalInputName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/Iterable;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->addAllExternalInputName(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->clearExternalInputName()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->addExternalInputNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;I)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->setInputTypeValue(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->setInputType(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->clearInputType()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Ljava/lang/String;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->clearFileName()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->setFileNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllExternalInputName(Ljava/lang/Iterable;)V
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

    .line 1550
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->ensureExternalInputNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1551
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllSidePacketName(Ljava/lang/Iterable;)V
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

    .line 1419
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->ensureSidePacketNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1420
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addExternalInputName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1536
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1537
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->ensureExternalInputNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1538
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addExternalInputNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1574
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1575
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->ensureExternalInputNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1576
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSidePacketName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1404
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1405
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->ensureSidePacketNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1406
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSidePacketNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1445
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1446
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->ensureSidePacketNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1447
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearExternalInputName()V
    .locals 1

    .line 1562
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearFileName()V
    .locals 1

    .line 1704
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->fileName_:Ljava/lang/String;

    return-void
.end method

.method private clearInputType()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->inputType_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 1295
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearSidePacketName()V
    .locals 1

    .line 1432
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureExternalInputNameIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1506
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1508
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSidePacketNameIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1372
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1374
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1798
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1801
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1775
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1781
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1739
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1746
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1786
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1793
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1763
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1770
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1726
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1733
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1751
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 1758
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 2381
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExternalInputName(ILjava/lang/String;)V
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

    .line 1522
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1523
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->ensureExternalInputNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1524
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1689
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->fileName_:Ljava/lang/String;

    return-void
.end method

.method private setFileNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1718
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1719
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->fileName_:Ljava/lang/String;

    return-void
.end method

.method private setInputType(Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1630
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->inputType_:I

    return-void
.end method

.method private setInputTypeValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->inputType_:I

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

    .line 1282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->name_:Ljava/lang/String;

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

    .line 1307
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1308
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->name_:Ljava/lang/String;

    return-void
.end method

.method private setSidePacketName(ILjava/lang/String;)V
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

    .line 1389
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1390
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->ensureSidePacketNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1391
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 2313
    sget-object p2, Lcom/google/mediapipe/proto/CalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2359
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2353
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 2340
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2343
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->PARSER:Lcom/google/protobuf/Parser;

    .line 2348
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
    sget-object p1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    return-object p1

    :pswitch_4
    const-string p1, "name_"

    const-string p2, "sidePacketName_"

    const-string p3, "inputType_"

    const-string v0, "fileName_"

    const-string v1, "externalInputName_"

    .line 2321
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u03ea\u0005\u0000\u0002\u0000\u0001\u0208\u0002\u021a\u0003\u000c\u0004\u0208\u03ea\u021a"

    sget-object p3, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    .line 2331
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2318
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$Builder;-><init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V

    return-object p1

    .line 2315
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;-><init>()V

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

    .line 1046
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getExternalInputName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1487
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getExternalInputNameBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1502
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1501
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputNameCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1474
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getExternalInputNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->externalInputName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->fileName_:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->fileName_:Ljava/lang/String;

    .line 1675
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInputType()Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->inputType_:I

    .line 1605
    invoke-static {v0}, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->forNumber(I)Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1606
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;->UNRECOGNIZED:Lcom/google/mediapipe/proto/CalculatorProto$InputCollection$InputType;

    :cond_0
    return-object v0
.end method

.method public getInputTypeValue()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->inputType_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->name_:Ljava/lang/String;

    .line 1270
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSidePacketName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1352
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSidePacketNameBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1368
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1367
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSidePacketNameCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1338
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSidePacketNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$InputCollection;->sidePacketName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1046
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1046
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
