.class public final Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "MediaPipeOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPipeOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;",
        "Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptionsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 184
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    const-class v1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 188
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 106
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 109
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 83
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 89
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 47
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 54
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 94
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 101
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 71
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 78
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 34
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 41
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 59
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 66
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 199
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 138
    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 177
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

    iput-byte p1, p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->memoizedIsInitialized:B

    .line 170
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 157
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 160
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 165
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
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    return-object p1

    :pswitch_4
    const-string p1, "\u0001\u0000"

    sget-object p2, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    .line 148
    invoke-static {p2, p1, p3}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 143
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions$Builder;-><init>(Lcom/google/mediapipe/proto/MediaPipeOptionsProto$1;)V

    return-object p1

    .line 140
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/MediaPipeOptionsProto$MediaPipeOptions;-><init>()V

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

    .line 24
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
