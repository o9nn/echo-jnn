.class public final Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExternalFileProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMetaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilePointerMeta"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMetaOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

.field public static final LENGTH_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINTER_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private length_:J

.field private pointer_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1943
    new-instance v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    const-class v1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1947
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1577
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$2100()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;J)V
    .locals 0

    .line 1572
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->setPointer(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V
    .locals 0

    .line 1572
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->clearPointer()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;J)V
    .locals 0

    .line 1572
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->setLength(J)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V
    .locals 0

    .line 1572
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->clearLength()V

    return-void
.end method

.method private clearLength()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->length_:J

    return-void
.end method

.method private clearPointer()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->pointer_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1755
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1758
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1732
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1738
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1696
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1703
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1743
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1750
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1720
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1727
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1683
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1690
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1708
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1715
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1958
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLength(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->length_:J

    return-void
.end method

.method private setPointer(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->pointer_:J

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

    .line 1892
    sget-object p2, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1936
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1930
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1917
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1920
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->PARSER:Lcom/google/protobuf/Parser;

    .line 1925
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
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "pointer_"

    const-string p3, "length_"

    .line 1900
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1003\u0000\u0002\u1002\u0001"

    sget-object p3, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 1908
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1897
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;-><init>(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$1;)V

    return-object p1

    .line 1894
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;-><init>()V

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

    .line 1572
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->length_:J

    return-wide v0
.end method

.method public getPointer()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->pointer_:J

    return-wide v0
.end method

.method public hasLength()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPointer()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->bitField0_:I

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

    .line 1572
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1572
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
