.class public final Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RasterizationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$IntervalOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Interval"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$IntervalOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

.field public static final LEFT_X_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHT_X_FIELD_NUMBER:I = 0x3

.field public static final Y_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private leftX_:I

.field private memoizedIsInitialized:B

.field private rightX_:I

.field private y_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 482
    new-instance v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    const-class v1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 486
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->setY(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->clearY()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->setLeftX(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->clearLeftX()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->setRightX(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->clearRightX()V

    return-void
.end method

.method private clearLeftX()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->leftX_:I

    return-void
.end method

.method private clearRightX()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->rightX_:I

    return-void
.end method

.method private clearY()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->y_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 293
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 296
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 270
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 276
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 234
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 241
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 281
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 288
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 258
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 265
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 221
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 228
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 246
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;
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

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 253
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 497
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLeftX(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->leftX_:I

    return-void
.end method

.method private setRightX(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->rightX_:I

    return-void
.end method

.method private setY(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->y_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 429
    sget-object p3, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 475
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

    iput-byte p1, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->memoizedIsInitialized:B

    .line 468
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 455
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 458
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->PARSER:Lcom/google/protobuf/Parser;

    .line 463
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
    sget-object p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "y_"

    const-string p3, "leftX_"

    const-string v0, "rightX_"

    .line 437
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0003\u0001\u1504\u0000\u0002\u1504\u0001\u0003\u1504\u0002"

    sget-object p3, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    .line 446
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 434
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval$Builder;-><init>(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$1;)V

    return-object p1

    .line 431
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;-><init>()V

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

    .line 108
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLeftX()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->leftX_:I

    return v0
.end method

.method public getRightX()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->rightX_:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->y_:I

    return v0
.end method

.method public hasLeftX()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRightX()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasY()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Interval;->bitField0_:I

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

    .line 108
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
