.class public final Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "PacketGeneratorProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/PacketGeneratorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PacketGeneratorOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;",
        "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptionsOrBuilder;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

.field public static final MERGE_FIELDS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private mergeFields_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 321
    new-instance v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    const-class v1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 325
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->memoizedIsInitialized:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->mergeFields_:Z

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->setMergeFields(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->clearMergeFields()V

    return-void
.end method

.method private clearMergeFields()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->bitField0_:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->mergeFields_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 183
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 186
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 160
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 166
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 124
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 131
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 171
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 178
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 148
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 155
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 111
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 118
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 136
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;
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

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 143
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 336
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMergeFields(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->mergeFields_:Z

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

    .line 271
    sget-object p3, Lcom/google/mediapipe/proto/PacketGeneratorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 314
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

    iput-byte p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->memoizedIsInitialized:B

    .line 307
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 294
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 297
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 302
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
    sget-object p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "mergeFields_"

    .line 279
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1007\u0000"

    sget-object p3, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    .line 285
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 276
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions$Builder;-><init>(Lcom/google/mediapipe/proto/PacketGeneratorProto$1;)V

    return-object p1

    .line 273
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;-><init>()V

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

    .line 45
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getMergeFields()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->mergeFields_:Z

    return v0
.end method

.method public hasMergeFields()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/PacketGeneratorProto$PacketGeneratorOptions;->bitField0_:I

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

    .line 45
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
