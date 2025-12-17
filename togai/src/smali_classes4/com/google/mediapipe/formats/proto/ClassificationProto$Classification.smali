.class public final Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClassificationProto.java"

# interfaces
.implements Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/formats/proto/ClassificationProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Classification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;",
        ">;",
        "Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x4

.field public static final INDEX_FIELD_NUMBER:I = 0x1

.field public static final LABEL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCORE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/String;

.field private index_:I

.field private label_:Ljava/lang/String;

.field private score_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 801
    new-instance v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-direct {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;-><init>()V

    sput-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    const-class v1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 805
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setIndex(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->clearIndex()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;F)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setScore(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->clearScore()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->clearLabel()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setLabelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->clearDisplayName()V

    return-void
.end method

.method private clearDisplayName()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    .line 364
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private clearIndex()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->index_:I

    return-void
.end method

.method private clearLabel()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    .line 286
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    return-void
.end method

.method private clearScore()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->score_:F

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 455
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 458
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 432
    invoke-static {v0, p0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 438
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 396
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 403
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 443
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 450
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 420
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 427
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 383
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 390
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 408
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;
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

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 415
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 816
    invoke-virtual {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

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

    .line 376
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    return-void
.end method

.method private setIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->index_:I

    return-void
.end method

.method private setLabel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 273
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    return-void
.end method

.method private setLabelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 298
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->score_:F

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

    .line 748
    sget-object p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 794
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 788
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 775
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 778
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->PARSER:Lcom/google/protobuf/Parser;

    .line 783
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
    sget-object p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "index_"

    const-string p3, "score_"

    const-string v0, "label_"

    const-string v1, "displayName_"

    .line 756
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1001\u0001\u0003\u1008\u0002\u0004\u1008\u0003"

    sget-object p3, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->DEFAULT_INSTANCE:Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    .line 766
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 753
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification$Builder;-><init>(Lcom/google/mediapipe/formats/proto/ClassificationProto$1;)V

    return-object p1

    .line 750
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;

    invoke-direct {p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;-><init>()V

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

    .line 114
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->displayName_:Ljava/lang/String;

    .line 339
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->index_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->label_:Ljava/lang/String;

    .line 261
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->score_:F

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIndex()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasLabel()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

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

    iget v0, p0, Lcom/google/mediapipe/formats/proto/ClassificationProto$Classification;->bitField0_:I

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

    .line 114
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
