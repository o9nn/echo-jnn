.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$ScribbleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scribble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$ScribbleOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINT_FIELD_NUMBER:I = 0x1


# instance fields
.field private point_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6757
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;-><init>()V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6761
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6408
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$10800()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .locals 0

    .line 6402
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->setPoint(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .locals 0

    .line 6402
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->addPoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-void
.end method

.method static synthetic access$11100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .locals 0

    .line 6402
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->addPoint(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;Ljava/lang/Iterable;)V
    .locals 0

    .line 6402
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->addAllPoint(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V
    .locals 0

    .line 6402
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->clearPoint()V

    return-void
.end method

.method static synthetic access$11400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;I)V
    .locals 0

    .line 6402
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->removePoint(I)V

    return-void
.end method

.method private addAllPoint(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;",
            ">;)V"
        }
    .end annotation

    .line 6486
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->ensurePointIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6487
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPoint(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
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

    .line 6477
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6478
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->ensurePointIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6479
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6469
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->ensurePointIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6470
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearPoint()V
    .locals 1

    .line 6494
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensurePointIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6449
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6451
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6579
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6582
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6556
    invoke-static {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6562
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6520
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6527
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6567
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6574
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6544
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6551
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6507
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6514
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6532
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6539
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6772
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePoint(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6500
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->ensurePointIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6501
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setPoint(ILcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
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

    .line 6460
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6461
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->ensurePointIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6462
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

    .line 6708
    sget-object p2, Lcom/google/mediapipe/util/proto/RenderDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6750
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 6744
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6731
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6734
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->PARSER:Lcom/google/protobuf/Parser;

    .line 6739
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
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p1

    :pswitch_4
    const-string p1, "point_"

    .line 6716
    const-class p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    .line 6722
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6713
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;-><init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V

    return-object p1

    .line 6710
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    invoke-direct {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;-><init>()V

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

    .line 6402
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getPoint(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6438
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    return-object p1
.end method

.method public getPointCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6431
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPointOrBuilder(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$PointOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6445
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$PointOrBuilder;

    return-object p1
.end method

.method public getPointOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$PointOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->point_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6402
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6402
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
