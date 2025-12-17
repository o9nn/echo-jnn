.class public final Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExternalFileProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFileOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

.field public static final FILE_CONTENT_FIELD_NUMBER:I = 0x1

.field public static final FILE_DESCRIPTOR_META_FIELD_NUMBER:I = 0x3

.field public static final FILE_NAME_FIELD_NUMBER:I = 0x2

.field public static final FILE_POINTER_META_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private fileContent_:Lcom/google/protobuf/ByteString;

.field private fileDescriptorMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

.field private fileName_:Ljava/lang/String;

.field private filePointerMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 881
    new-instance v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    const-class v1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 885
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 130
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileContent_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->setFileContent(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->mergeFilePointerMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->clearFilePointerMeta()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->clearFileContent()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->clearFileName()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->setFileNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->setFileDescriptorMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->mergeFileDescriptorMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->clearFileDescriptorMeta()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->setFilePointerMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V

    return-void
.end method

.method private clearFileContent()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    .line 182
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getFileContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileContent_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearFileDescriptorMeta()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileDescriptorMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    return-void
.end method

.method private clearFileName()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    .line 247
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileName_:Ljava/lang/String;

    return-void
.end method

.method private clearFilePointerMeta()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->filePointerMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object v0
.end method

.method private mergeFileDescriptorMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileDescriptorMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileDescriptorMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    .line 316
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileDescriptorMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileDescriptorMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    return-void
.end method

.method private mergeFilePointerMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 391
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->filePointerMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->filePointerMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    .line 395
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->filePointerMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->filePointerMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 490
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 493
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 467
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 473
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 431
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 438
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 478
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 485
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 455
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 462
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 418
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 425
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 443
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 450
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 896
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFileContent(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileContent_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setFileDescriptorMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;)V
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileDescriptorMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    return-void
.end method

.method private setFileName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileName_:Ljava/lang/String;

    return-void
.end method

.method private setFileNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileName_:Ljava/lang/String;

    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    return-void
.end method

.method private setFilePointerMeta(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->filePointerMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

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

    .line 828
    sget-object p2, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 874
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 868
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 855
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 858
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->PARSER:Lcom/google/protobuf/Parser;

    .line 863
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
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    return-object p1

    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "fileContent_"

    const-string p3, "fileName_"

    const-string v0, "fileDescriptorMeta_"

    const-string v1, "filePointerMeta_"

    .line 836
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1009\u0003"

    sget-object p3, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 846
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 833
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;-><init>(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$1;)V

    return-object p1

    .line 830
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;-><init>()V

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

    .line 124
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getFileContent()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileContent_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFileDescriptorMeta()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileDescriptorMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    if-nez v0, :cond_0

    .line 287
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FileDescriptorMeta;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileName_:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->fileName_:Ljava/lang/String;

    .line 222
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFilePointerMeta()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->filePointerMeta_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$FilePointerMeta;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasFileContent()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFileDescriptorMeta()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFileName()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFilePointerMeta()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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

    .line 124
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
