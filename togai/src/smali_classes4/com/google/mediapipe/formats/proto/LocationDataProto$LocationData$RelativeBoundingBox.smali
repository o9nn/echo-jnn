.class public final Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBoxOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelativeBoundingBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBoxOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDTH_FIELD_NUMBER:I = 0x3

.field public static final XMIN_FIELD_NUMBER:I = 0x1

.field public static final YMIN_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private height_:F

.field private width_:F

.field private xmin_:F

.field private ymin_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1264
    new-instance v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    const-class v1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1268
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 820
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;F)V
    .locals 0

    .line 815
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->setXmin(F)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V
    .locals 0

    .line 815
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->clearXmin()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;F)V
    .locals 0

    .line 815
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->setYmin(F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V
    .locals 0

    .line 815
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->clearYmin()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;F)V
    .locals 0

    .line 815
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->setWidth(F)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V
    .locals 0

    .line 815
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->clearWidth()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;F)V
    .locals 0

    .line 815
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->setHeight(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)V
    .locals 0

    .line 815
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->clearHeight()V

    return-void
.end method

.method private clearHeight()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->height_:F

    return-void
.end method

.method private clearWidth()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->width_:F

    return-void
.end method

.method private clearXmin()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->xmin_:F

    return-void
.end method

.method private clearYmin()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->ymin_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1034
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1037
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1011
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1017
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 975
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 982
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1022
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1029
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 999
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1006
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 962
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 969
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 987
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 994
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1279
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->getParserForType()Lcom/google/protobuf/Parser;

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->height_:F

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->width_:F

    return-void
.end method

.method private setXmin(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->xmin_:F

    return-void
.end method

.method private setYmin(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->ymin_:F

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

    .line 1211
    sget-object p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1257
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1251
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1238
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1241
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->PARSER:Lcom/google/protobuf/Parser;

    .line 1246
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "xmin_"

    const-string p3, "ymin_"

    const-string v0, "width_"

    const-string v1, "height_"

    .line 1219
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1001\u0000\u0002\u1001\u0001\u0003\u1001\u0002\u0004\u1001\u0003"

    sget-object p3, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    .line 1229
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1216
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LocationDataProto$1;)V

    return-object p1

    .line 1213
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;-><init>()V

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

    .line 815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->height_:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->width_:F

    return v0
.end method

.method public getXmin()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->xmin_:F

    return v0
.end method

.method public getYmin()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->ymin_:F

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/LocationDataProto$LocationData$RelativeBoundingBox;->bitField0_:I

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

    .line 815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 815
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
