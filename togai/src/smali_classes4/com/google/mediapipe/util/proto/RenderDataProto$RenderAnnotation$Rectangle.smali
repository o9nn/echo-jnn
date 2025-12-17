.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RenderDataProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RectangleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rectangle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RectangleOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOTTOM_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

.field public static final LEFT_FIELD_NUMBER:I = 0x1

.field public static final NORMALIZED_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHT_FIELD_NUMBER:I = 0x3

.field public static final ROTATION_FIELD_NUMBER:I = 0x6

.field public static final TOP_FIELD_NUMBER:I = 0x2

.field public static final TOP_LEFT_THICKNESS_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private bottom_:D

.field private left_:D

.field private normalized_:Z

.field private right_:D

.field private rotation_:D

.field private topLeftThickness_:D

.field private top_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1912
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;-><init>()V

    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1916
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1148
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1400()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V
    .locals 0

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->setLeft(D)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0

    .line 1143
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->clearLeft()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V
    .locals 0

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->setTop(D)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0

    .line 1143
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->clearTop()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V
    .locals 0

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->setRight(D)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0

    .line 1143
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->clearRight()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V
    .locals 0

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->setBottom(D)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0

    .line 1143
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->clearBottom()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;Z)V
    .locals 0

    .line 1143
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->setNormalized(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0

    .line 1143
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->clearNormalized()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V
    .locals 0

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->setRotation(D)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0

    .line 1143
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->clearRotation()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;D)V
    .locals 0

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->setTopLeftThickness(D)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .locals 0

    .line 1143
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->clearTopLeftThickness()V

    return-void
.end method

.method private clearBottom()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bottom_:D

    return-void
.end method

.method private clearLeft()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->left_:D

    return-void
.end method

.method private clearNormalized()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->normalized_:Z

    return-void
.end method

.method private clearRight()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->right_:D

    return-void
.end method

.method private clearRotation()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->rotation_:D

    return-void
.end method

.method private clearTop()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->top_:D

    return-void
.end method

.method private clearTopLeftThickness()V
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->topLeftThickness_:D

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1520
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1523
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1497
    invoke-static {v0, p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1503
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1461
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1468
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1508
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1515
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1485
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1492
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1448
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1455
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1473
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1480
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1927
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBottom(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bottom_:D

    return-void
.end method

.method private setLeft(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->left_:D

    return-void
.end method

.method private setNormalized(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->normalized_:Z

    return-void
.end method

.method private setRight(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->right_:D

    return-void
.end method

.method private setRotation(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->rotation_:D

    return-void
.end method

.method private setTop(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->top_:D

    return-void
.end method

.method private setTopLeftThickness(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->topLeftThickness_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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

    .line 1855
    sget-object p2, Lcom/google/mediapipe/util/proto/RenderDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1905
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1899
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1886
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1889
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->PARSER:Lcom/google/protobuf/Parser;

    .line 1894
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
    sget-object p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "left_"

    const-string v2, "top_"

    const-string v3, "right_"

    const-string v4, "bottom_"

    const-string v5, "normalized_"

    const-string v6, "rotation_"

    const-string v7, "topLeftThickness_"

    .line 1863
    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1000\u0000\u0002\u1000\u0001\u0003\u1000\u0002\u0004\u1000\u0003\u0005\u1007\u0004\u0006\u1000\u0005\u0007\u1000\u0006"

    sget-object p3, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    .line 1877
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1860
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;-><init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V

    return-object p1

    .line 1857
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-direct {p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;-><init>()V

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

.method public getBottom()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bottom_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1143
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->left_:D

    return-wide v0
.end method

.method public getNormalized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->normalized_:Z

    return v0
.end method

.method public getRight()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->right_:D

    return-wide v0
.end method

.method public getRotation()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->rotation_:D

    return-wide v0
.end method

.method public getTop()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->top_:D

    return-wide v0
.end method

.method public getTopLeftThickness()D
    .locals 2

    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->topLeftThickness_:D

    return-wide v0
.end method

.method public hasBottom()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLeft()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNormalized()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRight()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTop()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTopLeftThickness()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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

    .line 1143
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1143
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
