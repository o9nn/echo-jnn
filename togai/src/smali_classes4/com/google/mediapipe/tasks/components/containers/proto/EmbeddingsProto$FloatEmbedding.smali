.class public final Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EmbeddingsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbeddingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FloatEmbedding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbeddingOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
.field private valuesMemoizedSerializedSize:I

.field private values_:Lcom/google/protobuf/Internal$FloatList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 341
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    const-class v1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 345
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->valuesMemoizedSerializedSize:I

    .line 45
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;IF)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->setValues(IF)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;F)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->addValues(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;Ljava/lang/Iterable;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->addAllValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->clearValues()V

    return-void
.end method

.method private addAllValues(Ljava/lang/Iterable;)V
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->ensureValuesIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    .line 108
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addValues(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->ensureValuesIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    .line 99
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$FloatList;->addFloat(F)V

    return-void
.end method

.method private clearValues()V
    .locals 1

    .line 115
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->emptyFloatList()Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    return-void
.end method

.method private ensureValuesIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    .line 78
    invoke-interface {v0}, Lcom/google/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$FloatList;)Lcom/google/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 193
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 196
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 170
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 176
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 134
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 141
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 181
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 188
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 158
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 165
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 121
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 128
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 146
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 153
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 356
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValues(IF)V
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

    .line 90
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->ensureValuesIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    .line 91
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$FloatList;->setFloat(IF)F

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

    .line 293
    sget-object p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 334
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 328
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 315
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 318
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->PARSER:Lcom/google/protobuf/Parser;

    .line 323
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
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    return-object p1

    :pswitch_4
    const-string p1, "values_"

    .line 301
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001$"

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    .line 306
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 298
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding$Builder;-><init>(Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$1;)V

    return-object p1

    .line 295
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;-><init>()V

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

    .line 39
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getValues(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    .line 73
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$FloatList;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getValuesCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    .line 64
    invoke-interface {v0}, Lcom/google/protobuf/Internal$FloatList;->size()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/EmbeddingsProto$FloatEmbedding;->values_:Lcom/google/protobuf/Internal$FloatList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
