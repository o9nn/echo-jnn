.class public final Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LandmarkProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/LandmarkProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NormalizedLandmarkList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

.field public static final LANDMARK_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private landmark_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2573
    new-instance v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    const-class v1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2577
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2219
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2220
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$4000()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .locals 0

    .line 2214
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .locals 0

    .line 2214
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .locals 0

    .line 2214
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;Ljava/lang/Iterable;)V
    .locals 0

    .line 2214
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->addAllLandmark(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)V
    .locals 0

    .line 2214
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->clearLandmark()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;I)V
    .locals 0

    .line 2214
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->removeLandmark(I)V

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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
            ">;)V"
        }
    .end annotation

    .line 2298
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2299
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
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

    .line 2289
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2290
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2291
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLandmark(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2281
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2282
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearLandmark()V
    .locals 1

    .line 2306
    invoke-static {}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureLandmarkIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2261
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2263
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2391
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2394
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2368
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2374
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2332
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2339
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2379
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2386
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2356
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2363
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2319
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2326
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2344
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2351
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2588
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->getParserForType()Lcom/google/protobuf/Parser;

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

    .line 2312
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2313
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setLandmark(ILcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;)V
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

    .line 2272
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2273
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->ensureLandmarkIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2274
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

    .line 2524
    sget-object p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2566
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2560
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2547
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2550
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->PARSER:Lcom/google/protobuf/Parser;

    .line 2555
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    return-object p1

    :pswitch_4
    const-string p1, "landmark_"

    .line 2532
    const-class p2, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    .line 2538
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2529
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList$Builder;-><init>(Lcom/google/mediapipe/formats/proto/LandmarkProto$1;)V

    return-object p1

    .line 2526
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;-><init>()V

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

    .line 2214
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getLandmark(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2250
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;

    return-object p1
.end method

.method public getLandmarkCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2243
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
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLandmarkOrBuilder(I)Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2257
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkOrBuilder;

    return-object p1
.end method

.method public getLandmarkOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/LandmarkProto$NormalizedLandmarkList;->landmark_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2214
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2214
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
