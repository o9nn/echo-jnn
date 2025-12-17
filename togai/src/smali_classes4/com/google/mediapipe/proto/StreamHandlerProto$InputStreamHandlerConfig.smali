.class public final Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StreamHandlerProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/StreamHandlerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamHandlerConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;",
        "Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfigOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

.field public static final INPUT_STREAM_HANDLER_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private inputStreamHandler_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 534
    new-instance v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    const-class v1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 538
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->memoizedIsInitialized:B

    const-string v0, "DefaultInputStreamHandler"

    iput-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->inputStreamHandler_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->setInputStreamHandler(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->clearInputStreamHandler()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->setInputStreamHandlerBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->setOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->mergeOptions(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->clearOptions()V

    return-void
.end method

.method private clearInputStreamHandler()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    .line 141
    invoke-static {}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->getInputStreamHandler()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->inputStreamHandler_:Ljava/lang/String;

    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    iget v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

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

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 206
    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    iput-object p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 298
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 301
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 275
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 281
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 239
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 246
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 286
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 293
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 263
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 270
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 226
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 233
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 251
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;
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

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 258
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 549
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setInputStreamHandler(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->inputStreamHandler_:Ljava/lang/String;

    return-void
.end method

.method private setInputStreamHandlerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->inputStreamHandler_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

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

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    iget p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

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

    .line 482
    sget-object p3, Lcom/google/mediapipe/proto/StreamHandlerProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 527
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

    iput-byte p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->memoizedIsInitialized:B

    .line 520
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 507
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 510
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->PARSER:Lcom/google/protobuf/Parser;

    .line 515
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
    sget-object p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "inputStreamHandler_"

    const-string p3, "options_"

    .line 490
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0001\u0001\u1008\u0000\u0003\u1409\u0001"

    sget-object p3, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    .line 498
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 487
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig$Builder;-><init>(Lcom/google/mediapipe/proto/StreamHandlerProto$1;)V

    return-object p1

    .line 484
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;-><init>()V

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

    .line 70
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getInputStreamHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->inputStreamHandler_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStreamHandlerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->inputStreamHandler_:Ljava/lang/String;

    .line 116
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->options_:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasInputStreamHandler()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOptions()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/StreamHandlerProto$InputStreamHandlerConfig;->bitField0_:I

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

    .line 70
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
