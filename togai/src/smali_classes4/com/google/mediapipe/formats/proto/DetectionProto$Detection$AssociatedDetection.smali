.class public final Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DetectionProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/DetectionProto$Detection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssociatedDetection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetectionOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private id_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 628
    new-instance v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    const-class v1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 632
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;I)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->setId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->clearId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;F)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->setConfidence(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->clearConfidence()V

    return-void
.end method

.method private clearConfidence()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->confidence_:F

    return-void
.end method

.method private clearId()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->id_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 472
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 475
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 449
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 455
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 413
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 420
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 460
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 467
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 437
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 444
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 400
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 407
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 425
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 432
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 643
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setConfidence(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->confidence_:F

    return-void
.end method

.method private setId(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->id_:I

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

    .line 577
    sget-object p2, Lcom/google/mediapipe/formats/proto/DetectionProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 621
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 615
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 602
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 605
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->PARSER:Lcom/google/protobuf/Parser;

    .line 610
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "id_"

    const-string p3, "confidence_"

    .line 585
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1001\u0001"

    sget-object p3, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    .line 593
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 582
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection$Builder;-><init>(Lcom/google/mediapipe/formats/proto/DetectionProto$1;)V

    return-object p1

    .line 579
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;-><init>()V

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

.method public getConfidence()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 321
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->id_:I

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasId()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/proto/DetectionProto$Detection$AssociatedDetection;->bitField0_:I

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

    .line 321
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 321
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
