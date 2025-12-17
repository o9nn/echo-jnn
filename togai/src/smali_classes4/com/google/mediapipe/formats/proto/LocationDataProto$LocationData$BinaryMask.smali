.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BinaryMask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMaskOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;",
            ">;"
        }
    .end annotation
.end field

.field public static final RASTERIZATION_FIELD_NUMBER:I = 0x3

.field public static final WIDTH_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private height_:I

.field private memoizedIsInitialized:B

.field private rasterization_:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1822
    new-instance v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    const-class v1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1826
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1349
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$2000()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;I)V
    .locals 0

    .line 1344
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->setWidth(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V
    .locals 0

    .line 1344
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->clearWidth()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;I)V
    .locals 0

    .line 1344
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->setHeight(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V
    .locals 0

    .line 1344
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->clearHeight()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V
    .locals 0

    .line 1344
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->setRasterization(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V
    .locals 0

    .line 1344
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->mergeRasterization(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)V
    .locals 0

    .line 1344
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->clearRasterization()V

    return-void
.end method

.method private clearHeight()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->height_:I

    return-void
.end method

.method private clearRasterization()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->rasterization_:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    return-void
.end method

.method private clearWidth()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->width_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object v0
.end method

.method private mergeRasterization(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1481
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->rasterization_:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    if-eqz v0, :cond_0

    .line 1483
    invoke-static {}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->getDefaultInstance()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->rasterization_:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    .line 1485
    invoke-static {v0}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->newBuilder(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->rasterization_:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->rasterization_:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1577
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1580
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1554
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1560
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1518
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1525
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1565
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1572
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1542
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1549
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1505
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1512
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1530
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1537
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1837
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->height_:I

    return-void
.end method

.method private setRasterization(Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->rasterization_:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    return-void
.end method

.method private setWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->width_:I

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

    .line 1769
    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1815
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

    iput-byte p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->memoizedIsInitialized:B

    .line 1808
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1795
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1798
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 1803
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "width_"

    const-string p3, "height_"

    const-string v0, "rasterization_"

    .line 1777
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1409\u0002"

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    .line 1786
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1774
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V

    return-object p1

    .line 1771
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;-><init>()V

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

    .line 1344
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->height_:I

    return v0
.end method

.method public getRasterization()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->rasterization_:Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    if-nez v0, :cond_0

    .line 1458
    invoke-static {}, Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;->getDefaultInstance()Lcom/google/mediapipe/formats/annotation/proto/RasterizationProto$Rasterization;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRasterization()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWidth()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BinaryMask;->bitField0_:I

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

    .line 1344
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1344
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
