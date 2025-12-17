.class public final Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ClassificationsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Classifications"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$ClassificationsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLASSIFICATION_LIST_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

.field public static final HEAD_INDEX_FIELD_NUMBER:I = 0x2

.field public static final HEAD_NAME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private classificationList_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

.field private headIndex_:I

.field private headName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 694
    new-instance v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    const-class v1, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 698
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->headName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->setClassificationList(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->mergeClassificationList(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->clearClassificationList()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->setHeadIndex(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->clearHeadIndex()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->setHeadName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->clearHeadName()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->setHeadNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearClassificationList()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->classificationList_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    return-void
.end method

.method private clearHeadIndex()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->headIndex_:I

    return-void
.end method

.method private clearHeadName()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    .line 298
    invoke-static {}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getHeadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->headName_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object v0
.end method

.method private mergeClassificationList(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->classificationList_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->classificationList_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    .line 155
    invoke-static {v0}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->newBuilder(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->classificationList_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->classificationList_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 391
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 394
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 368
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 374
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 332
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 339
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 379
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 386
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 356
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 363
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 319
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 326
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 344
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;
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

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 351
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 709
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setClassificationList(Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->classificationList_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    return-void
.end method

.method private setHeadIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->headIndex_:I

    return-void
.end method

.method private setHeadName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->headName_:Ljava/lang/String;

    return-void
.end method

.method private setHeadNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->headName_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

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

    .line 642
    sget-object p2, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 687
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 681
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 668
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 671
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->PARSER:Lcom/google/protobuf/Parser;

    .line 676
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
    sget-object p1, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "headIndex_"

    const-string p3, "headName_"

    const-string v0, "classificationList_"

    .line 650
    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0003\u0000\u0001\u0002\u0004\u0003\u0000\u0000\u0000\u0002\u1004\u0001\u0003\u1008\u0002\u0004\u1009\u0000"

    sget-object p3, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    .line 659
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 647
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications$Builder;-><init>(Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$1;)V

    return-object p1

    .line 644
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;-><init>()V

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

.method public getClassificationList()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->classificationList_:Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;->getDefaultInstance()Lcom/google/mediapipe/formats/proto/ClassificationProto$ClassificationList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getHeadIndex()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->headIndex_:I

    return v0
.end method

.method public getHeadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->headName_:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->headName_:Ljava/lang/String;

    .line 269
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasClassificationList()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasHeadIndex()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeadName()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/proto/ClassificationsProto$Classifications;->bitField0_:I

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

    .line 97
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
