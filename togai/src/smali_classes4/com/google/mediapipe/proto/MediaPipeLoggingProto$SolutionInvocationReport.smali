.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MediaPipeLoggingProto.java"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SolutionInvocationReport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReportOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

.field public static final DROPPED_FIELD_NUMBER:I = 0x7

.field public static final ELAPSED_TIME_MS_FIELD_NUMBER:I = 0x6

.field public static final INVOCATION_COUNT_FIELD_NUMBER:I = 0x8

.field public static final MODE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIPELINE_AVERAGE_LATENCY_MS_FIELD_NUMBER:I = 0x4

.field public static final PIPELINE_PEAK_LATENCY_MS_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private dropped_:J

.field private elapsedTimeMs_:J

.field private invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;",
            ">;"
        }
    .end annotation
.end field

.field private mode_:I

.field private pipelineAverageLatencyMs_:J

.field private pipelinePeakLatencyMs_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5308
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;-><init>()V

    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    const-class v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 5312
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4326
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4327
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$6700()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->setMode(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 0

    .line 4321
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->clearMode()V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;J)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->setPipelineAverageLatencyMs(J)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 0

    .line 4321
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->clearPipelineAverageLatencyMs()V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;J)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->setPipelinePeakLatencyMs(J)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 0

    .line 4321
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->clearPipelinePeakLatencyMs()V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;J)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->setElapsedTimeMs(J)V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 0

    .line 4321
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->clearElapsedTimeMs()V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;J)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->setDropped(J)V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 0

    .line 4321
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->clearDropped()V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->setInvocationCount(ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->addInvocationCount(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->addInvocationCount(ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;Ljava/lang/Iterable;)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->addAllInvocationCount(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .locals 0

    .line 4321
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->clearInvocationCount()V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;I)V
    .locals 0

    .line 4321
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->removeInvocationCount(I)V

    return-void
.end method

.method private addAllInvocationCount(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;",
            ">;)V"
        }
    .end annotation

    .line 4701
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->ensureInvocationCountIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4702
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addInvocationCount(ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V
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

    .line 4688
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4689
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->ensureInvocationCountIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4690
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInvocationCount(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4676
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->ensureInvocationCountIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4677
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDropped()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->dropped_:J

    return-void
.end method

.method private clearElapsedTimeMs()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->elapsedTimeMs_:J

    return-void
.end method

.method private clearInvocationCount()V
    .locals 1

    .line 4713
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearMode()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->mode_:I

    return-void
.end method

.method private clearPipelineAverageLatencyMs()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->pipelineAverageLatencyMs_:J

    return-void
.end method

.method private clearPipelinePeakLatencyMs()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->pipelinePeakLatencyMs_:J

    return-void
.end method

.method private ensureInvocationCountIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4648
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4650
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4802
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4805
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4779
    invoke-static {v0, p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4785
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4743
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4750
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4790
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4797
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4767
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4774
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4730
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4737
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4755
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
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

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 4762
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 5323
    invoke-virtual {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeInvocationCount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4723
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->ensureInvocationCountIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4724
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDropped(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->dropped_:J

    return-void
.end method

.method private setElapsedTimeMs(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->elapsedTimeMs_:J

    return-void
.end method

.method private setInvocationCount(ILcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;)V
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

    .line 4663
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4664
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->ensureInvocationCountIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4665
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 4366
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->mode_:I

    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    return-void
.end method

.method private setPipelineAverageLatencyMs(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->pipelineAverageLatencyMs_:J

    return-void
.end method

.method private setPipelinePeakLatencyMs(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->pipelinePeakLatencyMs_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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

    .line 5251
    sget-object p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5301
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 5295
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 5282
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5285
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->PARSER:Lcom/google/protobuf/Parser;

    .line 5290
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
    sget-object p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "mode_"

    .line 5262
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v2

    const-string v3, "pipelineAverageLatencyMs_"

    const-string v4, "pipelinePeakLatencyMs_"

    const-string v5, "elapsedTimeMs_"

    const-string v6, "dropped_"

    const-string v7, "invocationCount_"

    const-class v8, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0008\u0006\u0000\u0001\u0000\u0001\u100c\u0000\u0004\u1003\u0001\u0005\u1003\u0002\u0006\u1003\u0003\u0007\u1002\u0004\u0008\u001b"

    sget-object p3, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    .line 5273
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5256
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;-><init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V

    return-object p1

    .line 5253
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-direct {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;-><init>()V

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

    .line 4321
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDropped()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->dropped_:J

    return-wide v0
.end method

.method public getElapsedTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->elapsedTimeMs_:J

    return-wide v0
.end method

.method public getInvocationCount(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4633
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;

    return-object p1
.end method

.method public getInvocationCountCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4622
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getInvocationCountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInvocationCountOrBuilder(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCountOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4644
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCountOrBuilder;

    return-object p1
.end method

.method public getInvocationCountOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationCountOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->invocationCount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMode()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->mode_:I

    .line 4354
    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4355
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;->MODE_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionMode;

    :cond_0
    return-object v0
.end method

.method public getPipelineAverageLatencyMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->pipelineAverageLatencyMs_:J

    return-wide v0
.end method

.method public getPipelinePeakLatencyMs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->pipelinePeakLatencyMs_:J

    return-wide v0
.end method

.method public hasDropped()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasElapsedTimeMs()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPipelineAverageLatencyMs()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPipelinePeakLatencyMs()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    .line 4321
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4321
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
