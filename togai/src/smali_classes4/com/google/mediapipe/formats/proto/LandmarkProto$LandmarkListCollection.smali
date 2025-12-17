.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LandmarkListCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollectionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

.field public static final LANDMARK_LIST_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1565
    new-instance v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    const-class v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1569
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1211
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1212
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$2000()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0

    .line 1206
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->setLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0

    .line 1206
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->addLandmarkList(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 0

    .line 1206
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->addLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;Ljava/lang/Iterable;)V
    .locals 0

    .line 1206
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->addAllLandmarkList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;)V
    .locals 0

    .line 1206
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->clearLandmarkList()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;I)V
    .locals 0

    .line 1206
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->removeLandmarkList(I)V

    return-void
.end method

.method private addAllLandmarkList(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;)V"
        }
    .end annotation

    .line 1290
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->ensureLandmarkListIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1291
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
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

    .line 1281
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1282
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->ensureLandmarkListIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1283
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLandmarkList(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1273
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->ensureLandmarkListIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1274
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearLandmarkList()V
    .locals 1

    .line 1298
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureLandmarkListIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1253
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1255
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1383
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1386
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1360
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1366
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1324
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1331
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1371
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1378
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1348
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1355
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1311
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1318
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1336
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1343
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1580
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLandmarkList(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1304
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->ensureLandmarkListIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1305
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setLandmarkList(ILcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;)V
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

    .line 1264
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1265
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->ensureLandmarkListIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1266
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

    .line 1516
    sget-object p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1558
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1552
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1539
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1542
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->PARSER:Lcom/google/protobuf/Parser;

    .line 1547
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    return-object p1

    :pswitch_4
    const-string p1, "landmarkList_"

    .line 1524
    const-class p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    .line 1530
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1521
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V

    return-object p1

    .line 1518
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;-><init>()V

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

    .line 1206
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmarkList(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1242
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;

    return-object p1
.end method

.method public getLandmarkListCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1235
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLandmarkListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLandmarkListOrBuilder(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1249
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;

    return-object p1
.end method

.method public getLandmarkListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$LandmarkListCollection;->landmarkList_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1206
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1206
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
