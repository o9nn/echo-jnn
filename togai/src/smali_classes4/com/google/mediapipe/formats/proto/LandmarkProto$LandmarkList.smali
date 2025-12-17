.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LandmarkList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

.field public static final LANDMARK_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private landmark_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1162
    new-instance v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    const-class v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1166
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 808
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 809
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1200()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
    .locals 0

    .line 803
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
    .locals 0

    .line 803
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
    .locals 0

    .line 803
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;Ljava/lang/Iterable;)V
    .locals 0

    .line 803
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->addAllLandmark(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0

    .line 803
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->clearLandmark()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;I)V
    .locals 0

    .line 803
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->removeLandmark(I)V

    return-void
.end method

.method private addAllLandmark(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
            ">;)V"
        }
    .end annotation

    .line 887
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 888
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
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

    .line 878
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 880
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 869
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 870
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 871
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearLandmark()V
    .locals 1

    .line 895
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureLandmarkIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 850
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 980
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 983
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 957
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 963
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 921
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 928
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 968
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 975
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 945
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 952
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 908
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 915
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 933
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 940
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1177
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLandmark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 901
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 902
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;)V
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

    .line 861
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 863
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

    .line 1113
    sget-object p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1149
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1136
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1139
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->PARSER:Lcom/google/protobuf/Parser;

    .line 1144
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p1

    :pswitch_4
    const-string p1, "landmark_"

    .line 1121
    const-class p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    .line 1127
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1118
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V

    return-object p1

    .line 1115
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;-><init>()V

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

    .line 803
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 839
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;

    return-object p1
.end method

.method public getLandmarkCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 832
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLandmarkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$Landmark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLandmarkOrBuilder(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 846
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkOrBuilder;

    return-object p1
.end method

.method public getLandmarkOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 803
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 803
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
