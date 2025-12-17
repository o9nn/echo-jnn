.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelativeKeypoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypointOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

.field public static final KEYPOINT_LABEL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCORE_FIELD_NUMBER:I = 0x4

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private keypointLabel_:Ljava/lang/String;

.field private score_:F

.field private x_:F

.field private y_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2393
    new-instance v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    const-class v1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2397
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1908
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->keypointLabel_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2900()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;F)V
    .locals 0

    .line 1903
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->setX(F)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
    .locals 0

    .line 1903
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->clearX()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;F)V
    .locals 0

    .line 1903
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->setY(F)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
    .locals 0

    .line 1903
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->clearY()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;Ljava/lang/String;)V
    .locals 0

    .line 1903
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->setKeypointLabel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
    .locals 0

    .line 1903
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->clearKeypointLabel()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1903
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->setKeypointLabelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;F)V
    .locals 0

    .line 1903
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->setScore(F)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)V
    .locals 0

    .line 1903
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->clearScore()V

    return-void
.end method

.method private clearKeypointLabel()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    .line 2022
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->getKeypointLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->keypointLabel_:Ljava/lang/String;

    return-void
.end method

.method private clearScore()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->score_:F

    return-void
.end method

.method private clearX()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->x_:F

    return-void
.end method

.method private clearY()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->y_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2143
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2146
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2120
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2126
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2084
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2091
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2131
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2138
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2108
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2115
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2071
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2078
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2096
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2103
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2408
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKeypointLabel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->keypointLabel_:Ljava/lang/String;

    return-void
.end method

.method private setKeypointLabelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2030
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->keypointLabel_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    return-void
.end method

.method private setScore(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->score_:F

    return-void
.end method

.method private setX(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->x_:F

    return-void
.end method

.method private setY(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->y_:F

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

    .line 2340
    sget-object p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2386
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2380
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2367
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2370
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->PARSER:Lcom/google/protobuf/Parser;

    .line 2375
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "x_"

    const-string p3, "y_"

    const-string v0, "keypointLabel_"

    const-string v1, "score_"

    .line 2348
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1008\u0002\u0004\u1001\u0003"

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    .line 2358
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2345
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V

    return-object p1

    .line 2342
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;-><init>()V

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

    .line 1903
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getKeypointLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->keypointLabel_:Ljava/lang/String;

    return-object v0
.end method

.method public getKeypointLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->keypointLabel_:Ljava/lang/String;

    .line 2005
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->score_:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->y_:F

    return v0
.end method

.method public hasKeypointLabel()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScore()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasX()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasY()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeKeypoint;->bitField0_:I

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

    .line 1903
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1903
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
