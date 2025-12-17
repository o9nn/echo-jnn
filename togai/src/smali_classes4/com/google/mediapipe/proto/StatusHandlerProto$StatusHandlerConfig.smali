.class public final Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StatusHandlerProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/StatusHandlerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusHandlerConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;",
        "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfigOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

.field public static final EXTERNAL_INPUT_FIELD_NUMBER:I = 0x3ea

.field public static final INPUT_SIDE_PACKET_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_HANDLER_FIELD_NUMBER:I = 0x1


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

.field private options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

.field private statusHandler_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1220
    new-instance v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    const-class v1, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 1224
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->statusHandler_:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 176
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->setStatusHandler(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->addExternalInput(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/Iterable;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->addAllExternalInput(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->clearExternalInput()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->addExternalInputBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->clearOptions()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->clearStatusHandler()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->setStatusHandlerBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;ILjava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->setInputSidePacket(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->addInputSidePacket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Ljava/lang/Iterable;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->addAllInputSidePacket(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->clearInputSidePacket()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->addInputSidePacketBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;ILjava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->setExternalInput(ILjava/lang/String;)V

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

    .line 521
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 522
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

    .line 385
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 386
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

    .line 507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 509
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

    .line 545
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 546
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

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 369
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

    .line 417
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 418
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearExternalInput()V
    .locals 1

    .line 533
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearInputSidePacket()V
    .locals 1

    .line 401
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    iget v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    return-void
.end method

.method private clearStatusHandler()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    .line 241
    invoke-static {}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getStatusHandler()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->statusHandler_:Ljava/lang/String;

    return-void
.end method

.method private ensureExternalInputIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 477
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureInputSidePacketIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 329
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object v0
.end method

.method private mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 594
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    if-eqz v0, :cond_0

    .line 596
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 598
    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    iput-object p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 690
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 693
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 667
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 673
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 631
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 638
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 678
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 685
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 655
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 662
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 618
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 625
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 643
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 650
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 1235
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 493
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->ensureExternalInputIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 495
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

    .line 349
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->ensureInputSidePacketIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 351
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    iget p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    return-void
.end method

.method private setStatusHandler(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->statusHandler_:Ljava/lang/String;

    return-void
.end method

.method private setStatusHandlerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->statusHandler_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

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

    .line 1166
    sget-object p3, Lcom/google/mediapipe/proto/StatusHandlerProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1213
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

    iput-byte p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->memoizedIsInitialized:B

    .line 1206
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 1193
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1196
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 1201
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
    sget-object p1, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "statusHandler_"

    const-string p3, "inputSidePacket_"

    const-string v0, "options_"

    const-string v1, "externalInput_"

    .line 1174
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u03ea\u0004\u0000\u0002\u0001\u0001\u1008\u0000\u0002\u001a\u0003\u1409\u0001\u03ea\u001a"

    sget-object p3, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    .line 1184
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1171
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig$Builder;-><init>(Lcom/google/mediapipe/proto/StatusHandlerProto$1;)V

    return-object p1

    .line 1168
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;-><init>()V

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

    .line 168
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 458
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 473
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 472
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getExternalInputCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 445
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->externalInput_:Lcom/google/protobuf/Internal$ProtobufList;

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

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 306
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 325
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 324
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInputSidePacketCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 289
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

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->inputSidePacket_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    if-nez v0, :cond_0

    .line 571
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStatusHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->statusHandler_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusHandlerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->statusHandler_:Ljava/lang/String;

    .line 216
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatusHandler()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/StatusHandlerProto$StatusHandlerConfig;->bitField0_:I

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

    .line 168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
