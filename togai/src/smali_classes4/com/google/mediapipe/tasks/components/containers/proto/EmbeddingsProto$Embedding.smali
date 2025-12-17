.class public final Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EmbeddingsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Embedding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;,
        Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$EmbeddingOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

.field public static final FLOAT_EMBEDDING_FIELD_NUMBER:I = 0x1

.field public static final HEAD_INDEX_FIELD_NUMBER:I = 0x3

.field public static final HEAD_NAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUANTIZED_EMBEDDING_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private embeddingCase_:I

.field private embedding_:Ljava/lang/Object;

.field private headIndex_:I

.field private headName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1426
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    const-class v1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1430
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 729
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->headName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
    .locals 0

    .line 724
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->clearEmbedding()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->setFloatEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->mergeFloatEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
    .locals 0

    .line 724
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->clearFloatEmbedding()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->setQuantizedEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->mergeQuantizedEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
    .locals 0

    .line 724
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->clearQuantizedEmbedding()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;I)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->setHeadIndex(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
    .locals 0

    .line 724
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->clearHeadIndex()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Ljava/lang/String;)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->setHeadName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)V
    .locals 0

    .line 724
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->clearHeadName()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->setHeadNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearEmbedding()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    return-void
.end method

.method private clearFloatEmbedding()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearHeadIndex()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->headIndex_:I

    return-void
.end method

.method private clearHeadName()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    .line 997
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getHeadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->headName_:Ljava/lang/String;

    return-void
.end method

.method private clearQuantizedEmbedding()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object v0
.end method

.method private mergeFloatEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    .line 808
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    .line 809
    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->newBuilder(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;

    move-result-object v0

    .line 810
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    return-void
.end method

.method private mergeQuantizedEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 856
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    .line 858
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    .line 859
    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->newBuilder(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;

    move-result-object v0

    .line 860
    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    :goto_0
    iput v1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1089
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1092
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1066
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1072
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1030
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1037
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1077
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1084
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1054
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1061
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1017
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1024
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1042
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1049
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1441
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFloatEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    return-void
.end method

.method private setHeadIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->headIndex_:I

    return-void
.end method

.method private setHeadName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->headName_:Ljava/lang/String;

    return-void
.end method

.method private setHeadNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1010
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->headName_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    return-void
.end method

.method private setQuantizedEmbedding(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 848
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

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

    .line 1371
    sget-object p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1419
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1413
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1400
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1403
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->PARSER:Lcom/google/protobuf/Parser;

    .line 1408
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
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    return-object p1

    :pswitch_4
    const-string v0, "embedding_"

    const-string v1, "embeddingCase_"

    const-string v2, "bitField0_"

    .line 1379
    const-class v3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    const-class v4, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    const-string v5, "headIndex_"

    const-string v6, "headName_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u1004\u0002\u0004\u1008\u0003"

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    .line 1391
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1376
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$Builder;-><init>(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;)V

    return-object p1

    .line 1373
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;-><init>()V

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

    .line 724
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddingCase()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    .line 767
    invoke-static {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;->forNumber(I)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding$EmbeddingCase;

    move-result-object v0

    return-object v0
.end method

.method public getFloatEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    .line 790
    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object v0

    .line 792
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    move-result-object v0

    return-object v0
.end method

.method public getHeadIndex()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->headIndex_:I

    return v0
.end method

.method public getHeadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->headName_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->headName_:Ljava/lang/String;

    .line 970
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuantizedEmbedding()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embedding_:Ljava/lang/Object;

    .line 840
    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    return-object v0

    .line 842
    :cond_0
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$QuantizedEmbedding;

    move-result-object v0

    return-object v0
.end method

.method public hasFloatEmbedding()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasHeadIndex()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadName()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQuantizedEmbedding()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$Embedding;->embeddingCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 724
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 724
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
