.class public final Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CalculatorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExecutorConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfigOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 865
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    const-class v1, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 869
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->name_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->type_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->clearType()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->clearOptions()V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 194
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 302
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->type_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

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

    .line 385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    if-eqz v0, :cond_0

    .line 387
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 389
    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 484
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 487
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 461
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 467
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 425
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 432
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 472
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 479
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 449
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 456
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 412
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 419
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 437
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 444
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 880
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->name_:Ljava/lang/String;

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

    .line 211
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 212
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->name_:Ljava/lang/String;

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

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->type_:Ljava/lang/String;

    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 323
    invoke-static {p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 324
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->type_:Ljava/lang/String;

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

    .line 813
    sget-object p3, Lcom/google/mediapipe/proto/CalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 858
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

    iput-byte p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->memoizedIsInitialized:B

    .line 851
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 838
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 841
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 846
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
    sget-object p1, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    return-object p1

    :pswitch_4
    const-string p1, "name_"

    const-string p2, "type_"

    const-string p3, "options_"

    .line 821
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0001\u0001\u0208\u0002\u0208\u0003\u0409"

    sget-object p3, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    .line 829
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 818
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig$Builder;-><init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V

    return-object p1

    .line 815
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;-><init>()V

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

    .line 115
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->name_:Ljava/lang/String;

    .line 159
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    if-nez v0, :cond_0

    .line 356
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->type_:Ljava/lang/String;

    .line 259
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasOptions()Z
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ExecutorConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

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

    .line 115
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
