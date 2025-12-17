.class public final Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FlowLimiterCalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlowLimiterCalculatorOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;",
        "Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

.field public static final EXT_FIELD_NUMBER:I = 0x137d1078

.field public static final IN_FLIGHT_TIMEOUT_FIELD_NUMBER:I = 0x3

.field public static final MAX_IN_FLIGHT_FIELD_NUMBER:I = 0x1

.field public static final MAX_IN_QUEUE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;",
            "Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private inFlightTimeout_:J

.field private maxInFlight_:I

.field private maxInQueue_:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 575
    new-instance v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    const-class v1, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 579
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 601
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorOptionsProto$CalculatorOptions;

    move-result-object v2

    .line 602
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    move-result-object v3

    .line 603
    invoke-static {}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->getDefaultInstance()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x137d1078

    sget-object v7, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    const-class v8, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 600
    invoke-static/range {v2 .. v8}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->ext:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->maxInFlight_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->setMaxInFlight(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->clearMaxInFlight()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->setMaxInQueue(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->clearMaxInQueue()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;J)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->setInFlightTimeout(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->clearInFlightTimeout()V

    return-void
.end method

.method private clearInFlightTimeout()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->inFlightTimeout_:J

    return-void
.end method

.method private clearMaxInFlight()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->maxInFlight_:I

    return-void
.end method

.method private clearMaxInQueue()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->maxInQueue_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 328
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 331
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 305
    invoke-static {v0, p0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 311
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 269
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 276
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 316
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 323
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 293
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 300
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 256
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 263
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 281
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;
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

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 288
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 590
    invoke-virtual {v0}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setInFlightTimeout(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->inFlightTimeout_:J

    return-void
.end method

.method private setMaxInFlight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->maxInFlight_:I

    return-void
.end method

.method private setMaxInQueue(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->maxInQueue_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 523
    sget-object p2, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 568
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 562
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 549
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 552
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 557
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
    sget-object p1, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "maxInFlight_"

    const-string p3, "maxInQueue_"

    const-string v0, "inFlightTimeout_"

    .line 531
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1002\u0002"

    sget-object p3, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    .line 540
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 528
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions$Builder;-><init>(Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$1;)V

    return-object p1

    .line 525
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;-><init>()V

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

    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getInFlightTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->inFlightTimeout_:J

    return-wide v0
.end method

.method public getMaxInFlight()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->maxInFlight_:I

    return v0
.end method

.method public getMaxInQueue()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->maxInQueue_:I

    return v0
.end method

.method public hasInFlightTimeout()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxInFlight()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMaxInQueue()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/calculator/proto/FlowLimiterCalculatorProto$FlowLimiterCalculatorOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
