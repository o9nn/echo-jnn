.class public final Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LabelMapProto.java"

# interfaces
.implements Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/LabelMapProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LabelMapItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
        "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItemOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHILD_NAME_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private childName_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayName_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 922
    new-instance v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;-><init>()V

    sput-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    const-class v1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 926
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->clearChildName()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->addChildNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->clearDisplayName()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;ILjava/lang/String;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->setChildName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->addChildName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;Ljava/lang/Iterable;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->addAllChildName(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllChildName(Ljava/lang/Iterable;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 420
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->ensureChildNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 421
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addChildName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->ensureChildNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 407
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addChildNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 446
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->ensureChildNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 447
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearChildName()V
    .locals 1

    .line 433
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDisplayName()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    .line 296
    invoke-static {}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getDefaultInstance()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    .line 212
    invoke-static {}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getDefaultInstance()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    return-void
.end method

.method private ensureChildNameIsMutable()V
    .locals 2

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 373
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 525
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 528
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 502
    invoke-static {v0, p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 508
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 466
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 473
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 513
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 520
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 490
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 497
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 453
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 460
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 478
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;
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

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 485
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 937
    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChildName(ILjava/lang/String;)V
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

    .line 390
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->ensureChildNameIsMutable()V

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 392
    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 870
    sget-object p2, Lcom/google/mediapipe/util/proto/LabelMapProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 915
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 909
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 896
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 899
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 904
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
    sget-object p1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "name_"

    const-string p3, "displayName_"

    const-string v0, "childName_"

    .line 878
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u001a"

    sget-object p3, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    .line 887
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 875
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem$Builder;-><init>(Lcom/google/mediapipe/util/proto/LabelMapProto$1;)V

    return-object p1

    .line 872
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;

    invoke-direct {p1}, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;-><init>()V

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

.method public getChildName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 353
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getChildNameBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 369
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 368
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getChildNameCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 339
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getChildNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->childName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->displayName_:Ljava/lang/String;

    .line 269
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->name_:Ljava/lang/String;

    .line 185
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasName()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/util/proto/LabelMapProto$LabelMapItem;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
