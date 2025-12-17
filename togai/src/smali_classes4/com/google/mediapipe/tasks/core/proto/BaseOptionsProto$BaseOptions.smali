.class public final Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BaseOptionsProto.java"

# interfaces
.implements Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaseOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;",
        "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;",
        ">;",
        "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCELERATION_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

.field public static final GPU_ORIGIN_FIELD_NUMBER:I = 0x4

.field public static final MODEL_ASSET_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_STREAM_MODE_FIELD_NUMBER:I = 0x2


# instance fields
.field private acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

.field private bitField0_:I

.field private gpuOrigin_:I

.field private modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

.field private useStreamMode_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 706
    new-instance v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-direct {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;-><init>()V

    sput-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    const-class v1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 710
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->gpuOrigin_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->setModelAsset(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->clearGpuOrigin()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->mergeModelAsset(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->clearModelAsset()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->setUseStreamMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->clearUseStreamMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->setAcceleration(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->mergeAcceleration(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->clearAcceleration()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->setGpuOrigin(Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;)V

    return-void
.end method

.method private clearAcceleration()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private clearGpuOrigin()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->gpuOrigin_:I

    return-void
.end method

.method private clearModelAsset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private clearUseStreamMode()V
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->useStreamMode_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object v0
.end method

.method private mergeAcceleration(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    .line 251
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private mergeModelAsset(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    .line 135
    invoke-static {v0}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->newBuilder(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;

    invoke-virtual {p1}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    :goto_0
    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 394
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 397
    invoke-virtual {v0, p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 371
    invoke-static {v0, p0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 377
    invoke-static {v0, p0, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 335
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 342
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 382
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 389
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 359
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 366
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 322
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 329
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 347
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;
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

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 354
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 721
    invoke-virtual {v0}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAcceleration(Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;)V
    .locals 0
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

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private setGpuOrigin(Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->gpuOrigin_:I

    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private setModelAsset(Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    iget p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    return-void
.end method

.method private setUseStreamMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    iput-boolean p1, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->useStreamMode_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .line 652
    sget-object p2, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 699
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 693
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 680
    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 683
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 688
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
    sget-object p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    return-object p1

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "modelAsset_"

    const-string v2, "useStreamMode_"

    const-string v3, "acceleration_"

    const-string v4, "gpuOrigin_"

    .line 666
    invoke-static {}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1007\u0001\u0003\u1009\u0002\u0004\u100c\u0003"

    sget-object p3, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->DEFAULT_INSTANCE:Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    .line 671
    invoke-static {p3, p2, p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 657
    :pswitch_5
    new-instance p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;

    invoke-direct {p1, p2}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions$Builder;-><init>(Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$1;)V

    return-object p1

    .line 654
    :pswitch_6
    new-instance p1, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;

    invoke-direct {p1}, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;-><init>()V

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

.method public getAcceleration()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->acceleration_:Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/AccelerationProto$Acceleration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getGpuOrigin()Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->gpuOrigin_:I

    .line 292
    invoke-static {v0}, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->forNumber(I)Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 293
    sget-object v0, Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;->TOP_LEFT:Lcom/google/mediapipe/gpu/GpuOriginProto$GpuOrigin$Mode;

    :cond_0
    return-object v0
.end method

.method public getModelAsset()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->modelAsset_:Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;->getDefaultInstance()Lcom/google/mediapipe/tasks/core/proto/ExternalFileProto$ExternalFile;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUseStreamMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->useStreamMode_:Z

    return v0
.end method

.method public hasAcceleration()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGpuOrigin()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasModelAsset()Z
    .locals 2

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasUseStreamMode()Z
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/core/proto/BaseOptionsProto$BaseOptions;->bitField0_:I

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

    .line 93
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
