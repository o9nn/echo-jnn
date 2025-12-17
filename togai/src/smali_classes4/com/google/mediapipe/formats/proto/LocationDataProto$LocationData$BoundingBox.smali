.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundingBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBoxOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDTH_FIELD_NUMBER:I = 0x3

.field public static final XMIN_FIELD_NUMBER:I = 0x1

.field public static final YMIN_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private height_:I

.field private width_:I

.field private xmin_:I

.field private ymin_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 739
    new-instance v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    const-class v1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 743
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->setXmin(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->clearXmin()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->setYmin(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->clearYmin()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->setWidth(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->clearWidth()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;I)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->setHeight(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)V
    .locals 0

    .line 291
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->clearHeight()V

    return-void
.end method

.method private clearHeight()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->height_:I

    return-void
.end method

.method private clearWidth()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->width_:I

    return-void
.end method

.method private clearXmin()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->xmin_:I

    return-void
.end method

.method private clearYmin()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->ymin_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 510
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 513
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 487
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 493
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 451
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 458
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 498
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 505
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 475
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 482
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 438
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 445
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 463
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 470
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 754
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->getParserForType()Lcom/google/protobuf/Parser;

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->height_:I

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->width_:I

    return-void
.end method

.method private setXmin(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->xmin_:I

    return-void
.end method

.method private setYmin(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->ymin_:I

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

    .line 686
    sget-object p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 732
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 726
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 713
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 716
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    .line 721
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "xmin_"

    const-string p3, "ymin_"

    const-string v0, "width_"

    const-string v1, "height_"

    .line 694
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1004\u0003"

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    .line 704
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 691
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V

    return-object p1

    .line 688
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;-><init>()V

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

    .line 291
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->height_:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->width_:I

    return v0
.end method

.method public getXmin()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->xmin_:I

    return v0
.end method

.method public getYmin()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->ymin_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWidth()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasXmin()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasYmin()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    .line 291
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 291
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
