.class public final Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EmbeddingsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbeddingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuantizedEmbedding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbeddingOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private values_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 617
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    const-class v1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 621
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 387
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 388
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->values_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$600()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->setValues(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->clearValues()V

    return-void
.end method

.method private clearValues()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->bitField0_:I

    .line 423
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->getValues()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->values_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 501
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 504
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 478
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 484
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 442
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 449
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 489
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 496
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 466
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 473
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 429
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 436
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 454
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 461
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 632
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValues(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->values_:Lcom/google/protobuf/ByteString;

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

    .line 568
    sget-object p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 610
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 604
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 591
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 594
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->PARSER:Lcom/google/protobuf/Parser;

    .line 599
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
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "values_"

    .line 576
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100a\u0000"

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    .line 582
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 573
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;-><init>(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;)V

    return-object p1

    .line 570
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;-><init>()V

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

    .line 382
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->values_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasValues()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->bitField0_:I

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

    .line 382
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 382
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
