.class public final Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EmbedderOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbedderOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;",
        "Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

.field public static final L2_NORMALIZE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUANTIZE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private l2Normalize_:Z

.field private quantize_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 489
    new-instance v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    const-class v1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 493
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->setL2Normalize(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->clearL2Normalize()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->setQuantize(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->clearQuantize()V

    return-void
.end method

.method private clearL2Normalize()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->l2Normalize_:Z

    return-void
.end method

.method private clearQuantize()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->quantize_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 279
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 282
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 256
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 262
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 220
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 227
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 267
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 274
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 244
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 251
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 207
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 214
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 232
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 239
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 504
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setL2Normalize(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->l2Normalize_:Z

    return-void
.end method

.method private setQuantize(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->quantize_:Z

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

    .line 438
    sget-object p2, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 482
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 476
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 463
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 466
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 471
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
    sget-object p1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "l2Normalize_"

    const-string p3, "quantize_"

    .line 446
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001"

    sget-object p3, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    .line 454
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 443
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$1;)V

    return-object p1

    .line 440
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;-><init>()V

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

    .line 72
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getL2Normalize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->l2Normalize_:Z

    return v0
.end method

.method public getQuantize()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->quantize_:Z

    return v0
.end method

.method public hasL2Normalize()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasQuantize()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/processors/proto/EmbedderOptionsProto$EmbedderOptions;->bitField0_:I

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

    .line 72
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
