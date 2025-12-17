.class public final Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RasterizationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$RasterizationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rasterization"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;,
        Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;,
        Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$IntervalOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$RasterizationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

.field public static final INTERVAL_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private interval_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1018
    new-instance v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    const-class v1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 1022
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->memoizedIsInitialized:B

    .line 66
    invoke-static {}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->addInterval(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->addInterval(ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;Ljava/lang/Iterable;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->addAllInterval(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->clearInterval()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->removeInterval(I)V

    return-void
.end method

.method static synthetic access$800()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->setInterval(ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V

    return-void
.end method

.method private addAllInterval(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
            ">;)V"
        }
    .end annotation

    .line 640
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->ensureIntervalIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 641
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addInterval(ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V
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

    .line 624
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 625
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->ensureIntervalIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 626
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInterval(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->ensureIntervalIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 610
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearInterval()V
    .locals 1

    .line 655
    invoke-static {}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureIntervalIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 575
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 747
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 750
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 724
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 730
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 688
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 695
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 735
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 742
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 712
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 719
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 675
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 682
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 700
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 707
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 1033
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeInterval(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 668
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->ensureIntervalIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 669
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setInterval(ILcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V
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

    .line 593
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->ensureIntervalIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 595
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 968
    sget-object p3, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1011
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

    iput-byte p1, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->memoizedIsInitialized:B

    .line 1004
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 991
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 994
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->PARSER:Lcom/google/protobuf/Parser;

    .line 999
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
    sget-object p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    return-object p1

    :pswitch_4
    const-string p1, "interval_"

    .line 976
    const-class p2, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u041b"

    sget-object p3, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 982
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 973
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;-><init>(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$1;)V

    return-object p1

    .line 970
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;-><init>()V

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

    .line 60
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getInterval(I)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 557
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p1
.end method

.method public getIntervalCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 543
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getIntervalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getIntervalOrBuilder(I)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$IntervalOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 571
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$IntervalOrBuilder;

    return-object p1
.end method

.method public getIntervalOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$IntervalOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->interval_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
