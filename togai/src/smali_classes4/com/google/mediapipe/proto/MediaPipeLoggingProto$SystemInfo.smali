.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_ID_FIELD_NUMBER:I = 0x2

.field public static final APP_VERSION_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

.field public static final MEDIAPIPE_VERSION_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_FIELD_NUMBER:I = 0x1


# instance fields
.field private appId_:Ljava/lang/String;

.field private appVersion_:Ljava/lang/String;

.field private bitField0_:I

.field private mediapipeVersion_:Ljava/lang/String;

.field private platform_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1398
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    const-class v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 1402
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 644
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appId_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appVersion_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->mediapipeVersion_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->clearPlatform()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Ljava/lang/String;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->clearAppId()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->setAppIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Ljava/lang/String;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->clearAppVersion()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->setAppVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Ljava/lang/String;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->setMediapipeVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)V
    .locals 0

    .line 639
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->clearMediapipeVersion()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->setMediapipeVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;)V
    .locals 0

    .line 639
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->setPlatform(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;)V

    return-void
.end method

.method private clearAppId()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    .line 768
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appId_:Ljava/lang/String;

    return-void
.end method

.method private clearAppVersion()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    .line 847
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearMediapipeVersion()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    .line 925
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getMediapipeVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->mediapipeVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearPlatform()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->platform_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 1016
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 1019
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 993
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 999
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 957
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 964
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 1004
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 1011
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 981
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 988
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 944
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 951
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 969
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 976
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 1413
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAppId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 754
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appId_:Ljava/lang/String;

    return-void
.end method

.method private setAppIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 781
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appId_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    return-void
.end method

.method private setAppVersion(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 834
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appVersion_:Ljava/lang/String;

    return-void
.end method

.method private setAppVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 859
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appVersion_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    return-void
.end method

.method private setMediapipeVersion(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 912
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->mediapipeVersion_:Ljava/lang/String;

    return-void
.end method

.method private setMediapipeVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 937
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->mediapipeVersion_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    return-void
.end method

.method private setPlatform(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 686
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->platform_:I

    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .line 1344
    sget-object p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1391
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1385
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 1372
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1375
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 1380
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
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "platform_"

    .line 1355
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    const-string v3, "appId_"

    const-string v4, "appVersion_"

    const-string v5, "mediapipeVersion_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003"

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    .line 1363
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1349
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo$Builder;-><init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V

    return-object p1

    .line 1346
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;-><init>()V

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

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appId_:Ljava/lang/String;

    .line 741
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->appVersion_:Ljava/lang/String;

    .line 822
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 639
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getMediapipeVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->mediapipeVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getMediapipeVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->mediapipeVersion_:Ljava/lang/String;

    .line 900
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPlatform()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->platform_:I

    .line 674
    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 675
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;->PLATFORM_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$Platform;

    :cond_0
    return-object v0
.end method

.method public hasAppId()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAppVersion()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediapipeVersion()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlatform()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SystemInfo;->bitField0_:I

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

    .line 639
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 639
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
