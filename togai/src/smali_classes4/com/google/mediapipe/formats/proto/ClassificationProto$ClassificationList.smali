.class public final Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClassificationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/ClassificationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassificationList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationListOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLASSIFICATION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private classification_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1204
    new-instance v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    const-class v1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1208
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 850
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 851
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1200()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .locals 0

    .line 845
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->setClassification(ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .locals 0

    .line 845
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->addClassification(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .locals 0

    .line 845
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->addClassification(ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;Ljava/lang/Iterable;)V
    .locals 0

    .line 845
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->addAllClassification(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0

    .line 845
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->clearClassification()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;I)V
    .locals 0

    .line 845
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->removeClassification(I)V

    return-void
.end method

.method private addAllClassification(Ljava/lang/Iterable;)V
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
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;)V"
        }
    .end annotation

    .line 929
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->ensureClassificationIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 930
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addClassification(ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
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

    .line 920
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->ensureClassificationIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 922
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addClassification(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 911
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 912
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->ensureClassificationIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 913
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearClassification()V
    .locals 1

    .line 937
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureClassificationIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 892
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 894
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1022
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1025
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 999
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1005
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 963
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 970
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1010
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1017
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 987
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 994
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 950
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 957
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 975
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 982
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1219
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeClassification(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 943
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->ensureClassificationIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 944
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setClassification(ILcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
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

    .line 903
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->ensureClassificationIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 905
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

    .line 1155
    sget-object p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1197
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1191
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1178
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1181
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->PARSER:Lcom/google/protobuf/Parser;

    .line 1186
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    return-object p1

    :pswitch_4
    const-string p1, "classification_"

    .line 1163
    const-class p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 1169
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1160
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;-><init>(Lcom/google/mediapipe/formats/proto/ClassificationProto$1;)V

    return-object p1

    .line 1157
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;-><init>()V

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

.method public getClassification(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 881
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p1
.end method

.method public getClassificationCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 874
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getClassificationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getClassificationOrBuilder(I)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 888
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;

    return-object p1
.end method

.method public getClassificationOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->classification_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 845
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 845
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 845
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
