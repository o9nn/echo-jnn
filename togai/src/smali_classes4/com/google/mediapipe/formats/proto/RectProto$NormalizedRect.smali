.class public final Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RectProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/RectProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalizedRect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
        "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRectOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECT_ID_FIELD_NUMBER:I = 0x6

.field public static final ROTATION_FIELD_NUMBER:I = 0x5

.field public static final WIDTH_FIELD_NUMBER:I = 0x4

.field public static final X_CENTER_FIELD_NUMBER:I = 0x1

.field public static final Y_CENTER_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private height_:F

.field private memoizedIsInitialized:B

.field private rectId_:J

.field private rotation_:F

.field private width_:F

.field private xCenter_:F

.field private yCenter_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1720
    new-instance v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    const-class v1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1724
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 988
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->memoizedIsInitialized:B

    return-void
.end method

.method static synthetic access$1400()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .locals 0

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setXCenter(F)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearXCenter()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .locals 0

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setYCenter(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearYCenter()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .locals 0

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setHeight(F)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearHeight()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .locals 0

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setWidth(F)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearWidth()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;F)V
    .locals 0

    .line 983
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setRotation(F)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearRotation()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;J)V
    .locals 0

    .line 983
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->setRectId(J)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)V
    .locals 0

    .line 983
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->clearRectId()V

    return-void
.end method

.method private clearHeight()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->height_:F

    return-void
.end method

.method private clearRectId()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rectId_:J

    return-void
.end method

.method private clearRotation()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rotation_:F

    return-void
.end method

.method private clearWidth()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->width_:F

    return-void
.end method

.method private clearXCenter()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->xCenter_:F

    return-void
.end method

.method private clearYCenter()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->yCenter_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1342
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1345
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1319
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1325
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1283
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1290
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1330
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1337
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1307
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1314
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1270
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1277
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1295
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1302
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1735
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeight(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->height_:F

    return-void
.end method

.method private setRectId(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rectId_:J

    return-void
.end method

.method private setRotation(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rotation_:F

    return-void
.end method

.method private setWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->width_:F

    return-void
.end method

.method private setXCenter(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->xCenter_:F

    return-void
.end method

.method private setYCenter(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->yCenter_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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

    .line 1663
    sget-object p3, Lcom/google/mediapipe/formats/proto/RectProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1713
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

    iput-byte p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->memoizedIsInitialized:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->memoizedIsInitialized:B

    .line 1706
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    const-class p2, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1693
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1696
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->PARSER:Lcom/google/protobuf/Parser;

    .line 1701
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "xCenter_"

    const-string v2, "yCenter_"

    const-string v3, "height_"

    const-string v4, "width_"

    const-string v5, "rotation_"

    const-string v6, "rectId_"

    .line 1671
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0004\u0001\u1501\u0000\u0002\u1501\u0001\u0003\u1501\u0002\u0004\u1501\u0003\u0005\u1001\u0004\u0006\u1002\u0005"

    sget-object p3, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    .line 1684
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1668
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;

    invoke-direct {p1, p3}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect$Builder;-><init>(Lcom/google/mediapipe/formats/proto/RectProto$1;)V

    return-object p1

    .line 1665
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;-><init>()V

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

    .line 983
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->height_:F

    return v0
.end method

.method public getRectId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rectId_:J

    return-wide v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->rotation_:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->width_:F

    return v0
.end method

.method public getXCenter()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->xCenter_:F

    return v0
.end method

.method public getYCenter()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->yCenter_:F

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRectId()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRotation()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasXCenter()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasYCenter()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/RectProto$NormalizedRect;->bitField0_:I

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

    .line 983
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 983
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
