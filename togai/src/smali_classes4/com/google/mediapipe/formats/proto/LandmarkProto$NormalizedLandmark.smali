.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalizedLandmark"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRESENCE_FIELD_NUMBER:I = 0x5

.field public static final VISIBILITY_FIELD_NUMBER:I = 0x4

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2

.field public static final Z_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private presence_:F

.field private visibility_:F

.field private x_:F

.field private y_:F

.field private z_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2170
    new-instance v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    const-class v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 2174
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1656
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$2800()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .locals 0

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setX(F)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .locals 0

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearX()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .locals 0

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setY(F)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .locals 0

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearY()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .locals 0

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setZ(F)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .locals 0

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearZ()V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .locals 0

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setVisibility(F)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .locals 0

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearVisibility()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;F)V
    .locals 0

    .line 1651
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->setPresence(F)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .locals 0

    .line 1651
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->clearPresence()V

    return-void
.end method

.method private clearPresence()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->presence_:F

    return-void
.end method

.method private clearVisibility()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->visibility_:F

    return-void
.end method

.method private clearX()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->x_:F

    return-void
.end method

.method private clearY()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->y_:F

    return-void
.end method

.method private clearZ()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->z_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1904
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1907
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1881
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1887
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1845
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1852
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1892
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1899
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1869
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1876
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1832
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1839
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1857
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 1864
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 2185
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPresence(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->presence_:F

    return-void
.end method

.method private setVisibility(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->visibility_:F

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->x_:F

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->y_:F

    return-void
.end method

.method private setZ(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->z_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .line 2116
    sget-object p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2163
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2157
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 2144
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2147
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->PARSER:Lcom/google/protobuf/Parser;

    .line 2152
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "x_"

    const-string v2, "y_"

    const-string v3, "z_"

    const-string v4, "visibility_"

    const-string v5, "presence_"

    .line 2124
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003\u0005\u1001\u0004"

    sget-object p3, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    .line 2135
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2121
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V

    return-object p1

    .line 2118
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;-><init>()V

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

    .line 1651
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getPresence()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->presence_:F

    return v0
.end method

.method public getVisibility()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->visibility_:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->y_:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->z_:F

    return v0
.end method

.method public hasPresence()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVisibility()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasZ()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;->bitField0_:I

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

    .line 1651
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1651
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
