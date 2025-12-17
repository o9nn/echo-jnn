.class public final Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EmbeddingsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddingResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResultOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

.field public static final EMBEDDINGS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_MS_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private embeddings_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
            ">;"
        }
    .end annotation
.end field

.field private timestampMs_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2108
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    const-class v1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 2112
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1516
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1517
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$2400()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
    .locals 0

    .line 1511
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->setEmbeddings(ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
    .locals 0

    .line 1511
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->addEmbeddings(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
    .locals 0

    .line 1511
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->addEmbeddings(ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;Ljava/lang/Iterable;)V
    .locals 0

    .line 1511
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->addAllEmbeddings(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;)V
    .locals 0

    .line 1511
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->clearEmbeddings()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;I)V
    .locals 0

    .line 1511
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->removeEmbeddings(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;J)V
    .locals 0

    .line 1511
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->setTimestampMs(J)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;)V
    .locals 0

    .line 1511
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->clearTimestampMs()V

    return-void
.end method

.method private addAllEmbeddings(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
            ">;)V"
        }
    .end annotation

    .line 1632
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->ensureEmbeddingsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1633
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addEmbeddings(ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
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

    .line 1619
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1620
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->ensureEmbeddingsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1621
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addEmbeddings(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1606
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1607
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->ensureEmbeddingsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1608
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearEmbeddings()V
    .locals 1

    .line 1644
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearTimestampMs()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->timestampMs_:J

    return-void
.end method

.method private ensureEmbeddingsIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1579
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1581
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1803
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1806
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1780
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1786
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1744
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1751
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1791
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1798
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1768
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1775
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1731
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1738
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1756
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 1763
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 2123
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeEmbeddings(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1654
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->ensureEmbeddingsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1655
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setEmbeddings(ILcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
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

    .line 1594
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1595
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->ensureEmbeddingsIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1596
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTimestampMs(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->timestampMs_:J

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

    .line 2056
    sget-object p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2101
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2095
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 2082
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2085
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 2090
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
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "embeddings_"

    .line 2064
    const-class p3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    const-string v0, "timestampMs_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1002\u0000"

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    .line 2073
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2061
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult$Builder;-><init>(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;)V

    return-object p1

    .line 2058
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;-><init>()V

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

    .line 1511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddings(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1564
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p1
.end method

.method public getEmbeddingsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1553
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getEmbeddingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEmbeddingsOrBuilder(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1575
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingOrBuilder;

    return-object p1
.end method

.method public getEmbeddingsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->embeddings_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTimestampMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->timestampMs_:J

    return-wide v0
.end method

.method public hasTimestampMs()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingResult;->bitField0_:I

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

    .line 1511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1511
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
