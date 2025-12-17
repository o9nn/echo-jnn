.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionCloneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SolutionSessionClone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionCloneOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

.field public static final GRAPH_NAME_FIELD_NUMBER:I = 0x2

.field public static final INIT_LATENCY_MS_FIELD_NUMBER:I = 0x3

.field public static final MODE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private graphName_:Ljava/lang/String;

.field private initLatencyMs_:J

.field private mode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4166
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    const-class v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 4170
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3627
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->graphName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5800()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)V
    .locals 0

    .line 3622
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->setMode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .locals 0

    .line 3622
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->clearMode()V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;Ljava/lang/String;)V
    .locals 0

    .line 3622
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->setGraphName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .locals 0

    .line 3622
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->clearGraphName()V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3622
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->setGraphNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;J)V
    .locals 0

    .line 3622
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->setInitLatencyMs(J)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .locals 0

    .line 3622
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->clearInitLatencyMs()V

    return-void
.end method

.method private clearGraphName()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    .line 3749
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getGraphName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->graphName_:Ljava/lang/String;

    return-void
.end method

.method private clearInitLatencyMs()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->initLatencyMs_:J

    return-void
.end method

.method private clearMode()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->mode_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3891
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3894
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3868
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3874
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3832
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3839
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3879
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3886
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3856
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3863
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3819
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3826
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3844
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 3851
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 4181
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGraphName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->graphName_:Ljava/lang/String;

    return-void
.end method

.method private setGraphNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3762
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->graphName_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    return-void
.end method

.method private setInitLatencyMs(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->initLatencyMs_:J

    return-void
.end method

.method private setMode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3667
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->mode_:I

    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 4113
    sget-object p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4159
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 4153
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 4140
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4143
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->PARSER:Lcom/google/protobuf/Parser;

    .line 4148
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
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "mode_"

    .line 4124
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    const-string v0, "graphName_"

    const-string v1, "initLatencyMs_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1003\u0002"

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    .line 4131
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4118
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;-><init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V

    return-object p1

    .line 4115
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;-><init>()V

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

    .line 3622
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getGraphName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->graphName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGraphNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->graphName_:Ljava/lang/String;

    .line 3722
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInitLatencyMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->initLatencyMs_:J

    return-wide v0
.end method

.method public getMode()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->mode_:I

    .line 3655
    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3656
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    :cond_0
    return-object v0
.end method

.method public hasGraphName()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitLatencyMs()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMode()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->bitField0_:I

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

    .line 3622
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3622
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
